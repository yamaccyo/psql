--例題(p33)
--SELECT * FROM employee;
--例題3(p34)
--SELECT emp_name, birthday, sal FROM employee;
--例題4(p35)
--SELECT emp_name, birthday, sal, sal * 12 FROM employee;
--例題5(p34)
--SELECT emp_name, birthday, sal, sal * 12 AS 年収 FROM employee;
--例題6(p35)
--SELECT emp_name, birthday, sal, (sal * 12 )::int AS 年収 FROM employee;
--SELECT '担当者' || emp_name || 'の誕生日は'|| birthday || 'です。' AS 誕生日 FROM employee;
--例題1 (p37)
--SELECT emp_name,to_char(birthday,'Day,Month DD,YYYY') FROM employee;
--例題2(p37)
--SELECT emp_name,to_char(sal * 1000,'9G999G999D99') FROM employee;
--例題1(p40)
--SELECT emp_name,birthday,sal ,comm, sal + comm AS 収入 FROM employee;
--例題2(p41)
--SELECT emp_name,birthday, sal, comm, sal + COALESCE(comm,0) AS 月収 FROM employee;
--例題1(p42)
--SELECT emp_name,gender FROM employee;
--SELECT emp_name,
    --CASE
    --WHEN gender = 1 then '男'
                   -- else '女'
    --END AS 性別
    --FROM employee;   
--例題(p44) 
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
--例題1(p45)
--SELECT * FROM employee ORDER BY birthday ;
--例題2(p45)
--SELECT * FROM employee ORDER BY sal DESC; 
--例題3(p46)
--SELECT * FROM employee ORDER BY gender DESC ,sal DESC;
--例題4(p46)
--SELECT  emp_name,birthday,sal,comm,sal + comm AS 月収 FROM employee ORDER BY 5 DESC;
--例題1(p48)
--SELECT * FROM employee ORDER BY sal DESC LIMIT 3 OFFSET 1;
--例題2(p48)
