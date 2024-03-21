CREATE DATABASE IF NOT EXISTS CheckInOutDB;
USE CheckInOutDB;

CREATE TABLE IF NOT EXISTS department
(
    Id INT(11)          NOT NULL UNIQUE AUTO_INCREMENT,
    Title               VARCHAR(50)    DEFAULT 'No title',
    ParentDepartmentId  INT(1) DEFAULT NULL, #self referring to parentdepartmentid
    PRIMARY KEY (Id),
    CONSTRAINT FOREIGN KEY (ParentDepartmentID) REFERENCES department(Id)
    #CONSTRAINT Beers_Category FOREIGN KEY (CategoryId) REFERENCES categories(Id),
    #CONSTRAINT Beers_Brewer FOREIGN KEY (BrewerId) REFERENCES brewers(Id)
);

insert into department (Title, ParentDepartmentId)
values ('Instructors', null),
       ('Human Resources', null),
       ('Administration', null),
       ('IT Services', null),
       ('Accounting', null),
       ('Java', 1),
       ('C#', 1),
       ('JavaScript', 1),
       ('Python', 1),
       ('System and Networking', 1),
       ('Ethical Hacking', 1),
       ('Data Analysis', 1),
       ('Job Applications', 2),
       ('Personal Development ', 2),
       ('Financial Accounting', 5),
       ('Student Reimbursement', 5),
       ('Computer Hardware', 4);

USE checkinoutdb;
SELECT department.Title FROM department WHERE Title LIKE '%Java%';