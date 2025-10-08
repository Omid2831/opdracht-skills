DROP DATABASE IF EXISTS mydatabasesets;
CREATE DATABASE mydatabasesets;
USE mydatabasesets;

-- drop the table Baby Animal if exists
DROP TABLE IF EXISTS `Baby-Animal`;


-- creating the table 'baby animal'

CREATE TABLE IF NOT EXISTS `Baby-Animal`(
     `Id`                INT           UNSIGNED         NOT NULL AUTO_INCREMENT
    ,`Name`           VARCHAR(25)                       NOT NULL UNIQUE
    ,'Description'    VARCHAR(250)                          NULL
    ,`IsActive`          BIT(1)                         NOT NULL DEFAULT 1
    ,`NOTE`           VARCHAR(250)                          NULL
    ,`DateSet`        DATETIME(6)                       NOT NULL DEFAULT (SYSDATE(6))
    ,`DateChanged`    DATETIME(6)                       NOT NULL DEFAULT (SYSDATE(6))
)

-- drop the table adult Animal if exists

CREATE TABLE IF NOT EXISTS `Adult-Animal`(
     `Id`                INT           UNSIGNED         NOT NULL AUTO_INCREMENT
    ,`Name`           VARCHAR(25)                       NOT NULL UNIQUE
    ,'Description'    VARCHAR(250)                          NULL
    ,`IsActive`          BIT(1)                         NOT NULL DEFAULT 1
    ,`NOTE`           VARCHAR(250)                          NULL
    ,`DateSet`        DATETIME(6)                       NOT NULL DEFAULT (SYSDATE(6))
    ,`DateChanged`    DATETIME(6)                       NOT NULL DEFAULT (SYSDATE(6))
)


-- INSERT THE DATA FOR THE TABLE BABY ANIMAL
INSERT INTO `Baby-Animal`(Id , Name , Description , IsActive , NOTE )
VALUES
(1 , 'hatchling' , NULL , b'1', NULL),
(2 , 'pup' , NULL , b'1', NULL),
(3 , 'fawn' , NULL , b'1', NULL),
(4 , 'fingerling' , NULL , b'1', NULL),
(5 , 'gosling' , NULL , b'1', NULL),
(6 , 'joey' , NULL , b'1', NULL),
(7 , 'infant' , NULL , b'1', NULL),
(8 , 'Puppy' , NULL , b'1', NULL),
(9 , 'Foal' , NULL , b'1', NULL);


-- INSERT THE DATA FOR THE TABLE BABY ANIMAL
INSERT INTO `Adult-Animal`(Id , Name , Description , IsActive , NOTE )
VALUES
(1 , 'alligator ' , NULL , b'1', NULL),
(2 , 'armadillo ' , NULL , b'1', NULL),
(3 , 'deer ' , NULL , b'1', NULL),
(4 , 'fish ' , NULL , b'1', NULL),
(5 , 'goose ' , NULL , b'1', NULL),
(6 , 'kangaroo ' , NULL , b'1', NULL),
(7 , 'monkey ' , NULL , b'1', NULL),
(8 , 'Dog' , NULL , b'1', NULL),
(9 , 'Foal' , NULL , b'1', NULL);
