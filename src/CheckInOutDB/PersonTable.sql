create table if not exists persons
(
    person_id     char(16)         not null unique,
    first_name    varchar(255)     not null,
    last_name     varchar(255)     not null,
    date_of_birth date             not null,
    gender        char DEFAULT 'U' null,
    nick_name     varchar(20)      null,
    user_id       int              not null,
    PRIMARY KEY (person_id)
    #CONSTRAINT FOREIGN KEY (user_id) REFERENCES employee(employee_id)
);

INSERT INTO persons
VALUES
    ('JONDEROO','Jonathan','Deroo','1965-11-02','m', 'Jonny', 1),
    ('ARNSCHWA','Arnold','Schwartzenegger','1959-01-01', 'm', 'Arnie',2),
    ('ALATURIN','Alan','Turing', '1905-01-01','m', 'Turie',3 ),
    ('PAUDIRAC','Paul','Dirac', '1897-01-01','m', 'Paulie',4),
    ('KARSCHWA', 'Karl','Schwartschild', '1894-01-01', 'm', 'Schwartzie',5),
    ('KATOZEEL', 'Katrien','Ozeel', '1965-01-01', 'f', 'Katrientje',6),
    ('LIEVANDE', 'Liesbeth','Vandewalle', '1984-01-01', 'f', 'Lieze',7),
    ('GUIVANDE', 'Guido','Vandenlangenbergh', '1964-01-01', 'm', 'Guido',8),
    ('ARTDEKEG', 'Arthuur','Dekegel', '1964-01-01', 'm', 'Dendikken',9),
    ('KURHELLY', 'Kurt','Hellyn', '1964-01-01', 'm', 'Spock',10),
    ('KATSTRAT', 'Katrien','Stratsaert', '1964-01-01', 'f', 'Rosse',11);
