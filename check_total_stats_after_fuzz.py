import sqlite3
import os
from collections import defaultdict

# Set the folder containing the SQLite files
db_folder = 'database/college_2'

# The reference (original) database
reference_db = os.path.join(db_folder, 'college_2.sqlite')

# Function to get row counts of all tables in a database
def get_table_row_counts(db_path):
    conn = sqlite3.connect(db_path)
    cursor = conn.cursor()
    row_counts = {}
    cursor.execute("SELECT name FROM sqlite_master WHERE type='table';")
    tables = cursor.fetchall()
    for (table,) in tables:
        cursor.execute(f"SELECT COUNT(*) FROM {table}")
        row_counts[table] = cursor.fetchone()[0]
    conn.close()
    return row_counts

# Get the baseline row counts from the original database
baseline_counts = get_table_row_counts(reference_db)

# Dictionary to store results
comparison = defaultdict(dict)

# Iterate through all databases in the folder
for file in os.listdir(db_folder):
    if file.endswith('.sqlite') and file != 'college_2.sqlite':
        db_path = os.path.join(db_folder, file)
        current_counts = get_table_row_counts(db_path)
        for table, original_count in baseline_counts.items():
            current_count = current_counts.get(table, 0)
            comparison[file][table] = {
                "original": original_count,
                "current": current_count,
                "difference": current_count - original_count
            }

# Display the result
for db_name, table_data in comparison.items():
    print(f"\nDatabase: {db_name}")
    for table, stats in table_data.items():
        print(f"  Table: {table}")
        print(f"    Original Rows: {stats['original']}")
        print(f"    Current Rows:  {stats['current']}")
        print(f"    Difference:    {stats['difference']}")
