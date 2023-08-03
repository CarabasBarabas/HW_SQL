
SELECT user_id, count(community_id) 
from vk.users_communities
GROUP BY user_id;


select community_id, count(DISTINCT user_id) as count_users
from vk.users_communities
group by community_id;

SELECT to_user_id, COUNT(*) AS message_count
FROM vk.messages
WHERE from_user_id = 3
GROUP BY to_user_id
ORDER BY message_count DESC
LIMIT 1;