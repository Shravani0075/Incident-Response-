#!/bin/bash
# Compiles and starts the app (Linux/macOS). Needs JDK 17+ and the MySQL connector jar in the lib folder.
cd "$(dirname "$0")"
mkdir -p out
javac -cp "lib/*" -d out src/*.java || { echo "Compile failed."; exit 1; }
java -cp "out:lib/*" App
