# RDU ETL Project

## Summary & Contributors

The goal of this project was to use Extract, Transform and Load (ETL) processes to capture, clean and store information on commerical flights out of Raleigh-Durham Airpoit (RDU). Data can be extracted to perform analysis on airline prices, flight frequency, flight distance....etc
<br>
<b>Contributors</b>
<br>
<li> Tyler Hunt - github.com/tah96 </li>
<li> Mikael Hall - github.com/mikaelshall</li>
<li> Nadia Albarracin - github.com/naalbarracin </li>

## Project Report

<b>Extract</b>: 
<br>
The original data sources came from Kaggle; 2018 Airplane Flights and List of US Airports. These sources were downloaded as CSV files named (airports.csv and flights.csv)
<br>
<b>Transform:</b>
<br>
The `airports.csv` and `flights.csv` files were uploaded into separate jupyter notebooks (CleanRDU.ipynb and airports.ipynb). Each CSV file was transformed into a Pandas Dataframe, where all the blank or unnecessary rows  were removed. 
<br>
For the airports.ipynb notebook, our team decided to keep the following columns within the dataframe: IATA, AIRPORT, CITY, STATE and COUNTRY. For the CleanedRDU.ipynb notebook we kept the following columns; Origin, OriginWac, Dest, DestWac, Miles, NumTicketsOrdered, Airline Company and PricePerTicket. In addition, this dataframe was filtered to show only flights departing from RDU. We decided to focus on departing flights from RDU to narrow the scope of the project and to create a csv file that met the maximum upload file size threshold for Github.
<br>
Each dataframe was exported as csv files (CleanedRDU and CleanedAirports). Moreover, our team manually created the AirportNames csv file to expound upon airline abbreviations (Example: AA = American Airlines).
<br>

<b>Load:</b>

The CleandRDU, CleanedAirports and Airport names were uploaded through PgAdmin using PostgresSQL. The code needed to create the tables within the database was exported from the QuickDBD web application, which allowed our team to build the database in a user-friendly format. This code can be found in the `etltable.sql` file

Once the tables were created, our team uploaded the CleanedRDU, CleanedAirports and AirportNames csv files to their respective tables using the Import function within PostgresSQLs UI.

