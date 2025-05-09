--SELECT sum(cost),avg(cost),min(cost),max(cost) FROM product;
--SELECT count(*),count(discount), count(DISTINCT discount),sum(discount),avg(discount),min(discount),max(discount)FROM product;
/*SELECT
    discount,
    count(discount),
    sum(discount),
    avg(discount),
    min(discount),
    max(discount)
FROM product
GROUP BY discount
ORDER BY discount; */

/*SELECT
    discount,
    count(discount),
    sum(discount),
    avg(discount),
    min(discount),
    max(discount)
FROM product
 
GROUP BY discount
HAVING NOT count(discount) < 5;*/

/*SELECT discount,count(discount),sum(discount),avg(discount),min(discount),max(discount)
FROM product
WHERE cost >= 15000
GROUP BY discount;*/

--SELECT emp_id,avg(total) FROM packedsales GROUP BY emp_id ORDER BY emp_id ;
--SELECT psales_date,sum(total) FROM packedsales GROUP BY psales_date ORDER BY sum DESC LIMIT 5
--SELECT DISTINCT emp_id FROM packedsales  ORDER BY emp_id;
--SELECT * FROM employee ORDER BY birthday DESC;
--SELECT * FROM product WHERE cost BETWEEN 10000 AND 19999 AND discount IS NULL ;
--SELECT * FROM packedsales WHERE cust_address LIKE '%ç`ãÊ%'; 
SELECT * FROM customer WHERE cust_id = 3