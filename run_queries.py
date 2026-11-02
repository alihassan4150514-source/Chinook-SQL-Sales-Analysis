import sqlite3

# Connect to database
connection = sqlite3.connect("Chinook_Sqlite.sqlite")
cursor = connection.cursor()

# Read SQL query from file
with open("bonus_product_ranking.sql", "r", encoding="utf-8") as file:
    sql_query = file.read()

# Execute query
cursor.execute(sql_query)

# Fetch results
results = cursor.fetchall()

# Display results
print("\nTOP 10 PRODUCTS BY REVENUE RANKING")
print("-" * 75)

print(
    f"{'Product Name':40} "
    f"{'Quantity':10} "
    f"{'Revenue':12} "
    f"{'Rank':5}"
)

print("-" * 75)

for row in results:
    print(
        f"{row[0]:40} "
        f"{row[1]:<10} "
        f"${row[2]:<11} "
        f"{row[3]}"
    )

connection.close()