CREATE DATABASE federal;
USE federal;

SELECT * FROM federal;

/*Data Cleaning*/

/* Check Data Type */
DESC federal;

/* Change datatype because entering string value in INT Data type column */
ALTER TABLE federal
MODIFY ANSI_Code varchar(50);

ALTER TABLE federal
MODIFY Parking_Spaces VARCHAR(30);

SELECT `Location Code` FROM federal;

/* Alter rename column name because column name have space */
ALTER TABLE federal
RENAME COLUMN `Location Code` TO `Location_code`; 

ALTER TABLE federal
RENAME COLUMN `Region Code` TO `Region_Code`;

SET sql_safe_updates = 0;
DELETE FROM federal WHERE `Bldg Address2`;
SET sql_safe_updates = 1;

ALTER TABLE federal
RENAME COLUMN `Bldg County` TO `Country`;

ALTER TABLE federal
RENAME COLUMN `Bldg State` TO `State`; 

ALTER TABLE federal
RENAME COLUMN `Bldg Zip` TO `Zipcode`;

ALTER TABLE federal
RENAME COLUMN `Bldg Status` TO `Building_Status`;

ALTER TABLE federal
RENAME COLUMN `Property Type` TO `Property_Type`;

ALTER TABLE federal
RENAME COLUMN `Bldg ANSI Usable` TO `ANSI_Code`;

ALTER TABLE federal
RENAME COLUMN `Total Parking Spaces` TO `Parking_Spaces`;

SELECT `Owned/Leased` FROM federal;

ALTER TABLE federal
RENAME COLUMN `Construction Date` TO `Construction_Date`;

ALTER TABLE federal
RENAME COLUMN `Historical Type` TO `Historical_Type`;

ALTER TABLE federal
RENAME COLUMN `Acessibility_Flag` TO `Accessibility_Flag`;

ALTER TABLE federal
RENAME COLUMN `Owned/Leased` TO Owned_Leased;

ALTER TABLE federal
RENAME COLUMN `Historical Status` TO `Historical_Status`;

#Delete column because empty column
ALTER TABLE federal
DROP COLUMN `Bldg Address2`;

/* Delete Column because of empty column value no use for analysis */
ALTER TABLE federal
DROP COLUMN `Congressional District`;

ALTER TABLE federal
DROP COLUMN `Historical_Type`;

ALTER TABLE federal
DROP COLUMN Historical_Type;

SELECT Parking_Spaces FROM federal
WHERE Parking_Spaces = "0";

#Empty value
SELECT Historical_Status FROM federal
WHERE Historical_Status = ' ';
SELECT Historical_Type FROM federal;

#Have 0 in this Column
SELECT Parking_Spaces FROM federal
WHERE Parking_Spaces = 0;

/* Change state code into full name */
UPDATE federal 
SET State = 'Connecticut'
WHERE State = 'CT';

UPDATE federal
SET State = 'Massachusetts'
WHERE State ='MA';

UPDATE federal
SET State = 'Maine'
WHERE State = 'ME';

UPDATE federal
SET State = 'New Hampshire'
WHERE State = 'NH';

UPDATE federal
SET State = 'Rhode Island'
WHERE State = 'RI';

UPDATE federal
SET State = 'Vermont'
WHERE State = 'VT';

UPDATE federal
SET State = 'Idaho'
WHERE State = 'ID';

UPDATE federal
SET State = 'Oregon'
WHERE State = 'OR';

UPDATE federal
SET State = 'Washington'
WHERE State = 'WA';

UPDATE federal
SET State = 'Texas'
WHERE State = 'TX';

UPDATE federal
SET State = ''
WHERE State = 'DC';

UPDATE federal
SET State = 'Maryland'
WHERE State = 'MD';

UPDATE federal
SET State = 'Virginia'
WHERE State = 'VA';

UPDATE federal
SET State = 'New Jersey'
WHERE State ='NJ';

UPDATE federal
SET State = 'New York'
WHERE State = 'NY';

UPDATE federal
SET State = 'Puerto Rico'
WHERE State = 'PR';

UPDATE federal
SET State = 'Virgin'
WHERE State = 'VI';

UPDATE federal
SET State = 'Delaware'
WHERE State = 'DE';

UPDATE federal
SET State = 'Pennsylvania'
WHERE State = 'PA';

UPDATE federal
SET State = 'West Virginia'
WHERE State = 'WV'; 

UPDATE federal
SET State = 'Alabama'
WHERE State = 'AL';

UPDATE federal
SET State = 'Florida'
WHERE State = 'FL';

UPDATE federal
SET State = 'Arizona'
WHERE State = 'AZ';

UPDATE federal
SET State = 'Minnesota'
WHERE State = 'MN';

