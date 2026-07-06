--
-- group-sold-products-by-the-date
--
SELECT
    a.sell_date,
    count(a.sell_date) AS num_sold,
    GROUP_CONCAT(a.product ORDER BY a.product ASC) AS products
FROM (
    SELECT DISTINCT * FROM Activities
) AS a
GROUP BY
    a.sell_date
