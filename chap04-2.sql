--���(p52)
/*SELECT emp_name, sal FROM employee
WHERE sal < 1500 ; */

--���2(p53)
/*SELECT emp_name, sal, gender FROM employee
WHERE gender =2 ;*/
 
--���3(p53)
/*SELECT emp_name, sal FROM employee
WHERE emp_name = '���� �O�]';*/
--���4(p54)
/*SELECT emp_name,sal,birthday FROM employee
WHERE birthday >= '1980-01-01';*/
--���5(p54)
--SELECT emp_name,sal,birthday,emp_id FROM employee WHERE emp_id = 20 ;
--SELECT * FROM employee; �S���R�[�h�𒊏o
--���1(p55)
--SELECT emp_name,sal FROM employee WHERE sal >= 2000 AND sal <= 3000;
--SELECT emp_name,sal FROM employee WHERE sal BETWEEN 2000 AND 3000;
--���2(p55)
--SELECT emp_name, sal, gender FROM employee WHERE sal >=2000 AND gender = 2 ;
-- ���3 (p56)
--SELECT emp_name, sal, emp_id FROM employee WHERE emp_id = 2 OR emp_id = 4 OR emp_id = 7 ;
--SELECT emp_name, sal, emp_id FROM employee WHERE emp_id IN(2,4,7);
--���4(p56)
--SELECT emp_name,sal,gender FROM employee WHERE sal >= 2000 OR gender = 2 ;
--���5(p57)
--SELECT emp_name,sal,gender FROM employee WHERE sal >=2000 AND sal <=3000 OR gender = 2 ;
--���1(p60)
--SELECT * FROM customer WHERE address like '%���s%';
--���2(p60)
--SELECT * FROM customer WHERE address NOT like '%�����s%';
--���3(p61)
--SELECT * FROM customer WHERE cust_name like '___�a%';
--SELECT * FROM customer WHERE address  like '%��';--��ŏI���
--SELECT * FROM customer WHERE address  like '%�s%';--�s���܂�
--���1 (p62)
--SELECT * FROM employee WHERE comm IS NOT NULL;
--SELECT cust_name,tel FROM customer WHERE tel NOT LIKE '_3%';
--SELECT emp_name,birthday FROM employee WHERE birthday BETWEEN '1980-04-02' AND '1981-04-01';
>