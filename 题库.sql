SELECT * FROM x2_questype WHERE  questid = '1'  LIMIT 512
DELETE FROM x2_quest2knows WHERE 1 AND qkquestionid = '8469'  AND qktype = '0'  LIMIT 512
SHOW FULL COLUMNS FROM  `x2_questions`
UPDATE x2_questions SET questiontype = '1',question = '&lt;p&gt;6.111 通常，在微机中标明的P4或奔腾4是指___________&lt;/p&gt;',questionselect = '&lt;p&gt;A．产品型号 B．主频 C．微机名称 D．微处理器型号&lt;/p&gt;',questionselectnumber = '4',questionanswer = 'D',questiondescribe = '&lt;p&gt;我是试题lyc&lt;/p&gt;',questionknowsid = '6:信用证',questionparent = '0',questionlevel = '1' WHERE 1 AND questionid = '8469'  LIMIT 512
SELECT * FROM x2_questions WHERE  questionid = '8469'  LIMIT 512
SHOW FULL COLUMNS FROM  `x2_quest2knows`
INSERT INTO x2_quest2knows (qkquestionid,qkknowsid,qktype) VALUES ('8469','6','0')
SHOW FULL COLUMNS FROM  `x2_questions`
UPDATE x2_questions SET questionknowsid = 'a:1:{i:0;a:2:{s:7:\"knowsid\";s:1:\"6\";s:5:\"knows\";s:9:\"信用证\";}}' WHERE 1 AND questionid = '8469'  LIMIT 512
SHOW FULL COLUMNS FROM  `x2_session`
UPDATE x2_session SET sessionlasttime = '1470208920' WHERE 1 AND sessionid = 'k5gv9dqm7dbgmshh9gnqodk360'  LIMIT 512


SELECT * FROM x2_questions WHERE  questionid in ('8462', '8463', '8472', '8470', '8471', '8469');
select * FROM x2_quest2knows WHERE 1 AND qkquestionid in ('8462', '8463', '8472', '8470', '8471', '8469');
select * FROM x2_quest2knows WHERE 1 AND qkquestionid in ('8465', '8469')  AND qktype = '0'
select * FROM x2_quest2knows WHERE 1 AND qkquestionid = '768'
SELECT * FROM x2_questions WHERE  questionid  = '768'
INSERT INTO x2_quest2knows (qkquestionid,qkknowsid,qktype) VALUES ('768','6','0')
INSERT INTO x2_quest2knows (qkquestionid,qkknowsid,qktype) VALUES ('8469','6','0')





SELECT DISTINCT questions.* FROM x2_questions AS questions,x2_quest2knows AS quest2knows WHERE  quest2knows.qkquestionid = questions.questionid  AND questions.questionstatus = '1'  AND questions.questionparent = 0  AND quest2knows.qktype = 0  AND questions.questiontype = '1'  AND find_in_set(quest2knows.qkknowsid,'0,6')  ORDER BY questions.questionid DESC LIMIT 0,10
SELECT count(DISTINCT questions.questionid) AS number FROM x2_questions AS questions,x2_quest2knows AS quest2knows WHERE  quest2knows.qkquestionid = questions.questionid  AND questions.questionstatus = '1'  AND questions.questionparent = 0  AND quest2knows.qktype = 0  AND questions.questiontype = '1'  AND find_in_set(quest2knows.qkknowsid,'0,6')  LIMIT 512
