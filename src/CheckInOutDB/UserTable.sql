CREATE TABLE IF NOT EXISTS us3r
(
    Id              INT(11) NOT NULL UNIQUE AUTO_INCREMENT,
    Email           VARCHAR(255) UNIQUE,
    GSM             INT(13) UNIQUE,
    Password        VARCHAR(255) DEFAULT 'ChangeThisPassword!!!',
    ActivationCode  INT(4),
    PRIMARY KEY (Id)
);

INSERT INTO us3r
VALUES
    (1,'jonathan.deroo@student.intecbrussel.be',0488768182,'default',1234),
    (2,'John.VonNeuman@student.intecbrussel.be',0488331516,'default',1234);

INSERT INTO us3r
VALUE
     (3,'Allan.Turing@student.intecbrussel.be',0488331517,'default',1234);