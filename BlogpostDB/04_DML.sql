-- Insert
INSERT INTO people ( first_name, address, city, last_name)
VALUES ( 'Laura', 'Calle 21', 'Monterrey', 'Hernández');


INSERT INTO people ( first_name, address, city, last_name)
VALUES ( 'Gloria', 'Calle 41', 'Guadalajara', 'Fernández');

-- Update
UPDATE people
SET last_name = 'Chávez', city= 'Mérida'
WHERE person_id = 1;

UPDATE people
SET first_name = 'Juan'
WHERE city = 'Monterrey';

UPDATE people
SET first_name = 'Juan';

-- Delete
DELETE FROM people 
WHERE person_id = 8;

DELETE FROM people;

-- Select
SELECT first_name, last_name FROM people;

