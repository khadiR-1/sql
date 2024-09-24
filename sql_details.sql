Oracle DATABASE
DDL  DATA DEFINITION LANGUAGE:-  ALTER,CONTROL,DROP ,TRUNCATE ,RENAME
DML  DATA MANIPULATION LANGUAGE: INSERT ,DELETE,UPDATE,MERGE
DRL  DATA RETRIVAL LANGUAGE : SELECT
TCL  TRANSACTION CONTROL LANGUAGE : COMMIT,ROLLBACK,SAVEPOINT
DCL  DATA CONTROL LANGUAGE : GRANT ,REVOKE

CONSTRAINTS IN ORACLE :- PK,FK,NOT NULL,CHECK,UNIQUE
SELECT STATEMENTS IN SQLCODE
SINGLE ROW FUNCTIONS
JOINS :- INNER, LEFT,RIGHT,OUTER FULL,SELF JOINS
AGGREGATE FUNCTION :- MIN,MAX,AVG,COUNT,GROUP BY,HAVING
SUB QUERY
SET OPERATOR :- UNION,UNION ALLL,INTERSECT,MINUS
ANALYTICAL/WINDOWS FUNCTION IN SQL
VIEWS,MATERIALIZED VIEWS
INDEXES IN Oracle
MERGE STATEMENTS
REGULAR EXPRESSION
PERFORMANCE TUNING  ;

DATA TYPE :-
 1. NUMERIC :
	 NUMBER (8),
	 NUMBER (8,2),
	 NUMBER (2,2),
 2. CHAR :
     CHAR
	 VARCHAR()
	 VARCHAR2()     4000 BYTES 
 3. DATE :
     DATE 10-JANVERY-2024
############################################################
 
 HOW TO GET BACKUP FROM DATABASE
 1. BKP A TABLE(create i t)
 2.TRUNCATE BASE TABLE (clean it original)
 3.MODIFY DATA TYPE (modify the table as per requied)
 4.RESTORE THE DATA 
 5.DROP BKP TABLE
 EX:- CREATE TABLE (BKP_TABLE_NAME) AS SELECT * FROM (TABLE_NAME)
      CREATE TABLE (BKP_TABLE_NAME) AS SELECT * FROM (TABLE_NAME) WHERE 1=2;
	  ( THIS WILL BE CRATE THE STRUCTURE ONLY)
	  TIME (1:02:49)

CONSTRAINTS IN ORACLE;
======================

DATA VALIDATION BEFORE INSERTING THE DATA INTO THE table

1.  PRIMARY KEY
 - IT WILL NOT ALLOW DUPLICATE VALUES
 - IT WILL NOT ALLOW NULL
 - ONLY ON PRIMARY KEY IN A TABLE 
  
--  composite KEY : combination of two columns is called composite key.

  
 
2. NOT NULL       *MANDATORY
 - IT WILL NOT ALLOW NULL VALUE
 - IT WILL ALLOW DUPLICATE
 
3. UNIQUE
 - IT WILL NOT ALLOW DUPLICATE
 - IT WILL ALLOW NULL

4. CHECK
 - DATE VALIDATION
   CHECK(AGE => 18)
5. FOREIGN KEY 
 - RELATIONSHIP BETWEEN TWO TABLES
 - IT WILL ACCEPT DUPLICATE VALUE
 - IT SHOULD BE PRIMARY KEY IN ANOTHER TABLE
 - ANY NO OF FOREIGN KEY IN A TABLE  
   -- FOREGIN KEY(CITY_ID) REFERENCES CITY(CITY_ID)
   
 VIOLATION :
  INTEGRITY CONSTRAINTS VOILATED - PARENT KEY NOT FOUND
  

 BACKUP DATA ALL DETAILS 
 CREATE TABLE (GIVE_NEW_NAME_BACKUP) AS SELECT * FROM (TABLE NAME ) ; ( IT WILL BE CRATE SAME TABLE ONLY ) 
 CREATE TABLE (TABLE_NAME ) AS SELECT * FROM (EXENSTING_TABLE ) WHERE 1=2; ( IT WILL CREATE THE STRUCTURE OF THE TABLE )
 --TRUNCATE  TABLE (TABLE_NAME ) (WHILE WE DOING THIS WE CANN'T ROLL BACK , IT IS DDL COMMAND );
 
1) BKP A table
2) TRUNCATE BASE table
3) MODIFY DATA TYPE
4) RESTORE THE DATA
5) DROP BKP table
------------------------------------------------------------------------------------------
 DATE FORMATE 
 SELECT * FROM employees WHERE TO_CHAR(HIRE_DATE,'MM') ='02';
