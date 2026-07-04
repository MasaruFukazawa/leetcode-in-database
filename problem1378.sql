--
-- replace-employee-id-with-the-unique-identifier
--
SELECT
    euni.unique_id,
    e.name
FROM
    Employees AS e
LEFT OUTER JOIN
    EmployeeUNI AS euni
ON
    e.id = euni.id