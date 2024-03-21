USE checkinoutdb;

SELECT department.Title FROM department WHERE Title Like '%Java%';

UPDATE us3r SET us3r.Password='2021' WHERE Id=2;

SELECT * FROM us3r WHERE Email LIKE 'Al%';

UPDATE persons SET persons.first_name='Claude',persons.last_name='Shannon' WHERE person_id = 'ARNSCHWA';

#Nieuwe student toevoegen, eerst als person dan als student
INSERT INTO persons
VALUE
    ('DIMDEROO','Dimitra','Deroo','2004-09-27','f', 'mimmi', 12);
INSERT INTO student
VALUE
    (12, 'DIMDEROO','JAVA_SEP_2023', 200);
#student verwijderen
DELETE FROM student WHERE person_id='DIMDEROO';
