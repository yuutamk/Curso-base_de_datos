ALTER TABLE people
ADD date_of_birth date;

ALTER TABLE people
MODIFY date_of_birth YEAR;

ALTER TABLE people
MODIFY person_id INT NOT NULL AUTO_INCREMENT,
ADD PRIMARY KEY (person_id);

ALTER TABLE people
DROP COLUMN date_of_birth;
