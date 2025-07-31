-- Joins 

SELECT *
FROM employee_demographics;

SELECT *
FROM employee_salary;


SELECT dem.employee_id, age, occupation 
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
;

-- Outer Joins

SELECT *
FROM employee_demographics AS dem
LEFT JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
;


-- Self Join

SELECT  
  emp1.employee_id AS santa_id,
  emp1.first_name AS santa_first_name,
  emp1.last_name AS santa_last_name,
  emp2.employee_id AS recipient_id,
  emp2.first_name AS recipient_first_name,
  emp2.last_name AS recipient_last_name
FROM employee_salary emp1
JOIN employee_salary emp2
  ON emp1.employee_id + 1 = emp2.employee_id;


-- Joining multiple tables together

SELECT *
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
INNER JOIN parks_departments pd
	ON sal.dept_id = pd.department_id

;

SELECT * 
FROM parks_departments;

