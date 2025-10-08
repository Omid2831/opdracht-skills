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
(1 , 'cat_b' , NULL , b'1', 'cat_baby'),
(2 , 'cow_b' , NULL , b'1', 'cow_baby'),
(3 , 'dog_b' , NULL , b'1', 'dog_baby'),
(4 , 'duck_b' , NULL , b'1', 'duck_baby'),
(5 , 'elephent_b' , NULL , b'1', 'elephent_baby'),
(6 , 'goat_b' , NULL , b'1', 'goat_baby'),
(7 , 'horse_b' , NULL , b'1', 'horse_baby'),
(8 , 'pig_b' , NULL , b'1','pig_baby'),
(9 , 'seal_b' , NULL , b'1', 'seal_baby');


-- INSERT THE DATA FOR THE TABLE BABY ANIMAL
INSERT INTO `Adult-Animal`(Id , Name , Description , IsActive , NOTE )
VALUES
(1 , 'cat_b ' , NULL , b'1','cat_adult'),
(2 , 'cow_b  ' , NULL , b'1', 'cow_adult'),
(3 , 'dog_a  ' , NULL , b'1',  'dog_adult'),
(4 , 'fish_a  ' , NULL , b'1', 'duck_adult'),
(5 , 'duck_a  ' , NULL , b'1','elephent_adult'),
(6 , 'goat_a  ' , NULL , b'1', 'goat_adult'),
(7 , 'horse_a  ' , NULL , b'1', 'horse_adult'),
(8 , 'pig_a ' , NULL , b'1', 'pig_adult'),
(9 , 'seal_a ' , NULL , b'1', 'seal_adult');
