SELECT TOP 10 ht.replay_id,ht.questions_id,ht.users_id ,u.Users_name
FROM ������ as ht INNER JOIN (
select questions_id,count(*) as �ظ��� from ������ as zb inner join �ظ��� as hf
on zb.questions_id=hf.questions_id) as hc ON ht.questions_id=hc.questions_id
INNER JOIN �û��� as u ON ht.user_id=u.User_id
ORDER BY hc.�ظ��� DESC