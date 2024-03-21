


create table if not exists student
(
    student_id       int auto_increment,
    person_id        char(16) null,
    course_id        char(255) null,
    total_attendance double null,

    primary key (student_id),

    constraint person_to_student_fk
        foreign key (person_id) references persons(person_id),
    constraint foreign key (course_id) references course(course_id)
);


INSERT INTO student
VALUES
    (6, 'KATOZEEL','JAVA_SEP_2023', 120),
    (7, 'LIEVANDE','CSHARP_JUNI_2023', 150),
    (8, 'GUIVANDE','JAVA_JAN_2023', 172),
    (9, 'ARTDEKEG','CSHARP_JUNI_2023', 102),
    (10, 'KURHELLY','JAVA_JAN_2023', 119),
    (11, 'KATSTRAT','JAVA_SEP_2023', 114);


