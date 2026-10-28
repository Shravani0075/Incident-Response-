# Incident Response Manager (Java Swing + MySQL)

A very small desktop app that connects directly to the MySQL database `incident_simple` (no web server, no backend).

## Steps

1. **Install** JDK 17 or newer and MySQL. Download the *MySQL Connector/J* jar
   (https://dev.mysql.com/downloads/connector/j/, choose "Platform Independent", unzip it)
   and copy `mysql-connector-j-x.y.z.jar` into the `lib` folder.
2. **Run `database_simple.sql`** in MySQL Workbench (Ctrl+Shift+Enter) to create and fill `incident_simple`.
3. **Edit `config.properties`** and put your MySQL password in `db.password`.
4. **Start the app:** double-click `run.bat` (Windows) or run `./run.sh` (Linux/macOS).

## Files
- `src/Db.java`  - opens the MySQL connection, small helper methods
- `src/Dao.java` - all the SQL (incidents, dashboard, 5 reports) and friendly error messages
- `src/App.java` - the window (Incidents, Dashboard, Reports tabs)
