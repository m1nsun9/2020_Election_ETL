CREATE TABLE "county_statistics" (
    "county" VARCHAR(225)   NOT NULL,
    "state" VARCHAR(225)   NOT NULL,
    "percentage_votes_Donald_Trump" DEC   NOT NULL,
    "percentage_votes_Joe_Biden" DEC   NOT NULL,
    "percentage_covid_cases" DEC   NOT NULL,
    "percentage_covid_deaths" DEC   NOT NULL,
    "income_per_capita" FLOAT   NOT NULL,
    "poverty_rate" DEC   NOT NULL,
    "child_poverty_rate" DEC   NOT NULL,
    "unemployment_rate" DEC   NOT NULL,
    CONSTRAINT "pk_county_statistics" PRIMARY KEY (
        "county", "state"
     )
);

CREATE TABLE "county_sociohealth_data" (
    "fips_code" INT   NOT NULL,
    "county" VARCHAR(225)   NOT NULL,
    "state" VARCHAR(225)   NOT NULL,
    "percentage_uninsured" DEC   NOT NULL,
    "percentage_vaccinated" DEC   NOT NULL,
    "high_school_graduation_rate" DEC   NOT NULL,
    "percentage_some_college" DEC   NOT NULL,
    "violent_crime_rate" DEC   NOT NULL,
    "life_expectancy" FLOAT   NOT NULL,
    CONSTRAINT "pk_county_sociohealth_data" PRIMARY KEY (
        "fips_code"
     )
);

ALTER TABLE "county_sociohealth_data" ADD CONSTRAINT "fk_county_sociohealth_data_county" FOREIGN KEY("county", "state")
REFERENCES "county_statistics" ("county", "state");

