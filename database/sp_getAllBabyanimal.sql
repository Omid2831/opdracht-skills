USE mydatabasesets;


DROP PROCEDURE IF EXISTS sp_getAllBabyanimal

DELIMITER $$
CREATE PROCEDURE sp_getAllBabyanimal()
BEGIN
SELECT
    BA.Id
   ,BA.Name
FROM
    `Baby-Animal` as BA
WHERE
    BA.IsActive = 1;

END $$

DELIMITER ;