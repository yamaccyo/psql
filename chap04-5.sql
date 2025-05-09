--例題1(p115)
--SELECT sal,sal * 1.2 AS 変更後 FROM employee;
--UPDATE employee SET sal = sal * 1.2;
--例題2(p116)
--SELECT sal AS 変更前, sal - 1000 AS 変更後 FROM employee WHERE sal >= 5000;
--UPDATE employee SET sal = sal - 1000 WHERE sal >= 5000;
--SELECT * FROM employee ORDER BY emp_id;
--例題3 (p117)
--;

--UPDATE department SET loc = '神奈川県川崎市' WHERE dept_id  BETWEEN 20 AND 30;

--UPDATE department SET mgr_id = (SELECT min(sal) FROM employee) WHERE emp_id 
