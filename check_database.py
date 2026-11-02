import sqlite3

connection = sqlite3.connect("Chinook_Sqlite.sqlite")
cursor = connection.cursor()

tables = ["Track", "InvoiceLine", "Invoice", "Customer"]

for table in tables:
    print(f"\n--- {table} Table ---")

    cursor.execute(f"PRAGMA table_info({table})")
    columns = cursor.fetchall()

    for column in columns:
        print(column[1], "-", column[2])

connection.close()