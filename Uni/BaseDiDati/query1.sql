use ORG;

-- Q-1. Write an SQL query to fetch “FIRST_NAME” from Worker tableusing the alias name as <WORKER_NAME>.
-- SELECT FIRST_NAME as WORKER_NAME from Worker;
-- Q-2.  Write an SQL query to fetch “FIRST_NAME” from Worker table in upper case.
-- SELECT upper(FIRST_NAME) as WORKER_NAME from Worker;
-- Q-3. Write an SQL query to fetch unique values of DEPARTMENT from Worker table.
-- SELECT DISTINCT DEPARTMENT FROM Worker;
-- Q-4. Write an SQL query to print the first three characters of FIRST_NAME from Worker table.
-- SELECT substring(FIRST_NAME,1,3) from Worker;
-- Q-5. Write an SQL query to find the position of the alphabet (‘a’) in the first name column ‘Amitabh’ from Worker table.
-- they reproduce the same code it's just two different fuctions used.
-- SELECT locate('a', FIRST_NAME) from Worker where FIRST_NAME ="Amitabh";
-- Select INSTR(FIRST_NAME, BINARY'a') from Worker where FIRST_NAME = 'Amitabh';
-- Q-6. Write an SQL query to print the FIRST_NAME from Worker table after removing white spaces from the right side.
-- SELECT RTRIM(FIRST_NAME) from Worker;
-- Q-7. Write an SQL query to print the DEPARTMENT from Worker table after removing white spaces from the left side.
-- SELECT LTRIM(DEPARTMENT) from Worker;

-- Q-8. Write an SQL query that fetches the unique values of DEPARTMENT from Worker table and prints its length.

-- this more over complicated then the solution one.
-- SELECT LENGTH(DEPARTMENT) as L_DEPARTMENT from (SELECT DISTINCT DEPARTMENT FROM Worker) as DinstDep; 

-- Q-9. Write an SQL query to print the FIRST_NAME from Worker table after replacing ‘a’ with ‘A’.

/*
SELECT
  REPLACE (FIRST_NAME, 'a', 'A')
from
  Worker;
*/
-- Q-10. Write an SQL query to print the FIRST_NAME and LAST_NAME from Worker table into a single column COMPLETE_NAME. A space char should separate them.

-- SELECT CONCAT(FIRST_NAME,' ',LAST_NAME) as COMPLETE_NAME from Worker;

-- Q-11. Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending.

-- SELECT * FROM Worker order by FIRST_NAME ASC;

-- Q-12 Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending and DEPARTMENT Descending.

-- SELECT * FROM Worker ORDER BY FIRST_NAME asc, DEPARTMENT desc;

-- Q-13. Write an SQL query to print details for Workers with the first name as “Vipul” and “Satish” from Worker table.

-- Select * from Worker where FIRST_NAME like 'Vipul' or FIRST_NAME like 'Satish';

-- Select * from Worker where FIRST_NAME in ('Vipul','Satish');

-- Q-14. Write an SQL query to print details of workers excluding first names, “Vipul” and “Satish” from Worker table.

-- Select * from Worker where FIRST_NAME != 'Vipul' and FIRST_NAME != 'Satish';

-- Q-15. Write an SQL query to print details of Workers with DEPARTMENT name as “Admin”.

-- Select * from Worker where DEPARTMENT like 'Admin%'; -- this is better because if it contains admin

-- Q-16. Write an SQL query to print details of the Workers whose FIRST_NAME contains ‘a’.

-- Select * from Worker where FIRST_NAME like '%a%';

-- Q-17. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘a’.

-- Select * from Worker where FIRST_NAME like '%a';

-- Q-18. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and contains six alphabets.

-- two different methods with the same results

-- Select * from Worker where LENGTH(FIRST_NAME) = '6' and FIRST_NAME like '%h';

-- Select * from Worker where FIRST_NAME like '_____h';

-- Q-19. Write an SQL query to print details of the Workers whose SALARY lies between 100000 and 500000.

-- Select * from Worker where SALARY between 100000 and 500000;

-- Q-20 Write an SQL query to print details of the Workers who have joined in Feb’2014.

-- Select * from Worker where JOINING_DATE like '2014-02-%';

-- Q-21  Write an SQL query to fetch the count of employees working in the department ‘Admin’.

-- Select count(*) from Worker where DEPARTMENT like "Admin"

-- Q-22 Write an SQL query to fetch worker names with salaries >= 50000 and <= 100000

-- Select FIRST_NAME from Worker where salaries between 50000 and 100000;

-- Q-23 Write an SQL query to fetch the no. of workers for each department in the descending order.

Select count(*) from worker where GROUP BY DEPARTMENT;     

