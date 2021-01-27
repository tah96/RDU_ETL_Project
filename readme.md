Project Report

Extract: 

In order to develop the project, the original data sources came from Kaggle; 2018 Airplane Flights and List of US Airports. These sources were downloaded as CSV files named (airports.csv and flights.csv).

Transform: 

Our team first imported the airports.csv and flights.csv files into separate jupyter notebooks (CleanRDU.ipynb and airports.ipynb). Each CSV file was transformed into a Pandas Dataframe, where all the blank or unnecessary rows  were removed. 

For the airports.ipynb notebook, our team decided to keep the following columns within the dataframe: IATA, AIRPORT, CITY, STATE and COUNTRY. For the CleanedRDU.ipynb notebook we kept the following columns; Origin, OriginWac, Dest, DestWac, Miles, NumTicketsOrdered, Airline Company and PricePerTicket. In addition, this dataframe was filtered to show only flights departing from RDU. We decided to focus on departing flights from RDU to narrow the scope of the project and to create a csv file that met the maximum upload file size threshold for Github.

Each dataframe was exported as csv files (CleanedRDU and CleanedAirports). Moreover, our team manually created the AirportNames csv file to expound upon airline abbreviations (Example: AA = American Airlines).


Load: 

After all the extract and transform process the final data was loaded using PostgresSQL. The code needed to create the tables within the database was exported from the QuickDBD web application, which allowed our team to build the database in a user-friendly format.

Once the tables were created, our team uploaded the CleanedRDU, CleanedAirports and AirportNames csv files to their respective tables using the Import function within PostgresSQLs UI.

