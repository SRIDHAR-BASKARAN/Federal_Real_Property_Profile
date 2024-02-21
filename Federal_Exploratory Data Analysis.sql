USE federal;

/* Exploratory Data Analysis */
/* Check Data Typee */
DESC federal;

/* Count overall row in table */
SELECT COUNT(*) FROM federal;
SELECT * FROM federal;

/*Check every column have null value or empty space*/
SELECT COUNT(*)Location_code FROM federal
WHERE Location_code IS NULL;

SELECT COUNT(*)Region_Code FROM federal
WHERE Region_Code IS NULL;

SELECT COUNT(*)Address FROM federal 
WHERE Address IS NULL;

SELECT COUNT(*) City FROM federal
WHERE City IS NULL;

SELECT COUNT(*)Country FROM federal
WHERE Country IS NULL;

SELECT COUNT(*)State FROM federal
WHERE State IS NULL;

SELECT COUNT(*)Zipcode FROM federal
WHERE Zipcode IS NULL;

SELECT COUNT(*)Building_Status FROM federal
WHERE Building_Status IS NULL;

SELECT COUNT(*)Property_Type FROM federal
WHERE Property_Type IS NULL;

SELECT COUNT(*)ANSI_Code FROM federal
WHERE ANSI_Code IS NULL;

SELECT COUNT(*)Parking_Spaces FROM federal
WHERE Parking_Spaces IS NULL;

SELECT COUNT(*)Owned_Leased FROM federal
WHERE Owned_Leased IS NULL;

SELECT COUNT(*)Construction_Date FROM federal
WHERE Construction_Date IS NULL;

SELECT COUNT(*)Historical_Status FROM federal
WHERE Historical_Status IS NULL;

SELECT COUNT(*)Accessbility_Flag FROM federal
WHERE Accessbility_Flag IS NULL; 

/* Analyze Unique variables by counting unique values */
SELECT COUNT(DISTINCT Location_code) FROM federal;
SELECT COUNT(DISTINCT Region_Code) FROM federal;
SELECT COUNT(DISTINCT Address) FROM federal;
SELECT COUNT(DISTINCT City) FROM federal;
SELECT COUNT(DISTINCT Country) FROM federal;
SELECT COUNT(DISTINCT State) FROM federal;
SELECT COUNT(DISTINCT Zipcode) FROM federal;

SELECT COUNT(Building_Status) FROM federal
WHERE Building_Status = "active";

SELECT COUNT(Building_Status) FROM federal
WHERE Building_Status = "excess";

SELECT COUNT(Building_Status) FROM federal
WHERE Building_Status = "decommissioned";

SELECT COUNT(Property_Type) FROM federal
WHERE Property_Type = "building";

SELECT COUNT(Property_Type) FROM federal
WHERE Property_Type = "structure";

SELECT COUNT(Owned_Leased) FROM federal
WHERE Owned_Leased = "owned";

SELECT COUNT(Owned_Leased) FROM federal
WHERE Owned_Leased = "Leased";

/*Which City most hsve building status*/ 
SELECT MAX(Building_Status) FROM federal
GROUP BY Building_Status;

/* Which Building Property and State have most parking Space */
select Parking_Spaces, Property_Type FROM federal
WHERE Parking_Spaces > 1500 
ORDER BY Parking_Spaces ASC
LIMIT 10;

/* Which Property have most Parking space*/
SELECT MAX(Parking_Spaces), Owned_Leased FROM federal
WHERE Owned_Leased = "Leased" AND Parking_Spaces <> "No needed"
GROUP BY Parking_Spaces
ORDER BY Parking_Spaces DESC;

/* Which Property have least parking space */
SELECT MIN(Parking_Spaces), Owned_Leased FROM federal
WHERE Owned_Leased = "Leased" AND Parking_Spaces <> "No needed"
GROUP BY Parking_Spaces
ORDER BY Parking_Spaces ASC;

/* Which City, State, Country have National Register Listed */
SELECT City, State, Country FROM federal
WHERE Historical_Status = 'National Register Listed';

/* Which country is maximum decommissioned building */
SELECT Construction_Date, Building_Status FROM federal
WHERE Building_Status = "decommissioned";
SELECT * FROM federal;