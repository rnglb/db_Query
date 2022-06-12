-- Second highest salary.
SELECT 
CASE WHEN ((SELECT COUNT(salary) FROM Employee)>=2) THEN (SELECT DISTINCT
    Salary 
FROM
    Employee
ORDER BY Salary DESC
LIMIT 1 OFFSET 1) 
ELSE NULL
END AS SecondHighestSalary

-- NTH highest salary 
CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
DECLARE P INT;
 SET P = N-1;
  RETURN (
      SELECT 
CASE WHEN ((SELECT COUNT(salary) FROM Employee)>=N) THEN (SELECT DISTINCT
    Salary 
FROM
    Employee
ORDER BY Salary DESC
LIMIT 1 OFFSET P) 
ELSE NULL
END AS getNthHighestSalary 
  );
END