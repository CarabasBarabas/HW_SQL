DROP FUNCTION IF EXISTS deleting_a_user;
DELIMITER //
CREATE FUNCTION deleting_a_user(user_id INT)
RETURNS INT READS SQL DATA
  BEGIN
  
  DELETE FROM media
  WHERE user_id = user_id;
  
  DELETE FROM likes
  WHERE user_id = user_id;
  
   DELETE FROM messages
   WHERE from_user_id = user_id or to_user_id = user_id;
   
   DELETE FROM friend_requests
   WHERE initiator_user_id = user_id or target_user_id = user_id;
   
   DELETE FROM users_communities
   WHERE user_id = user_id;
   
   DELETE FROM vk.profiles
   WHERE user_id = user_id;
   
   DELETE FROM users
   WHERE id = user_id;
   
	RETURN user_id;
   END//
   
SELECT deleting_a_user(3)//


DROP PROCEDURE IF EXISTS deleting_a_user//

CREATE PROCEDURE deleting_a_user(IN user_id INT)
BEGIN
    START TRANSACTION;
    DELETE FROM media
    WHERE user_id = user_id; 
	    
    DELETE FROM likes
    WHERE user_id = user_id;
	    
    DELETE FROM messages
    WHERE from_user_id = user_id or to_user_id = user_id;
    
    DELETE FROM friend_requests
    WHERE initiator_user_id = user_id or target_user_id = user_id;
	
    DELETE FROM users_communities
    WHERE user_id = user_id;
	
    DELETE FROM vk.profiles
    WHERE user_id = user_id;
	
    DELETE FROM users
    WHERE id = user_id and is_admin = 0;
    COMMIT;
END//

CALL deleting_a_user(6)//


CREATE TRIGGER new_community
BEFORE INSERT ON communities
FOR EACH ROW
BEGIN
    IF LENGTH(NEW.name) < 5 THEN
        SIGNAL SQLSTATE '45000' 
        SET MESSAGE_TEXT = 'Длина названия сообщества должна быть не менее 5 символов';
    END IF;
END//

DELIMITER ;