UPDATE federal
SET State = 'South Dakota'
WHERE State = 'SD';

UPDATE federal
SET State = 'Missouri'
WHERE State = 'MO';

SET sql_safe_updates = 0;
UPDATE federal
SET State = 'Montana'
WHERE State = 'MT';
SET sql_safe_updates = 1;

UPDATE federal
SET State = 'Georgia'
WHERE State = 'GA';

UPDATE federal
SET State = 'Arkansas'
WHERE State = 'AR';

UPDATE federal
SET State = 'Michigan'
WHERE State = 'MI';

UPDATE federal
SET State = 'Ohio'
WHERE State = 'OH';
SELECT state FROM federal;

UPDATE federal
SET State = 'Wisconsin'
WHERE State = 'WI';

UPDATE federal
SET State = 'Illinois'
WHERE State = 'IL';

UPDATE federal
SET State = 'Kentucky'
WHERE State = 'KY';

UPDATE federal
SET State = 'Tennessee'
WHERE State = 'TN';

UPDATE federal
SET State = 'Colorado'
WHERE State = 'CO';

UPDATE federal
SET State = 'MI'
WHERE State = 'Mississippi';

UPDATE federal
SET State = 'Louisiana'
WHERE State = 'LA';

UPDATE federal
SET State = 'Oklahoma'
WHERE State = 'OK';

UPDATE federal
SET State = 'North Dakota'
WHERE State = 'ND';

UPDATE federal
SET State = 'Kansas'
WHERE State = 'KS';

UPDATE federal
SET State = 'District of Collumbia'
WHERE State = 'DC';

UPDATE federal
SET State = 'Mississippi'
WHERE State = 'MS';

SELECT * FROM federal;

UPDATE federal
SET State = 'Iowa'
WHERE State = 'IA';

UPDATE federal
SET State = 'California'
WHERE State = 'CA';

UPDATE federal
SET State = 'Nebraska'
WHERE State = 'NE';

UPDATE federal
SET State = 'New Mexico'
WHERE State = 'NM';

UPDATE federal
SET State = 'Indiana'
WHERE State = 'IN';

UPDATE federal
SET State = 'North Carolina'
WHERE State = 'NC';

UPDATE federal
SET State = 'Hawaii'
WHERE State = 'HI';

UPDATE federal
SET State = 'Nevada'
WHERE State = 'NV';

UPDATE federal
SET State = 'Utah'
WHERE State = 'UT';

/* Change Upper case to Lower Case */

UPDATE federal
SET City = LOWER(City);

UPDATE federal
SET Country = LOWER(Country);

UPDATE federal
SET Building_Status = LOWER(Building_Status);

UPDATE federal
SET Property_Type = LOWER(Property_Type);

UPDATE federal
SET Address = LOWER(Address);

UPDATE federal
SET Owned_Leased = LOWER(Owned_Leased);

/* Count of Empty values */

SELECT COUNT(Historical_Status) FROM federal
WHERE Historical_Status = '';

SELECT COUNT(Historical_Status) FROM federal
WHERE Historical_Status = 'NULL';

SELECT COUNT(Historical_Status) FROM federal;
SELECT Historical_Status FROM federal;

SELECT Historical_Status FROM federal;
#Update empty values with NULL value

UPDATE federal
SET Historical_Status = NULL
WHERE Historical_Status = ''; 


SET sql_safe_updates = 0;
SET sql_safe_updates = 1;

UPDATE federal
SET Historical_Status = 'Not Evaluated'
WHERE Historical_Status = NULL;

/* Replace 0 to Not Evaluvated UPDATE command*/
SET sql_safe_updates = 0;
UPDATE federal
SET ANSI_Code = 'Not Evaluavated'
WHERE ANSI_Code = 0;
SET sql_safe_updates = 1;

SET sql_safe_Updates = 1;

UPDATE federal
SET ANSI_Code = 'Not Evaluvated'
WHERE ANSI_Code = 0;


SELECT Historical_Status FROM federal
WHERE Historical_Status IS NULL;

SELECT COUNT(*)Parking_Spaces FROM federal
WHERE Parking_Spaces > 0;

SELECT Parking_Spaces FROM federal
WHERE Parking_Spaces = 0;

SELECT * FROM federal
WHERE Parking_Spaces IS NOT NULL;

SELECT AVG(Parking_Spaces) AS avg_parking_spaces
FROM federal
WHERE Parking_Spaces > 0;

UPDATE federal
SET Parking_Spaces = "No needed"
WHERE Parking_Spaces = 0 ;

/* Replace null value to not found value */
 
UPDATE federal
SET Historical_Status = 'Not Found'
WHERE Historical_Status IS NULL;

SELECT * FROM federal;