create table if not exists employee
(
    employee_id     int(11) NOT NULL UNIQUE AUTO_INCREMENT,
    person_id       char(16) not null,
    department_id   int(11)  not null,
    work_start_date date     not null,
    work_end_date   date     null,
    profile_photo   blob     null,

    primary key (employee_id),

    constraint person_to_employee_fk
        foreign key (person_id) references persons(person_id)
);

INSERT INTO employee VALUES
    (1,'JONDEROO',1,'2013-09-01','2020-08-30',null),
    (2,'ARNSCHWA',2,'2014-09-01','2020-08-30',null),
    (3,'ALATURIN',3,'2015-09-01','2020-08-30',null),
    (4,'PAUDIRAC',4,'2016-09-01','2023-08-30',null),
    (5,'KARSCHWA',5,'2017-09-01','2023-08-30',null);
