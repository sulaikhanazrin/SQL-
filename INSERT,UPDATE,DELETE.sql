--Insert data from customers table to persons

INSERT INTO persons(id,person_name,birth_date,phone)
SELECT
id,
first_name,
NULL,
'Unknown'
FROM customers

SELECT * FROM persons

--change the score of customer ID 6 to 0
SELECT * 
FROM customers
WHERE id =6

UPDATE customers
SET score = 0
WHERE id = 6

--CHnge the score of customer with ID 10 to 0 and update the country to 'UK'
UPDATE customers
SET score = 0,
	country = 'UK'
WHERE id = 10

/*DELETE
Delete all customer with an ID greater than 5*/

DELETE FROM customers
WHERE id > 5

--Delete all data from the persons table

DELETE FROM PERSONS --THIS IS FOR SMALLER DATA

TRUNCATE TABLE persons

SELECT *
FROM persons