SELECT * FROM EMPLOYEES WHERE TO_CHAR(HIRE_DATE,'dd')= '10';
SELECT * FROM EMPLOYEES WHERE TO_CHAR(HIRE_DATE,'YYYY') ='2007';
SELECT * FROM EMPLOYEES WHERE TO_CHAR(HIRE_DATE,'FMDAY')='MONDAY'; (FORMATE DAY) 

SELECT * FROM DUAL;
SELECT * FROM employees WHERE TO_CHAR(HIRE_DATE,'MM') ='02';
SELECT * FROM EMPLOYEES WHERE TO_CHAR(HIRE_DATE,'dd')= '10';
SELECT * FROM EMPLOYEES WHERE TO_CHAR(HIRE_DATE,'YYYY') ='2007';
SELECT * FROM EMPLOYEES WHERE TO_CHAR(HIRE_DATE,'FMDAY')='MONDAY'; 

================================================================
PATTERN MATCHING  WE CAN USE 
LIKE 'S%'; IT WILL GIVE THE S AFTER EVERY THING (STARTING WITH s ONLY)
LIKE '%S';  IT WILL BE GIVE THE BEFORE EVERY THING ( ENDING WITH s)
LIKE '%S%'; IT WILL BE GIVE BEFORE AND AFTER S EVERY THING (IN BETWEEN S)
LIKE 'S%N';  STARTING WITH S AND ENDING WITH N
LIKE '________'; IT WILL BE GIVE THE SPACE CHARATER ONLY (UNDERSCORE)

-- SELECT * FROM employees WHERE TO_CHAR(HIRE_DATE,'MM') ='02';
SELECT * FROM EMPLOYEES WHERE TO_CHAR(HIRE_DATE,'dd')= '10';
SELECT * FROM EMPLOYEES WHERE TO_CHAR(HIRE_DATE,'YYYY') ='2007';
SELECT * FROM EMPLOYEES WHERE TO_CHAR(HIRE_DATE,'FMDAY')='MONDAY'; 
SELECT * FROM DUAL;
SELECT * FROM employees WHERE TO_CHAR(HIRE_DATE,'MM') ='02';
SELECT * FROM EMPLOYEES WHERE TO_CHAR(HIRE_DATE,'dd')= '10';
SELECT * FROM EMPLOYEES WHERE TO_CHAR(HIRE_DATE,'YYYY') ='2007';
SELECT * FROM EMPLOYEES WHERE TO_CHAR(HIRE_DATE,'FMDAY')='MONDAY'; 
===============================================================================
PATTERN MATCHING  WE CAN USE LIKE 
SELECT * FROM EMPLOYEES WHERE FIRST_NAME LIKE 'S%';
SELECT * FROM EMPLOYEES WHERE FIRST_NAME LIKE'%s';
SELECT * FROM EMPLOYEES WHERE FIRST_NAME LIKE'%an%';
SELECT * FROM EMPLOYEES WHERE FIRST_NAME LIKE 'S%n';
SELECT * FROM EMPLOYEES WHERE FIRST_NAME LIKE '_______';
SELECT * FROM EMPLOYEES WHERE FIRST_NAME LIKE '_a____';
SELECT * FROM EMPLOYEES WHERE FIRST_NAME LIKE'_a_t___';
SELECT * FROM EMPLOYEES WHERE SALARY LIKE '_500';--- 

