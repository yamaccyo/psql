--���1.2(p67)
/*SELECT count(*)AS �s��,sum(sal)AS ���v,avg(sal)AS ����,min(sal)AS �ŏ��l,max(sal)AS �ő�l FROM employee
WHERE dept_id =30;*/
--���3 (p67)
--SELECT count(*) - count(comm) FROM employee;
--SELECT count(*) FROM employee WHERE comm IS NULL;
--���4(p68)
--SELECT count(DISTINCT dept_id) FROM employee;
--���(p71)
--SELECT dept_id AS ����ID,count(*)AS �s��,sum(sal)AS ���v,avg(sal)AS ����,min(sal)AS �ŏ��l,max(sal)AS �ő�l  FROM employee GROUP BY dept_id ORDER BY dept_id;
--���2(p71)
--SELECT gender,count(*) FROM employee GROUP BY gender ORDER BY gender;
--���3(P72)
/*SELECT dept_id,gender,count(*),avg(sal) FROM employee
GROUP BY dept_id,gender
ORDER BY dept_id,gender;*/
---���4(p72)
/*SELECT gender,dept_id,count(*),avg(sal) FROM employee
GROUP BY dept_id,gender
ORDER BY gender, dept_id;*/
---���5(p73)
/*SELECT dept_id AS ����ID,count(*)AS �s��,sum(sal)AS ���v,avg(sal)AS ����,min(sal)AS �ŏ��l,max(sal)AS �ő�l FROM employee
GROUP BY dept_id HAVING sum(sal) <= 5000
ORDER BY dept_id;*/
--���6(p73)
/*SELECT dept_id AS ����ID,count(*)AS �s��,sum(sal)AS ���v,avg(sal)AS ����,min(sal)AS �ŏ��l,max(sal)AS �ő�l FROM employee
WHERE gender = 1
GROUP BY dept_id 
HAVING sum(sal) <= 5000
ORDER BY dept_id;*/
--���(p74)
--SELECT DISTINCT dept_id FROM employee ORDER BY dept_id;
--���(p75)
--SELECT DISTINCT ON (dept_id) emp_name,dept_id,sal FROM employee ORDER BY dept_id,sal DESC;