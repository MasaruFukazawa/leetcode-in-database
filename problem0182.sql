--
-- duplicate-emails
--
SELECT
    email
FROM
    Person
Group by
    email
HAVING
    count(email) > 1
