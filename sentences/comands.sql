INSERT INTO people (
        last_name,
        first_name,
        address,
        city
    )
VALUES (
        'Hernández',
        'Laura',
        'Calle 21',
        'Monterrey'
    );


UPDATE people
SET last name = 'Chávez',city='Mérida'
WHERE person id = 1;


UPDATE people
SET first name ='Juan'
WHERE City ='Mérida';


UPDATE people
SET first name = 'Juan';


DELETE FROM people

WHERE person id = 1;

DELETE FROM people;


SELECT fist_name, last_name
FROM people;

