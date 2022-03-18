import sqlite3

try:
    sqliteConnection = sqlite3.connect('qsos')
    sqlite_create_table_query = '''DROP TABLE spots;'''
    


    cursor = sqliteConnection.cursor()
    print("Successfully Connected to SQLite")
    cursor.execute(sqlite_create_table_query)
    sqliteConnection.commit()
    print("spots Dropped")

    cursor.close()

except sqlite3.Error as error:
    print("Error while droping a sqlite table", error)
finally:
    if sqliteConnection:
        sqliteConnection.close()
        print("sqlite connection is closed")

