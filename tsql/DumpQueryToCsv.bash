#!/bin/bash

sqlcmd -S . -d databaseName -E -s"|" -W -Q "select * from tableName" > ./outfile.csv
