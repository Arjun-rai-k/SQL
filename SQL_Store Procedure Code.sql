----1)-----
-- Create table
CREATE TABLE Test_proc (
    Id INT,
    Name VARCHAR(100)
);

-- Create procedure
CREATE OR REPLACE PROCEDURE Insert_test(p_id INT, p_name VARCHAR)
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO Test_proc (Id, Name) VALUES (p_id, p_name);
END;
$$;

-- Call procedure
CALL Insert_test(2, 'Vikram');

-- Check inserted data
SELECT * FROM Test_proc;

----2)-----
CREATE TABLE EMPLOYEES (
EMPID SERIAL PRIMARY KEY,
EMPNAME VARCHAR(100),
DEPT VARCHAR(100),
SALARY INT
)

CREATE OR REPLACE PROCEDURE ADDEMPLOYEE(p_name VARCHAR,p_dept VARCHAR,p_salary INT)
Language plpgsql
AS $$
BEGIN 

INSERT INTO EMPLOYEES (EMPNAME,DEPT,SALARY)
VALUES (p_name,p_dept,p_salary);
END;
$$

--call it
CALL ADDEMPLOYEE ('Arjun', 'IT', 60000);
CALL ADDEMPLOYEE ('Vikram', 'Finance', 75000)

--verify 
Select * from EMPLOYEES

----3)-----


