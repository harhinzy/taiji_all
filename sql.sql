SELECT TOP 10 ht.replay_id,ht.questions_id,ht.users_id ,u.Users_name
FROM 回贴表 as ht INNER JOIN (
select questions_id,count(*) as 回复数 from 主贴表 as zb inner join 回复表 as hf
on zb.questions_id=hf.questions_id) as hc ON ht.questions_id=hc.questions_id
INNER JOIN 用户表 as u ON ht.user_id=u.User_id
ORDER BY hc.回复数 DESC