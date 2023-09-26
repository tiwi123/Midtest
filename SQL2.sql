SELECT email
FROM email_list
GROUP BY email
HAVING COUNT(*) > 1;