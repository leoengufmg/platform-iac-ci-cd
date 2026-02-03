-- Identify inactive users without recent login
SELECT user_id, last_login
FROM platform_users
WHERE last_login < NOW() - INTERVAL '90 days';