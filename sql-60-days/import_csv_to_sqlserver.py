import re
from pathlib import Path

import pandas as pd
from sqlalchemy import create_engine
from sqlalchemy.dialects.mssql import BIT, DATETIME2, DECIMAL, INTEGER, NVARCHAR


PROJECT_DIR = Path(__file__).resolve().parent
SERVER = r"localhost\SQLEXPRESS"
DATABASE = "SQLPractice"
DRIVER = "ODBC Driver 17 for SQL Server"
CHUNK_SIZE = 5_000
SAMPLE_SIZE = 1_000


def build_engine():
    connection = (
        f"mssql+pyodbc://@{SERVER}/{DATABASE}"
        f"?driver={DRIVER.replace(' ', '+')}&TrustServerCertificate=yes&trusted_connection=yes"
    )
    return create_engine(connection, fast_executemany=False)


def find_csv_files():
    return sorted(path for path in PROJECT_DIR.rglob("*.csv") if path.is_file())


def table_name_for(path, used_names):
    name = re.sub(r"[^0-9A-Za-z_]", "_", path.stem)
    name = re.sub(r"_+", "_", name).strip("_") or "Imported_CSV"
    if name[0].isdigit():
        name = f"_{name}"

    base_name = name[:128]
    name = base_name
    suffix = 2
    while name.lower() in used_names:
        suffix_text = f"_{suffix}"
        name = f"{base_name[:128 - len(suffix_text)]}{suffix_text}"
        suffix += 1
    used_names.add(name.lower())
    return name


def infer_sql_types(frame):
    sql_types = {}
    for column in frame.columns:
        series = frame[column].dropna()
        lower_name = str(column).lower()

        if any(marker in lower_name for marker in ("date", "time", "timestamp")):
            parsed = pd.to_datetime(series, errors="coerce")
            if len(series) == 0 or parsed.notna().mean() >= 0.95:
                sql_types[column] = DATETIME2()
                continue

        if pd.api.types.is_bool_dtype(frame[column]):
            sql_types[column] = BIT()
        elif pd.api.types.is_integer_dtype(frame[column]):
            sql_types[column] = INTEGER()
        elif pd.api.types.is_float_dtype(frame[column]):
            sql_types[column] = DECIMAL(19, 6)
        else:
            sql_types[column] = NVARCHAR(None)
    return sql_types


def prepare_chunk(frame, sql_types):
    for column, sql_type in sql_types.items():
        if isinstance(sql_type, DATETIME2):
            frame[column] = pd.to_datetime(frame[column], errors="coerce")
    return frame


def import_csv(path, table_name, engine):
    sample = pd.read_csv(path, nrows=SAMPLE_SIZE, na_values=["", "NA", "null"])
    sql_types = infer_sql_types(sample)
    first_chunk = True
    row_count = 0

    for chunk in pd.read_csv(path, chunksize=CHUNK_SIZE, na_values=["", "NA", "null"]):
        chunk = prepare_chunk(chunk, sql_types)
        chunk.to_sql(
            table_name,
            engine,
            schema="dbo",
            if_exists="replace" if first_chunk else "append",
            index=False,
            method=None,
            dtype=sql_types,
        )
        first_chunk = False
        row_count += len(chunk)
    return row_count


def main():
    csv_files = find_csv_files()
    used_names = set()
    successful = []
    failures = []

    print(f"Found {len(csv_files)} CSV file(s) under {PROJECT_DIR}")
    engine = build_engine()
    try:
        for path in csv_files:
            table_name = table_name_for(path, used_names)
            print(f"Importing {path.relative_to(PROJECT_DIR)} -> dbo.{table_name} ...")
            try:
                row_count = import_csv(path, table_name, engine)
                successful.append((table_name, row_count))
                print(f"  SUCCESS: {row_count:,} row(s) imported")
            except Exception as error:
                failures.append((str(path.relative_to(PROJECT_DIR)), table_name, str(error)))
                print(f"  FAILED: {error}")
    finally:
        engine.dispose()

    print("\nImport summary")
    print(f"Successful: {len(successful)}")
    for table_name, row_count in successful:
        print(f"  dbo.{table_name}: {row_count:,} row(s)")
    print(f"Failed: {len(failures)}")
    for path, table_name, error in failures:
        print(f"  {path} -> dbo.{table_name}: {error}")

    if failures:
        raise SystemExit(1)


if __name__ == "__main__":
    main()