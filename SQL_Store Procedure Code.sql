
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


