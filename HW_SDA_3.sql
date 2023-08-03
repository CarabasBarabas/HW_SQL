SELECT DISTINCT firstname FROM vk.users
order by firstname;

SELECT COUNT(gender) FROM vk.profiles
WHERE gender = 'f';

SELECT 	status, COUNT(*) AS total 
FROM vk.friend_requests 
GROUP BY status;

SELECT MAX(initiator_user_id) AS Friendliest 
FROM vk.friend_requests
LIMIT 1;

SELECT id, name
FROM vk.communities
WHERE name LIKE '_____';