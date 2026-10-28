@echo off
REM Compiles and starts the app (Windows). Needs JDK 17+ and the MySQL connector jar in the lib folder.
if not exist out mkdir out
javac -cp "lib/*" -d out src\*.java
if errorlevel 1 (
    echo Compile failed.
    pause
    exit /b 1
)
java -cp "out;lib/*" App
pause
