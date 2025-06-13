--ALTER
--Add a new column called email to the persons table

ALTER TABLE persons
ADD email VARCHAR(50) NOT NULL

SELECT * 
FROM persons

--Remove the column phone from persons table
ALTER TABLE persons
DROP COLUMN phone

SELECT * FROM persons

--Delete the table from the database
DROP TABLE persons