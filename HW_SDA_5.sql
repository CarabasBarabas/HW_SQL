CREATE OR REPLACE VIEW sum_of_women AS
SELECT COUNT(gender) AS sum_of_women FROM vk.profiles
WHERE gender = 'f';

SELECT * FROM sum_of_women;

DROP VIEW sum_of_women;


SELECT COUNT(media.id) AS news_count, users.id AS user_id, users.email AS user_email
FROM media
JOIN users ON user_id = users.id
GROUP BY users.id;