--ORDER BY ---
-- HERE ONE DIFFERENT IS THER THAT CAPITAL LETER WILL BE GIVE 'A' AND AFTER SMALL 'a'
-- IT WILL GIVE THE DEFAULT ASC 

SELECT * FROM EMPLOYEES ORDER BY FIRST_NAME ; 
SELECT * FROM EMPLOYEES ORDER BY FIRST_NAME DESC;
SELECT * FROM EMPLOYEES ORDER BY FIRST_NAME ASC;
SELECT * FROM EMPLOYEES ORDER BY SALARY DESC ,HIRE_DATE;
SELECT * FROM EMPLOYEES ORDER BY 8;
--(8 COLUMN WILL BE ASC)
SELECT * FROM EMPLOYEES ORDER BY 6 DESC,8; 
--(6 DESC ,8 IT WILL BE GIVE THE 6 ASC AND 8 WILL ASE)
SELECT * FROM EMPLOYEES ORDER BY 3;
--- HERE 3 IS THE COLUMN WILL BE GIVE THE ASC 
--
;
---------------------------------
-- SINGLE ROW FUNCTION  IN ORACLE;
SELECT FIRST_NAME ,UPPER(FIRST_NAME),LOWER(FIRST_NAME),INITCAP(FIRST_NAME),LENGTH(FIRST_NAME)
,REVERSE(FIRST_NAME) FROM EMPLOYEES;
SELECT DEPARTMENT_ID,LOWER(DEPARTMENT_ID) FROM EMPLOYEES;
 
 
 select * from employees;
select first_name ,reverse(first_name) from employees;
select * from employees where first_name='John' or first_name='JOHN' OR first_name='john';
----------------------------------------
---substr function:
substr(string,from_position,no_of_char);
substr(string,from_position);
select substr('wellcom to india!!!!',12,5) from dual;
select substr('Welcom to India!!!!',10) from dual;
select substr('welcom to India!!!!!',-8) from dual;
select substr('welcom to India!!!!!!',-8,5) from dual;
select job_id,substr(job_id,1,4) from employees;

Select DEPARTMENT_id,count(FIRST_NAME),sum(SALARY) Total_Salary from employees group by DEPARTMENT_id order by Total_Salary desc;
----------------------------------------------------
---Instr will return the position of the character

select Instr('corporate floor' ,'r') from dual;
select instr('CORPORATE FLOOR','AB') FROM DUAL;
----FROM 3RD POSITION 2ND OCCURANCE
SELECT INSTR('CORPORATE FLOOR','OR',3,2) FROM D UAL;
SELECT INSTR('CORPORATE FLOOR','OR',3,4) FROM DUAL;
=================================================================
-----------------------------------------------------------------
--The SUBSTRING() function extracts some characters from a string.
--SUBSTRING(string, start, length)

