USE mydatabasesets;


DROP PROCEDURE IF EXISTS sp_getAllAdultsanimal

DELIMITER $$
CREATE PROCEDURE sp_getAllAdultsanimal()
BEGIN
SELECT
    BA.Id
   ,BA.Name
   ,BA.NOTE
   
FROM
    `Adult-Animal` as BA
WHERE
    BA.IsActive = 1;

END $$

DELIMITER ;