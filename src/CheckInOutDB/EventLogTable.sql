CREATE TABLE IF NOT EXISTS eventlog
(
    eventID         INT(11) UNIQUE AUTO_INCREMENT,
    ID              INT(11),
    check_in        datetime,
    check_out       datetime  DEFAULT '000-01-01',
    PRIMARY KEY (eventID),
    CONSTRAINT FOREIGN KEY (ID) REFERENCES us3r(Id)
);

#morgen
INSERT INTO eventlog(ID,check_in)
    VALUE(1, '2024-03-20 08:45:00');
INSERT INTO eventlog(ID,check_in)
    VALUE(2, '2024-03-20 08:45:00');
INSERT INTO eventlog(ID,check_in)
    VALUE(3, '2024-03-20 08:45:00');

#pauze
UPDATE eventlog
SET check_out='2024-03-20 10:20:00' WHERE eventlog.ID=1 and eventlog.check_out = '0000-01-01';
UPDATE eventlog
SET check_out='2024-03-20 10:20:00' WHERE eventlog.ID=2 and eventlog.check_out = '0000-01-01';
UPDATE eventlog
SET check_out='2024-03-20 10:20:00' WHERE eventlog.ID=3 and eventlog.check_out = '0000-01-01';

#einde pauze
INSERT INTO eventlog(ID,check_in)
    VALUES
        (1, '2024-03-20 10:40:00'),
        (2, '2024-03-20 08:40:00'),
        (3, '2024-03-20 08:40:00');

#middagpauze
UPDATE eventlog
SET check_out='2024-03-20 12:00:00' WHERE eventlog.ID=1 and eventlog.check_out = '0000-01-01';
UPDATE eventlog
SET check_out='2024-03-20 12:00:00' WHERE eventlog.ID=2 and eventlog.check_out = '0000-01-01';
UPDATE eventlog
SET check_out='2024-03-20 12:00:00' WHERE eventlog.ID=3 and eventlog.check_out = '0000-01-01';

#einde middagpauze
INSERT INTO eventlog(ID,check_in)
VALUES
    (1, '2024-03-20 13:00:00'),
    (2, '2024-03-20 13:00:00'),
    (3, '2024-03-20 13:00:000');


#begin namiddagpauze

UPDATE eventlog
SET check_out='2024-03-20 14:20:00' WHERE eventlog.ID=1 and eventlog.check_out = '0000-01-01';
UPDATE eventlog
SET check_out='2024-03-20 14:20:00' WHERE eventlog.ID=2 and eventlog.check_out = '0000-01-01';
UPDATE eventlog
SET check_out='2024-03-20 14:20:00' WHERE eventlog.ID=3 and eventlog.check_out = '0000-01-01';

#einde namiddagpauze
INSERT INTO eventlog(ID,check_in)
VALUES
    (1, '2024-03-20 14:40:00'),
    (2, '2024-03-20 14:40:00'),
    (3, '2024-03-20 14:40:00');

#naar huis

UPDATE eventlog
SET check_out='2024-03-20 16:00:00' WHERE eventlog.ID=1 and eventlog.check_out = '0000-01-01';
UPDATE eventlog
SET check_out='2024-03-20 16:00:00' WHERE eventlog.ID=2 and eventlog.check_out = '0000-01-01';
UPDATE eventlog
SET check_out='2024-03-20 16:00:00' WHERE eventlog.ID=3 and eventlog.check_out = '0000-01-01';


SELECT * FROM eventlog WHERE check_in LIKE '2024-03-20%';

SELECT * FROM eventlog WHERE check_out < '2024-03-20% 17:00:00';


SELECT * FROM eventlog GROUP BY check_in DESC;