SELECT SUBSTR('WHEN SYSTEM DIALOG PROMPTS, CLICK OPENzOOM MEETING.',1,INSTR('WHEN SYSTEM DIALOG PROMPTS, CLICK OPEN ZOOM MEETING.',',')-1 FROM DUAL;
select substr('insurance~200',1,9) from dual;
SELECT  SUBSTR('WELCOME TO CHENNAI CHROMPET',INSTR('WELCOME TO CHENNAICHROMAPET',' ',1,3) ) FROM DUAL;
SELECT SUBSTR('HR~430',1,INSTR('HR~430','~')-1) FROM DUAL;
select substr('insurance~200',1,9) from dual;
select instr('insurance~200','~') from dual;
select substr('insurance~200',1,instr('insurance~200','~')-1) from dual;
select substr('Khadir~245',1,instr('Khadir~245','~')-1) from dual;
-- in there we will be get the before ~ charaters only -1
select substr('Khadir~245',instr('Khadir~245','~')+1) from dual;
-- in the we will be get only the number beacuse +1 
select substr('kammukhadirbasha@gmail.com',1,instr('kammukhadirbasha@gmail.com','@')-1) from dual;
--in this we wil get the name only
select substr('kammukhadir_basha@gmail.com',1,instr('kammukhadir_basha@gmail.com','@')+1) from dual;
------------
select Lpad('welcome',15,'*') from dual;


-----------------------------------
SELECT  SUBSTR('WELCOME TO CHENNAI CHROMPET',INSTR('WELCOME TO CHENNAICHROMAPET',' ',1,3) ) FROM DUAL;
SELECT SUBSTR('HR~430',1,INSTR('HR~430','~')-1) FROM DUAL;
select substr('insurance~200',1,9) from dual;
select instr('insurance~200','~') from dual;
select substr('insurance~200',1,instr('insurance~200','~')-1) from dual;
select substr('Khadir~245',1,instr('Khadir~245','~')-1) from dual;
-- in there we will be get the before ~ charaters only -1
select substr('Khadir~245',instr('Khadir~245','~')+1) from dual;
-- in the we will be get only the number beacuse +1 
select substr('kammukhadirbasha@gmail.com',1,instr('kammukhadirbasha@gmail.com','@')-1) from dual;
--in this we wil get the name only
select substr('kammukhadir_basha@gmail.com',1,instr('kammukhadir_basha@gmail.com','@')+1) from dual;
------------
select Lpad('welcome',15,'*') from dual;
---********welcome
select Rpad('Welcom',15,'*') from dual;
---Welcom*********
select rpad(lpad('welcom',15,'8'),30,4) from dual;
---output 888888888welcom444444444444444

select salary,rpad(salary,6,'*') from employees;
---24000	24000*
select salary,lpad(salary,6,'*') from employees;
---24000	*24000
select salary,rpad(lpad(salary,6,'*'),7,0) from employees;
---24000	*240000

------------------------------
---ltrim,rtrim,trim ( remove the space )
select Ltrim('       welcom   *') from dual;
---welcom   * it  will remove the left side space 
select rtrim(' * welcom       ') from dual;
-- * welcom i twill remove the right side space
select trim ('   kha dir  ') from dual;
----kha dir trim will not remove the (kha dir)
select ltrim(rtrim('000000032434', '023425'),'0943') from dual;
---------------------------------------------------------------------
--The REPLACE() function replaces all occurrences of a substring within a string, with a new substring.
-- REPLACE(string, old_string, new_string)
select replace('JACK and JUE','J','BL') from dual;
----BLACK and BLUE
select  replace(JOB,'MANAGER','BOSS') from employees;

select * from employees;
select phone_number,replace(phone_number,'.',null) from employees;
----515.123.4567	5151234567
select phone_number,'+9-'||replace(phone_number,'.',null) from employees;
----515.123.4567	+9-5151234567
select Hire_date,replace(Hire_date,'-',null) from employees;
---17-06-03	170603
select phone_number,'+91'||'-'||substr(replace(phone_number,'.',null),1,5)||'-'||substr(replace(phone_number,'.',null),6,5) from employees; 
----515.123.4567	+91-51512-34567
select phone_number,'+91'||substr(replace(phone_number,'.',null),1,5)||'-'||substr(replace(phone_number,'.',null),6,5) from employees;
----515.123.4567	+9151512-34567
select phone_number,substr(replace(phone_number,'.',null),1,5)||'-'||substr(replace(phone_number,'.',null),6,5) from employees;
---515.123.4567	51512-34567
select phone_number,substr(replace(phone_number,'.',null),1,5)||'-'||substr(replace(phone_number,'.',null),6,5) from employees;
---515.123.4567	51512-34567
select phone_number,substr(replace(phone_number,'.',null),1,5)||'-'||substr(replace(phone_number,'.',null),6,5)as phone from employees;
--PHONE_NUMBER  PHONE
--515.123.4567	51512-34567

--------------------------------------------------------------------
--The TRANSLATE() function returns the string from the first argument after the characters specified in the second argument 
-- are translated into the characters specified in the third argument.--
---TRANSLATE(string, characters, translations)
