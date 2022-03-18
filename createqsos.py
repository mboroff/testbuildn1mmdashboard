import sqlite3

try:
    sqliteConnection = sqlite3.connect('qsos')
    sqlite_create_table_query = '''CREATE TABLE qsos(
        "app" TEXT,
        "contestname" TEXT,
  	"contestnr" TEXT,
  	"timestamp" TEXT,
  	"mycall" TEXT,
  	"band" TEXT,
 	"rxfreq" TEXT,
  	"txfreq" TEXT,
  	"operator" TEXT,
  	"mode" TEXT,
  	"call" TEXT,
  	"countryprefix" TEXT,
  	"wpxprefix" TEXT,
  	"stationprefix" TEXT,
  	"continent" TEXT,
  	"snt" TEXT,
  	"sntnr" TEXT,
  	"rcv" TEXT,
  	"rcvnr" TEXT,
  	"gridsquare" TEXT,
  	"exchange1" TEXT,
  	"section" TEXT,
  	"comment" TEXT,
  	"qth" TEXT,
  	"name" TEXT,
  	"power" TEXT,
  	"misctext" TEXT,
  	"zone" TEXT,
  	"prec" TEXT,
  	"ck" TEXT,
  	"ismultiplier1" TEXT,
  	"ismultiplier2" TEXT,
  	"ismultiplier3" TEXT,
  	"points" TEXT,
  	"radionr" TEXT,
  	"run1run2" TEXT,
 	"RoverLocation" TEXT,
  	"RadioInterfaced" TEXT,
  	"NetworkedCompNr" TEXT,
  	"IsOriginal" TEXT,
  	"NetBiosName" TEXT,
  	"IsRunQSO" TEXT,
  	"StationName" TEXT,
  	"ID" TEXT,
  	"IsClaimedQso" TEXT,
  	"lat" TEXT,
  	"lon" TEXT,
  	"isbusted" TEXT,
  	"distance" TEXT
	);'''

    cursor = sqliteConnection.cursor()
    print("Successfully Connected to SQLite")
    cursor.execute(sqlite_create_table_query)
    sqliteConnection.commit()
    print("SQLite table qsos created")

    cursor.close()

except sqlite3.Error as error:
    print("Error while creating a sqlite table", error)
finally:
    if sqliteConnection:
        sqliteConnection.close()
        print("sqlite connection is closed")