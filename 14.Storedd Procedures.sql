-- Storedd Procedures

CREATE PROCEDURE large_salarries()
SELECT * 
FROM employee_salary
WHERE salary >= 50000
;


CALL large_salarries();




DELIMITER $$ 
CREATE PROCEDURE large_salarries3()
BEGIN
	SELECT * 
	FROM employee_salary
	WHERE salary >= 50000;
	SELECT * 
	FROM employee_salary
	WHERE salary >= 10000;
END $$
DELIMITER ;


CALL large_salarries3();


DELIMITER $$ 
CREATE PROCEDURE large_salarries4(p_employee_id INT)
BEGIN
	SELECT salary
	FROM employee_salary
    WHERE employee_id = p_employee_id
    ;
END $$
DELIMITER ;


CALL large_salarries4(1)