--���1(p115)
--SELECT sal,sal * 1.2 AS �ύX�� FROM employee;
--UPDATE employee SET sal = sal * 1.2;
--���2(p116)
--SELECT sal AS �ύX�O, sal - 1000 AS �ύX�� FROM employee WHERE sal >= 5000;
--UPDATE employee SET sal = sal - 1000 WHERE sal >= 5000;
--SELECT * FROM employee ORDER BY emp_id;
--���3 (p117)
--;

--UPDATE department SET loc = '�_�ސ쌧���s' WHERE dept_id  BETWEEN 20 AND 30;

--UPDATE department SET mgr_id = (SELECT min(sal) FROM employee) WHERE emp_id 
