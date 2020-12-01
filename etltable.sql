CREATE TABLE "airports" (
    "IATA" VARCHAR(255)   NOT NULL,
    "Airport" VARCHAR(255)   NOT NULL,
    "City" VARCHAR(255)   NOT NULL,
    "State" VARCHAR(255)   NOT NULL,
    "Country" VARCHAR(255)   NOT NULL,
    CONSTRAINT "pk_airports" PRIMARY KEY (
        "IATA"
     )
);

CREATE TABLE "rdu" (
    "Origin" VARCHAR(255)   NOT NULL,
    "OriginWac" INT   NOT NULL,
    "Dest" VARCHAR(255)   NOT NULL,
    "DestWac" INT   NOT NULL,
    "Miles" DECIMAL   NOT NULL,
    "NumTicketsOrdered" DECIMAL   NOT NULL,
    "Airline_Company" VARCHAR(255)   NOT NULL,
    "PricePerTicket" DECIMAL   NOT NULL
);

CREATE TABLE "airlinenames" (
    "Airline_Company" VARCHAR(255)   NOT NULL,
    "Airline_Name" VARCHAR(255)   NOT NULL,
    CONSTRAINT "pk_airlinenames" PRIMARY KEY (
        "Airline_Company"
     )
);

ALTER TABLE "rdu" ADD CONSTRAINT "fk_rdu_Origin" FOREIGN KEY("Origin")
REFERENCES "airports" ("IATA");

ALTER TABLE "rdu" ADD CONSTRAINT "fk_rdu_Dest" FOREIGN KEY("Dest")
REFERENCES "airports" ("IATA");

ALTER TABLE "rdu" ADD CONSTRAINT "fk_rdu_Airline_Company" FOREIGN KEY("Airline_Company")
REFERENCES "airlinenames" ("Airline_Company");