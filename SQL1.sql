SELECT DISTINCT num
FROM (
    SELECT num,
           LEAD(num) OVER (ORDER BY id) AS next_num,
           LAG(num, 2) OVER (ORDER BY id) AS prev_prev_num
    FROM input_table
) subquery
WHERE num = next_num AND num = prev_prev_num
ORDER BY num;



