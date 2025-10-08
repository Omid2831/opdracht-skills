DROP DATABASE IF EXISTS mydatabasesets;
CREATE DATABASE mydatabasesets;
USE mydatabasesets;

-- drop the table Baby Animal if exists
DROP TABLE IF EXISTS `Baby-Animal`;


-- creating the table 'baby animal'

CREATE TABLE IF NOT EXISTS `Baby-Animal`(
     `Id`                INT                            NOT NULL AUTO_INCREMENT PRIMARY KEY
    ,`Name`           VARCHAR(25)                       NOT NULL UNIQUE
    ,`Description`    VARCHAR(250)                          NULL
    ,`IsActive`          BIT(1)                         NOT NULL DEFAULT 1
    ,`NOTE`           VARCHAR(250)                          NULL
    ,`DateSet`        DATETIME(6)                       NOT NULL DEFAULT (SYSDATE(6))
    ,`DateChanged`    DATETIME(6)                       NOT NULL DEFAULT (SYSDATE(6))
);

-- drop the table adult Animal if exists
DROP TABLE IF EXISTS `Adult-Animal`;

CREATE TABLE IF NOT EXISTS `Adult-Animal`(
     `Id`                INT                            NOT NULL AUTO_INCREMENT PRIMARY KEY
    ,`Name`           VARCHAR(25)                       NOT NULL UNIQUE
    ,`Description`    VARCHAR(250)                          NULL
    ,`IsActive`          BIT(1)                         NOT NULL DEFAULT 1
    ,`NOTE`           VARCHAR(250)                          NULL
    ,`DateSet`        DATETIME(6)                       NOT NULL DEFAULT (SYSDATE(6))
    ,`DateChanged`    DATETIME(6)                       NOT NULL DEFAULT (SYSDATE(6))
);

-- INSERT THE DATA FOR THE TABLE BABY ANIMAL
INSERT INTO `Baby-Animal`(Id , Name , Description , IsActive , NOTE )
VALUES
(1 , 'cat_b' , NULL , b'1', 'cat_baby.png'),
(2 , 'cow_b' , NULL , b'1', 'cow_baby.png'),
(3 , 'dog_b' , NULL , b'1', 'dog_baby.png'),
(4 , 'duck_b' , NULL , b'1', 'duck_baby.png'),
(5 , 'elephant_b' , NULL , b'1', 'elephant_baby.png'),
(6 , 'goat_b' , NULL , b'1', 'goat_baby.png'),
(7 , 'horse_b' , NULL , b'1', 'horse_baby.png'),
(8 , 'pig_b' , NULL , b'1','pig_baby.png'),
(9 , 'seal_b' , NULL , b'1', 'seal_baby.png');


-- INSERT THE DATA FOR THE TABLE BABY ANIMAL
INSERT INTO `Adult-Animal`(Id , Name , Description , IsActive , NOTE )
VALUES
(1 , 'cat_b ' , NULL , b'1','cat_adult.png'),
(2 , 'cow_b  ' , NULL , b'1', 'cow_adult.png'),
(3 , 'dog_a  ' , NULL , b'1',  'dog_adult.png'),
(4 , 'duck_b  ' , NULL , b'1', 'duck_adult.png'),
(5 , 'elephant_a ' , NULL , b'1','elephant_adult.png'),
(6 , 'goat_a  ' , NULL , b'1', 'goat_adult.png'),
(7 , 'horse_a  ' , NULL , b'1', 'horse_adult.png'),
(8 , 'pig_a ' , NULL , b'1', 'pig_adult.png'),
(9 , 'seal_a ' , NULL , b'1', 'seal_adult.png');
