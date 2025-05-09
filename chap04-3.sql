--例題1.2(p67)
/*SELECT count(*)AS 行数,sum(sal)AS 合計,avg(sal)AS 平均,min(sal)AS 最小値,max(sal)AS 最大値 FROM employee
WHERE dept_id =30;*/
--例題3 (p67)
--SELECT count(*) - count(comm) FROM employee;
--SELECT count(*) FROM employee WHERE comm IS NULL;
--例題4(p68)
--SELECT count(DISTINCT dept_id) FROM employee;
--例題(p71)
--SELECT dept_id AS 部門ID,count(*)AS 行数,sum(sal)AS 合計,avg(sal)AS 平均,min(sal)AS 最小値,max(sal)AS 最大値  FROM employee GROUP BY dept_id ORDER BY dept_id;
--例題2(p71)
--SELECT gender,count(*) FROM employee GROUP BY gender ORDER BY gender;
--例題3(P72)
/*SELECT dept_id,gender,count(*),avg(sal) FROM employee
GROUP BY dept_id,gender
ORDER BY dept_id,gender;*/
---例題4(p72)
/*SELECT gender,dept_id,count(*),avg(sal) FROM employee
GROUP BY dept_id,gender
ORDER BY gender, dept_id;*/
---例題5(p73)
/*SELECT dept_id AS 部門ID,count(*)AS 行数,sum(sal)AS 合計,avg(sal)AS 平均,min(sal)AS 最小値,max(sal)AS 最大値 FROM employee
GROUP BY dept_id HAVING sum(sal) <= 5000
ORDER BY dept_id;*/
--例題6(p73)
/*SELECT dept_id AS 部門ID,count(*)AS 行数,sum(sal)AS 合計,avg(sal)AS 平均,min(sal)AS 最小値,max(sal)AS 最大値 FROM employee
WHERE gender = 1
GROUP BY dept_id 
HAVING sum(sal) <= 5000
ORDER BY dept_id;*/
--例題(p74)
--SELECT DISTINCT dept_id FROM employee ORDER BY dept_id;
--例題(p75)
--SELECT DISTINCT ON (dept_id) emp_name,dept_id,sal FROM employee ORDER BY dept_id,sal DESC;