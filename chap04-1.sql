--���(p33)
--SELECT * FROM employee;
--���3(p34)
--SELECT emp_name, birthday, sal FROM employee;
--���4(p35)
--SELECT emp_name, birthday, sal, sal * 12 FROM employee;
--���5(p34)
--SELECT emp_name, birthday, sal, sal * 12 AS �N�� FROM employee;
--���6(p35)
--SELECT emp_name, birthday, sal, (sal * 12 )::int AS �N�� FROM employee;
--SELECT '�S����' || emp_name || '�̒a������'|| birthday || '�ł��B' AS �a���� FROM employee;
--���1 (p37)
--SELECT emp_name,to_char(birthday,'Day,Month DD,YYYY') FROM employee;
--���2(p37)
--SELECT emp_name,to_char(sal * 1000,'9G999G999D99') FROM employee;
--���1(p40)
--SELECT emp_name,birthday,sal ,comm, sal + comm AS ���� FROM employee;
--���2(p41)
--SELECT emp_name,birthday, sal, comm, sal + COALESCE(comm,0) AS ���� FROM employee;
--���1(p42)
--SELECT emp_name,gender FROM employee;
--SELECT emp_name,
    --CASE
    --WHEN gender = 1 then '�j'
                   -- else '��'
    --END AS ����
    --FROM employee;   
--���(p44) 
/*SELECT 
emp_name,
birthday,
sal,
comm,
sal + 
CASE 
WHEN comm IS NULL THEN 0 
ELSE comm 
END
FROM employee;    */     
--���1(p45)
--SELECT * FROM employee ORDER BY birthday ;
--���2(p45)
--SELECT * FROM employee ORDER BY sal DESC; 
--���3(p46)
--SELECT * FROM employee ORDER BY gender DESC ,sal DESC;
--���4(p46)
--SELECT  emp_name,birthday,sal,comm,sal + comm AS ���� FROM employee ORDER BY 5 DESC;
--���1(p48)
--SELECT * FROM employee ORDER BY sal DESC LIMIT 3 OFFSET 1;
--���2(p48)
