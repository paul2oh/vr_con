����Ŭ �����

�������� ojs
pass 3213

sys
1

1.www.oracle.com

http://127.0.0.1:8080/apex/

2.buie4532@naver.com
  Kim05******

3.oracle database 11g expresions �ٿ�

4.�¾��� ����.(�ȵǸ� �����) ��� �˱⽱�� 1111

5.Application express Ŭ��

6.sys�� �α��� ����� �����ߴ���. 1111

7.���̵� ���� dev ��� 1111

WORKSPACE HR 
ID HR
PASS 1111


si�� ���ο�� ã�°�
-----------------------------------------------------------------

1�� ����

- HomeSQL > Workshop > Object Browser > tables > EMP

(������ ���̽� ���ϴ»���� ���� ���̺� �ִ� �ֵ��� �����ͼ� ����.)


- HomeSQL > Workshop > SQL Commands > desc emp > Run Ŭ��
 (���� ����)


- Ŀ�ǵ� �Է� ���(SQL plus)

 ���� > SQL Command line > connect > dev > 1111(�Ⱥ���) > desc emp; 
 (���� ����)

-----------------------------------------------------------------

���� ������ �۾��� Insert , Delete , Update , Select 4���� �۾��� �Ѵ�.
�� �۾����� Crud ��� �Ѵ�.

EMP�� DEPT �ֵ��� ���� ����Ǿ��ִ�.  �����Ҳ��� ������� ������Ʈ�� �����ϴ°� ����

DEPTNO �� ���ִ� ���ڵ�� ������ �ɸ� �� ���ڷ� ���Ǿ߾�ߵ�
Ex(10/20/30/40)

----------���� ��� ����� �ʹ�.----------
�����ϰ� ����

-----------summery--------

SELECT �÷���
FROM   ���̺��
WHERE  ���ǽĸ�(������)
       (<=>)
       (and,BETWEEN,OR,IN)
ORDER BY (DESC,ASC) -> ������ �Ѵ� desc,asc �Է� ���ϸ� default�� asc
--------------------------


-EMP > insert
Insert INTO ���̺�� (�÷���,...)
            Values(��1,...)

-----HR ����------

������ ��ȸ Select ��

1)�⺻ ����: select �÷��� From  ���̺� ��

2)��ü �÷� ��ȸ: Select *(*�� ���� �ҷ��´�) from employees

3)Ư�� �÷� ��ȸ: Select �÷�1,�÷�2,... From employees

4)�÷��� ���� ���: SELECT �÷��� AS ����
                  FROM ���̺��

5)�÷��� ���� ���2: SELECT �÷��� AS "�� ��"
                  FROM ���̺��

6)�÷��� ���� ���3: 
                    Select �÷��� "����"
                    From ���̺��

7)�ߺ� ���� �����ϰ� ���: 

select DISTINCT(department_id) From employees


8)�����Ͽ� ����ϱ�: SELECT department_id FROM employees ORDER BY department_id DESC

	SELECT �÷���
	FROM ���̺��
	ORDER BY �÷��� ASC(��������) �Ǵ� DESC(��������)

9)������ȸ

	SELECT �÷���
	FROM ���̺��
	WHERE Salary >= ���ǹ� 
	'��¥'(mm/dd/yyyy) �� '����' (���� ������ ������ ��ҹ��� �����ϴ� ����)
---------------------------------------------------------------------------------
�������� �з�

	1.���������
	  -���, ���� ��ȣǥ�� : +,-
	  -��Ģ����: +, - ,* ,/

	2. ���տ�����
	  -�ΰ��� ���ڿ��� ����:||

	3.���� ������
	  -������: UNION
	  -�����տ� ���� ������: Union all
	  -������: Intersect
	  -������: Minus

 	4. ��� �� ������: >,<,>=,<=

	5. �� ������
	   ����: NOT
	   ���� ����: AND
	   �κ� ����: OR

	6. SQR �� ������
	  Ư�� ���ڿ� ���� ��: LIKE
				%(���ϵ�ī��): ������ �𸦶�
				_: ������ ������ �˶�
	  List ��: IN

�������� �켱 ���� : ��� �񱳿�����  > AND > OR
		     ���� ������ ��� �¿��� ��� ���� ��ȣ�� �׻� �켱
---------------------------------------------------------------------------------

	����1. Job_id�� 'it_prog'�� ������� first_name, salary, �μ���ȣ ���
	(�̸��� ������������ ����)

		SELECT job_id, first_name, salary, department_id "�μ���ȣ"
		FROM employees
		WHERE job_id = 'IT_PROG' 
		Order by first_name

	����2. 2005�� ���Ŀ� �Ի��� �������
	       first_name, salary, �μ���ȣ ���
	       (�Ի����� �������� ����)	*01/01/2005

		SELECT hire_date, first_name, salary, department_id "�μ���ȣ"
		FROM employees
		WHERE hire_date >= '01/01/2005'
		Order by hire_date;

	����3. employee_id�� first_name�� �������� �����ϰ� 
		'�������'��� �������� ���

		SELECT employee_id || ' ' || first_name "�������"
		FROM employees


	����4. 2005�⵵�� �Ի��� �������
	[LIKE]	first_name, salary, �Ի���, �μ���ȣ ���
	[WHERE]	(�Ի����� �������� ����) 
		
		SELECT hire_date "�Ի���", first_name, salary, department_id "�μ���ȣ"
		FROM employees
		WHERE  hire_date >= '01/01/2005' 
		AND hire_date < '01/01/2006'
		Order by hire_date;
	
	����5. salary�� 10000���� 20000������
		first_name, job_id,salary �˻�
		(salary�� ����) AND ������, BETWEEN������
	
		SELECT job_id, first_name, salary
		FROM employees
		WHERE salary >= 10000 
		AND salary <= 20000
		(�̰͵� �� WHERE salary BETWEEN 10000 AND 20000)
		Order by salary;

	����6. department_id�� 30, 60, 90�� ������� 
		department_id, first_name ��� (OR ������, IN ������)

		SELECT     department_id, first_name
		FROM       employees
		WHERE      department_id = 30 
		OR         department_id = 60
		OR         department_id = 90;
		(�̰͵� �� WHERE department_id IN(30,60,90)
		
	����7. last_name�� K�� �����ϴ� �������
		last_name, first_name, salary ���

		SELECT     last_name, first_name, salary
		FROM       employees
		WHERE      last_name LIKE 'K%'

	����8. last_name�� K�� �����ϰ� , g�� ������ 4������ �������
		last_name, first_name, salary ���

		SELECT     last_name, first_name, salary
		FROM       employees
		WHERE      last_name LIKE 'K__g'

	����9. phone_number�� ��� ��ȣ�� 500����� �����ϴ� �������
		first_name, phone_number ���

		SELECT first_name, phone_number
		FROM employees
		WHERE phone_number LIKE '%.5%.%';

	����10. phone_number�� ��� ��ȣ�� 500������ �ƴ� �������
		first_name, phone_number ���

select first_name , phone_number
from employees
where phone_number <> '___.500.____'


--------------------------------16/12/02---------------------------------------


	IS NULL        -> ���� ������
	IS NOT NULL	: NULL �� ��ȸ   -> ������

	����1. salary�� commission_pct�� ���ؼ�	
		���ʽ��� ����Ͽ�
		first_name, job_id, salary, ���ʽ� ��� 
		(��, commission_pct�� �ִ� �ڷ�鸸 ���)			

		SELECT   First_name, job_id, salary ,salary * commission_PCT as ���ʽ�
		From     employees
		WHERE    Commission_pct IS NOT NULL


	����2. CEO�� employee_id,last_name, manager_id, salary ���


		SELECT   employee_id,last_name, manager_id, salary
		From     employees
		WHERE    manager_id IS NULL



	����3. department_id�� 100�̳� 50�� ���ϴ�
		����� �߿��� salary�� 5000 �̻��� �ڷ�
		last_name, salary, job_id, department_id ���
		��, department_idf�� ������������ �����ϰ�, 
		���� department_id�� ��� Salary�� ������������ ����

		SELECT   last_name, salary, job_id, department_id
		From     employees
		WHERE    (department_id = 50 OR department_id = 100)
		AND      Salary >= 5000
		ORDER BY department_id, Salary DESC

	����4. salary�� 10000�̻���
		department_id�� 80,90�� �������
		first_name, salary, department_id ���

		SELECT   first_name, salary, department_id
		From     employees
		WHERE    Salary >= 10000
		And      department_id = 80
		
		UNION all

		SELECT   first_name, salary, department_id
		From     employees
		WHERE    Salary >= 10000
		And      department_id = 90


	����5. department_id�� 70 �̻��� �ڷ��
		70�̸��� �ڷ��� salary�� ���� �ڷ� ���

SELECT   salary
From     employees
WHERE    department_id >= 70

intersect

SELECT   salary
From     employees
WHERE    department_id < 70


	����6. department_id�� 100���� �ڷ��� salary�� 
		������ ��� salary ���


SELECT   salary
From     employees

Minus

SELECT   salary
From     employees
WHERE    department_id =100

-------------------------------------------------------------------------------
3.������ �Լ�

1. ��� ���ڸ� �빮�ڷ� ��ȯ: UPPER

2. ��� ���ڸ� �ҹ��ڷ� ��ȯ: LOWER

3. ���ڸ� �ܾ�� ù���ڴ� �빮��
   �������� �ҹ��ڷ� ��ȯ : INITCAP

4. ���ڿ� ����: CONCAT

5. ���ڿ��� Ư���κ� ����:  SUbSTR (�÷���, ���ۼ���, �������)

6. ���ڿ��� ���� ���: LENGTH(�÷���)

7. Ư�� ���ڿ��� ���� ��ġ�� ���� : INSTR(�÷���,ã�¹���,����,��°)

8. ���� ���� �ڸ� ä�� : LPAD

9. ������ ���� �ڸ� ä�� : RPAD

10. ���� ���� ���� :  LTRIM

11. ������ ���� ���� : RTRIM

12. ����, ������ ���� ���������� ���� : TRIM

------------

����1. UPPER Ȱ��
                  last_name�� ��� �빮�ڷ� ��ȯ
	job_id�� ��� �ҹ��ڷ� ��ȯ,
	email�� ù���ڸ� �빮�ڷ� ��ȯ

SELECT   UPPER(last_name), LOWER(job_id), INITCAP(email)
From     employees


����2.  CONCAT Ȱ��
	last_name, salary�� ���
           ����� ������ ' ~~~�� ����: ~~~~��'���� ���

SELECT     last_name , salary,
CONCAT  (CONCAT (last_name, '�� ���� : '),CONCAT (salary*12, '�޷�')) "����� ����"
From         employees


����3.  SUbSTR Ȱ��1
	hire_date�� 12���� �������
	last_name, hire_date ���

SELECT    last_name, hire_date
From       employees
WHERE   SUBSTR(hire_date,1,2) = 12

����4.  SUbSTR Ȱ��2
	hire_date�� 2005�� �������
	last_name, hire_date ���

SELECT  last_name, hire_date
From    employees
WHERE   SUBSTR(hire_date,7) = 2005


����4-1 INSTR�� Ȱ��
	hire_date�� 2005�� �������
	last_name, hire_date ���


���� 5. http://127.0.0.1:8080/index.jsp���� 
           ip�� ����

SELECT  SUBSTR('http://127.0.0.1:8080/index.jsp',
        INSTR('http://127.0.0.1:8080/index.jsp','/',1,2)+1,
        INSTR('http://127.0.0.1:8080/index.jsp','/',1,3)-INSTR('http://127.0.0.1:8080/index.jsp','/',1,2)-1)
From    dual

����6. salary�� 10000 ������ �������
           salary�� 7�ڸ��� ���
          (��, ������ �ڸ����� *ǥ��)

SELECT  first_name,salary,
        LPAD(salary,7,'*'),
        RPAD(salary,7,'*')
From    employees
WHERE salary <= 10000


����7. employee_id �� ���ʿ� 1�� ����, �������� 1�� ����

SELECT  employee_id ,
        LTRIM(employee_id,1),
        RTRIM(employee_id,1)
From    employees

����8. job_id �÷��� IT_PROG�� ��� IT_ENGINEER�� �ٲ�

SELECT  job_id,
        Replace(job_id,'IT_PROG','IT_ENGINEER')
From    employees
WHERE job_id = 'IT_PROG'

����8-1 last_name �� At***son���� ǥ��
replace ���
---------------------------------------------------------------------

���ڰ��� �Լ�
1.�ݿø� : ROUND
2.����: TRUNC
3.CEIL  ���ڸ� �ø��ϰ� �Ҽ��� ����
4.FLOOR ���ڸ� �����ϰ� �Ҽ��� ����

����1.   Salary�� ���ʽ��� 0.33333�� ���Ͽ� �ݿø�

SELECT first_name, salary,
       salary*0.333333,
       Round(salary*0.33333,-1),
       Round(salary*0.33333,2),
       Round(salary*0.33333,1),
       Round(salary*0.33333)
From    employees

����2. Salary�� ���ʽ��� 0.33333�� ���Ͽ� �ݿø�
         (��, 1000���� 9999���� ��Ÿ����)


SELECT first_name, salary,RPAD(round(salary*0.33333,2),7,'0')
      
From    employees
WHERE ROUND(salary*0.33333,2) BETWEEN 1000 AND 9999



����3.
SELECT first_name, salary,
       salary*0.333333 Bonus,
      salary/3 DIV,
      MOD(salary,3)MOD,
      ceil(salary*0.33333)ceil,
      Floor(salary*0.33333)Floor

From    employees

4
����3-1. last_name�� �������� ������� ǥ��

SELECT first_name, salary, concat(Trunc((sysdate-hire_date)/365),' ����') AS "�ټ� ���"
      
From    employees



-----------------------------

 ��¥ ���� �Լ�

1. Months_BETWEEN Ư�� �γ�¥������ ������
2.ADD_MONTHS  ������ ��¥�� ��� ���� ��¥
3.NEXT_DAY Ư�� ��¥���� ���� ���Ϥ�
4. LAST_Day  ������ ���� ������ ��¥


����1. last_name�� �������� �ٹ� ���� �� ǥ��
��.1-1
SELECT sysdate, Hire_date,
       trunc(MONTHS_between(sysdate, Hire_date)) Months1,
       Trunc((sysdate-HIre_date)/30) Months2,
       Trunc((sysdate-HIre_date)/31) Months2,
       Trunc((sysdate-HIre_date)/365*12) Months2
From employees

����2. hire_date�� �Ի� �� 6���� �Ǵ� ��¥ ���

SELECT hire_date,
       ADD_MONTHs(hire_date,6)
From employees

����3. �̹� �� ������� ��¥ ���

SELECT SYSDATE, NEXT_DAY(sysdate,'saturday')
From employees

 ����4.�̹����� ������ ��¥

SELECT SYSDATE, LAST_Day (sysdate)
From employees

����5. �ټ� ���� ���� 120���� �̻��� �������
          last_Name, job_id, �ټ� ������ ǥ��

SELECT last_name,job_id,
 trunc(MONTHs_BETWEEN(sysdate,Hire_date)) "�ټ� ������"
From employees
WHERE trunc(MONTHs_BETWEEN(sysdate,Hire_date)) >= 120

---------------------------------
�� ��ȯ ���� �Լ�
1. To_char         ����/��¥�� ���ڷ� �ٲٴ°�
	19981231  => 19,981,231
	12/31/1998  => 1998�� 12�� 31��

	���ڸ� ���ڷ� ��ȯ �ÿ� ���Ǵ� ���� ���
	9      : �Ϲ����� ���� ǥ��
	0      : ���� ���ڸ��� 0���� ä��
	$      : dollar�� ǥ��
	L      : ���� ��ȭ ����
	.       : �Ҽ��� ǥ��
	,       : õ ���� ǥ��

       ��¥�� ���ڷ� ��ȯ �ÿ� ���Ǵ� ���� ���
       YYYY: 4�ڸ� ���� ǥ��
       MM: 2�ڸ� ���� ǥ��
       DD: 2�ڸ� �Ϸ� ǥ��
       HH, HH24  : 1~12, 0~23 �ð� ǥ��
       MI   :  �� ǥ��
       SS   :  �� ǥ��

2. To_number   ���ڸ� ���ڷ� �ٲٴ� ��


3. To_date         ���ڸ� ��¥�� �ٲٴ� ��


����1. Salary�� �� �ڸ����� �޸��� �����Ͽ� ǥ��

SELECT last_name, salary,
       To_char(salary*12*10,'999,999,999.99$') "10��ġ ����",
       To_char(salary*12*10,'000,000,000.00$') "10��ġ ����"
FROM employees

���� 2. hire_date�� ��/��/���� ���·� ���
           ex) 2003/12/31

SELECT last_name,hire_date,
       To_char(hire_date,'yyyy/mm/dd')
FROM employees

����3. '20161231'�� ���ڷ� ��ȯ�Ͽ� ���

SELECT TO_number('20161202','YYYY/mm/dd')
From dual

����4. '20161231'�� ��¥�� ��ȯ�Ͽ�  2016/31/31�� ���·� ���

SELECT TO_DATE('20161202','YYYY/mm/dd')
From dual


--------------------------------------------------------------------------

�پ��� �Ϲ� �Լ���

1.NULL ���� Ư�� ������ ��ȯ: NVL(��絥���� Ÿ��), NVL2, NULLIF

nvl(a,b) : a�÷��� null�� ��쿡 b �� ���
nvl2(a,b,c) : a�÷��� ���� �����ϸ� b ���, null�̸� c �� ���
nullif(a,b) : a, b ���� �����ϸ� null ��� �ٸ��� , a �� ���





���ǿ� ���� ���Ͽ� �ش��ϴ� ���ǿ� �˸��� ���� ��ȯ
 (IF,ELSE�� ����)
2.DECODE  : equal ��, ���ǹ��� ���� ����
3.case         : Range ��,���ǹ��� �����


 

����1. commission_pct�� ���� ����� ��� 3%�� �����Ͽ�
           last_name, salary, bonus�� ���

����2. commission_pct�� ���� ����� ��� 3%,
            ������ �־��� ��쿡�� 5%�� �����Ͽ�
            Last_name, salary, bonus�� ���

SELECT last_name, salary,
       salary*NVL2(commission_pct,0.05,0.03) BOUNUS
FROM employees


����3. first_name�� last_name�� ���ڿ� ���̸� ���
            �� ���ڿ��� ���̸� ���Ͽ�
            ���������� first_name�� ���, ������ NULL�� ó��

SELECT first_name,last_name, length(first_name),length(last_name), 
NULLIF(length(first_name),length(last_name))
FROM employees




����4. department_id�� 10�̸� 'team1',
             20�̸� 'team2', 30�̸�  'team3',
            ��������  'team0'�� ó��

4-1. DECODE
SELECT first_name, department_id,
       DECODE(department_id,
       '10', 'team1',
       '20', 'team2',
       '30', 'team3',
       'team0') TEAMS
FROM employees
WHERE department_id <= 40

4-2. CASE
SELECT first_name, department_id,
       CASE department_id WHEN 10 THEN 'team11'
                          WHEN 20 THEN 'team22'
                          WHEN 30 THEN 'team33'
                          ELSE         'team00'
       END TEAMS
FROM employees
WHERE department_id <= 40

����5. departmen_id�� 10~50�̸� 'teamA',
            60~100�̸� 'teamB', 110~150�̸� 'teamC',
           �������� 'teamX'�� ó��

����6. salary�� 10000�̸��̸� 50%, 
                           20000 �̸��̸� 30%,
                           20000 �̻��̸� 10%�� ���ʽ���
            ����Ͽ� last_name, salary, bounus ���

6-1.CASE
SELECT first_name, salary, 
       CASE  WHEN salary<10000   THEN salary*0.5
             WHEN salary<20000   THEN salary*0.3
       ELSE        salary*0.3
       END BONUS
FROM employees

6-2.DECODE
SELECT first_name, salary, 
       DECODE(salary,
              '<10000', salary*0.5,
              '<20000', salary*0.3,
               salary*0.3) BONUS
FROM employees

---------------------------------------------------


12.05

SELECT last_name,salary,
      DECODE(TRUNC(SALARY/10000),
               0, salary * 0.5,
               1, salary * 0.3,
               salary* 0.1
               ) AS BONUS

���� �ϳ��� �ִ°� �ƴϴ�

��¥�����Լ�
����ȯ ���� �Լ�
NULL��
DECODE ��Ȯ��
CASE ����



�׷��Լ� :���� ���� �����͸� �Ѳ����� ó��

1. COUNT ( , ) ���� �����  ��ü���ڵ� ����
2. AVG  ���
3. SUM �հ�
4. MIN �ּ�
5. MAX �ִ�

* - ALL

1. SELECT COUNT(*)
      FROM employees

   SELECT COUNT(*), COUNT(commission_pct)
      FROM employees

����1. job_id�� 'IT'�� ���Ե� �������� �� ��� 
   WHERE �� ����

SELECT JOB_ID
FROM employees
WHERE JOB_ID LIKE '%IT%'


����.2 JOB_ID�� 'IT'�� ���Ե� ������ �߿���
       COMMISSION_PCT�� �ִ� �������� �� ���
SELECT COUNT(commission_pct)
FROM employees
WHERE JOB_ID LIKE '%IT%'

����3. job_id�� 'IT'�� ���Ե� �������� �޿� ��հ� �հ���
       ��, ��� ��� ��, NULL���� �ִ� ��� 0���� �����Ͽ� ����

SELECT AVG(salary) ���, SUM(salary) �հ� 
FROM employees
WHERE JOB_ID LIKE '%IT%'


SELECT AVG(NVL(salary,0)) ���, SUM(salary) �հ� 
FROM employees
WHERE JOB_ID LIKE '%IT%'

����4. ����ū salary�� ���� ���� salary ���
SELECT MAX(salary), MIN(salary),
       MAX(hire_date), MIN(hire_date)
FROM employees
WHERE JOB_ID LIKE '%IT%'

===================================

�׷� �Լ��� Ư�� ���� ����


1. GROUP BY
2. HAVING


����1. �� department_id ����
       ��� �޿� ���
       AVG
SELECT department_id,  AVG(salary)
FROM employees
GROUP BY department_id
ORDER BY department_id

SELECT department_id, job_id, AVG(salary)
FROM employees
GROUP BY department_id, job_id
ORDER BY department_id


SELECT department_id, job_id, COUNT(JOB_ID), AVG(salary)
FROM employees
GROUP BY department_id, job_id
ORDER BY department_id

SELECT�� GROUP BY ��ġ �Ұ�

����2. salary�� �հ谡 20000 �̻��� �μ��� department_id, �ο���, salary�հ� ���

SELECT department_id, job_id, COUNT(*), SUM(salary)
FROM employees
WHERE SUM(salary) >= 20000
ORDER BY department_id
-> �����߻�

* GROUP BY �� WHERE�� ���� ��� �Ұ� -> WHERE ��ſ� HAVING ����Ұ�(������ �׷��Լ��� �ɸ����� ���)

SELECT department_id, COUNT(*), SUM(salary)
FROM employees
HAVING SUM(salary) >= 20000
GROUP BY department_id
ORDER BY department_id


����3. salary�� ����� 10000 �̻��� department_id, ��� salary���

SELECT department_id,  AVG (salary)
FROM employees
HAVING AVG(salary) >= 10000
GROUP BY department_id
ORDER BY department_id


GROUP BY�� HAVING �� ������ ����� ����


����4. �� department_id ���� job_id�� 2�� �̻��� ���ڵ��� department_id, job_id, �ο��� ���

SELECT department_id, job_id, COUNT(*)
FROM employees
HAVING COUNT(*) >=2
GROUP BY department_id, job_id
ORDER BY department_id


����5. �� department_id ���� job_id�� 'IT_PROG'�� ������� ��� �޿� ���

SELECT department_id, job_id, AVG(salary)
FROM employees
HAVING job_id = 'IT_PROG'
GROUP BY department_id, job_id
ORDER BY department_id

OR

SELECT department_id, job_id, AVG(salary)
FROM employees
HAVING job_id LIKE 'IT_PROG'
GROUP BY department_id, job_id
ORDER BY department_id


�׷��� �ƴϹǷ�

SELECT department_id,  AVG(salary)
FROM employees
WHERE job_id = 'IT_PROG'
GROUP BY department_id
ORDER BY department_id


����6. �� department_id ���� job_id�� 60�̻��� ���ڵ��� department_id, job_id, �ο���, salary�� �հ� ���


SELECT department_id, job_id, COUNT(*), SUM(salary)
FROM employees
where department_id >= 60
GROUP BY department_id, job_id
ORDER BY department_id



=======================================

������ ���� �Լ���
1. ROLLUP (������ �κ��հ� ����ϴ�)
2. CUBE - ��ü �Ѱ��� �����ͱ��� ����Ҽ� �ִ�.
3. GROUPING SETS �� ���պ��� �׷�ȭ


����1. �� department_id ���� job_id�� 60�̻��� ���ڵ��� department_id, job_id, �ο���, salary�� �հ� ���
       ��, �� �����͵��� �Ұ赵 ���

SELECT department_id, job_id, COUNT(*), SUM(salary)
FROM employees
where department_id >= 60
GROUP BY ROLLUP(department_id, job_id)
ORDER BY department_id

����2. �� department_id ���� job_id�� 60�̻��� ���ڵ��� department_id, job_id, �ο���, salary�� �հ� ���
       ��, �� �����͵��� �Ұ� �� ��ü �Ѱ� �� ���


SELECT department_id, job_id, COUNT(*), SUM(salary)
FROM employees
where department_id >= 60
GROUP BY CUBE(department_id, job_id)
ORDER BY department_id


����3. department_id �� 100�̻��� ���ڵ��� department_id,manager_id, manager_id �� �ο��� ���

SELECT department_id, manager_id, COUNT(*)
FROM employees
where department_id >= 100
GROUP BY department_id,manager_id
ORDER BY department_id

SELECT department_id, manager_id, COUNT(*)
FROM employees
where department_id >= 100
GROUP BY ROLLUP(department_id,manager_id)
ORDER BY department_id


SELECT department_id, 
       LISTAGG(first_name, ' | ')
       WITHIN GROUP(ORDER BY hire_date)
FROM employees
WHERE department_id >= 100
GROUP BY department_id



======================================================

DDL ; Data Definition Language
������ ���� ���

CREATE, DROP, ALTER, TUNCATE, RENAME, COMMENT


1. CREATE TABLE : ���ο� ���̺� ����
2. DROP TABLE : �⺻ ���̺��� ���� �� ��� �� ����
3. ALTER TABLE : �⺻ ���̺� ����
                 �÷��� �߰�, ����, ����
                ���� ������ �߰�, ����, Ȱ��ȭ/��Ȱ��ȭ
4. TRUNCATE: ���� ���̺��� ������ ����� ��� �� ����
5. RENAME : ���̺� �̸� ����
6. COMMENT : ���̺��̳� �÷��� �ּ��� �ޱ�


��� ��Ģ
  ��ü�� �ǹ��� �� �ִ� ������ �̸� ���
  ���̺��� �÷����� �ݵ�� ���ڷ� ����
  (�ִ� 30�ڱ��� ���)
  A~Z, a~z, 0~9, _, $, # �� ��� ����
  ���ϸ� �ߺ� �Ұ�
  ����Ŭ�� ����� ��� �Ұ�

ex)10_DEPT  ���ڷ� �����Ͽ� ���Ұ�
   S-SALES  -�� ��� �Ұ�
   ORDER  ����Ŭ ������ ���Ұ�



���̺� ����
CREATE TABLE ���̺��(��Ű��.] ���̺��(
      �÷���1 ������Ÿ��[�⺻ ����],
      �÷���2 ������Ÿ��[�⺻ ����],
      ...

)
  
   ��Ű��      : ��ü�� �������� ���̺��� ������ �ǹ�
   ������ Ÿ�� : �÷��� ���� �������� ������ ũ��
   �⺻����    : ������ �Է�(INSERT)�ÿ� ���� �⺻��
                 Ư�� ���� �Է����� �ʾ��� ���
                 NULL�� ��ſ� �⺻ ���� �ڵ� �Է� ��


������ Ÿ��---------------------------
CHAR(size)       : ���� ���� ���� ������
                   �Էµ� �ڷ��� ���̿� ������� 
                   ������ ���̸�ŭ ���� ���� ����
                   �ּ� ũ��� 1
VARCHAR2(size)   : ���� ���� ���� ������
                   ���� �Էµ� ���ڿ��� ���̸�ŭ 
                   ���� ���� ����
                   �ּ� ũ��� 1 �ִ� 4000bBYTES
NUMBER           : �ְ� 40�ڸ����� ���� ����
                   �Ҽ����̳� ��ȣ�� ���̿� ���� X
NUMBER(w)        : �ִ� 38�ڸ����� ���� ����
NUMBER(W,D)      : d�� �Ҽ��� ���� �ڸ���
DATE             : ��¥ 


����1. T_MEMMO��� �޸� ���̺� ����('_'�� �ַ� ����Ѵ�
�޸� ��ȣ      : ���� 9�ڸ�                              : memo_no
����� ���̵�  : �������ڿ� 8�ڸ�                        : user_id 
�޸� ����      : �������ڿ� (�ѱ��� 2BYTE�� 1BYTE) 40�ڸ�: title
�޸� ����      : �������ڿ� 500�ڸ�                      : memo 
�̸�Ƽ��       : (JPG�� ���ϸ�) ���� ���ڿ� 20�ڸ�       : emoticon
��������       : ��¥                                    : reg_date 

UI ����̹��� ���� �����غ���
����Ģ ����


CREATE TABLE "T_MEMO"(
          memo_no NUMBER(9),
          user_id VARCHAR(8),
          title   VARCHAR(40),
          memo VARCHAR(500),
     emoticon VARCHAR(20),
reg_date DATE DEFAULT SYSDATE

)

CREATE TABLE  "T_MEMO" 
   (	"MEMO_NO" NUMBER(9,0), 
	"USER_ID" VARCHAR2(8), 
	"TITLE" VARCHAR2(40), 
	"MEMO" VARCHAR2(500), 
	"EMOTICON" VARCHAR2(20), 
	"REG_DATE" DATE DEFAULT SYSDATE
   ) ;

not null �� �ʼ���
���� ����, �Ǽ� precision, scale
 sequence ���� �ϳ��� ����
foreign key ���� Ű

INSERT INTO T_MEMO 
VALUES(11,
      'PAULOH',
      'ORACLE',
      'HELLO',
      'HELLO.JPG',
      SYSDATE
       
)

INSERT INTO T_MEMO 
VALUES(11,
      'PAULOH',
      'ORACLE',
      'HELLO',
      'HELLO.JPG',
      '12/06/2016'
       
)

-> ��¥�� ���ڿ��� ó�� �Ұ�, ���� ���߾ VALUES�� �Է�


INSERT INTO T_MEMO (MEMO_NO, USER_ID, TITLE, MEMO, EMOTICON, REG_DATE)
VALUES(11,
      'PAULOH',
      'ORACLE',
      'HELLO',
      'HELLO.JPG',
      '12/07/2016'
       
) 

-> T MEMO �� ���� �Է°��� ������ �ٲܼ� �ִ�.


INSERT ROWŬ�� - TEST �Ҽ� ����


------------------------------------------------------

���̺� �����ϱ�(CTAS)

1. ��� �÷��� ����
   CREATE TABLE ���̺��
   AS
   SELECT * FROM �������̺��

*�⺻���� ���簡 ���� �����Ƿ� ���� �����ؾ� �Ѵ�

2. Ư�� �÷��� ����
   CREATE TABLE ���̺��
   AS 
   SELECT �÷���1, �÷���2 , ....
   FROM ���� ���̺��

3. ������ ������ �����ؼ� ���̺� ����
   CREATE TABLE ���̺��
   AS
   SELECT *
   FROM �������̺��
   WHERE 1=0 -> ���� �ȵǴ� ���� ����
-> ���̺��� �������� ������ ���� �ȵǼ� ������ ����ȴ�



����1. employees ���̺��� ��� �÷��� �����͸� �����Ͽ� emp ���̺� ����

CREATE TABLE emp
AS
SELECT * FROM employees



����2.employees ���̺��� employee_id, first_name, department_id, job_id �÷��� �����͵鸸 �����Ͽ� emp2 ���̺� ����

CREATE TABLE emp2
AS
SELECT employee_id, first_name, department_id, job_id
FROM employees



����3. employees ���̺��� ������ �����Ͽ�
       emp3 ���̺� ����


CREATE TABLE emp3
AS
SELECT *
FROM employees
WHERE 3=1


4. ���� �÷� ���̺� ����


CREATE TABLE t_virtual(
   no1 NUMBER,
   no2 NUMBER,
   no3 NUMBER  GENERATED 
               ALWAYS AS (NO1 + NO2)

)


����4. t_virtual ���̺���
       NO1 �÷��� 10, NO2 �÷��� 20�� �Է� 


INSERT INTO t_virtual(no1,no2)
      values(10,20)




ALTER TABLE t_virtual
ADD   (no4 GENERATED ALWAYS AS ((NO1*12)+ NO2))


ALTER TABLE t_virtual
ADD   (no5 CHAR(1))


-----------------------

ALTER ���

1. ���̺� ���ο� �÷� �߰��ϱ�
   ALTER TABLE ���̺��
   ADD (�÷��� ������Ÿ��(�ڸ���))


2. ���̺��� �÷� �̸� �����ϱ�
   ALTER TABLE ���̺��
   RENAME COLUMN �����÷��� TO �����÷���


����1.  t_virtual ���̺� �������ڿ��� 10�ڸ��� ���� 
       no6 �÷� �߰�
     ��, �⺻���� '6th'���� ����

ALTER TABLE t_virtual
ADD   (no6 VARCHAR(10) DEFAULT '6TH')


INSERT INTO t_virtual(no1, no2)
VALUES(100,200)


����2.  t_virtual ���̺� NO6 �÷����� NO6TH�� ����
ALTER TABLE t_virtual
RENAME COLUMN NO6 TO NO6TH


3. ���̺� �̸� �����ϱ�

RENAME �������̺�� TO �������̺��

����3. t_virtual ���̺��� �̸��� t_nums�� ����  



4. �÷��� ������Ÿ��/ũ�� ����

   ALTER TABLE ���̺��
   MODIFY(�÷��� ũ��)


����4. t_nums ���̺��� no5 �÷��� ũ�⸦ 5�� �����ϰ�, �÷�Ÿ���� �������ڿ��� ����

ALTER TABLE t_nums
MODIFY (NO5 VARCHAR(5))



5. �÷� ����
 ALTER TABLE ���̺��
 DROP COLUMN �÷���

5.1 ����Ű�� ������ �÷� ����
ALTER TABLE ���̺��
 DROP COLUMN �÷��� CASSCADE CONSTRAINTS


6. ���̺��� �б� ����/�б� ����� ����
   ALTER TABLE ���̺�� READ ONLY/READ WRITE


����5. t_nums ���̺��� no7 �÷��� ����


ALTER TABLE t_nums
 DROP COLUMN NO7


����6. t_nums ���̺��� ��� �÷��� �����͸� t_virtual ���̺��� �����Ͽ� ����


CREATE TABLE t_virtual
AS
SELECT *
FROM t_nums


ALTER TABLE t_virtual
MODIFY (NO6 VARCHAR2(10) DEFAULT '6TH')


ALTER TABLE t_virtual
MODIFY NO6 VARCHAR2(10) DEFAULT '6TH'


����7. ���ڸ� �����ϴ� NUM �÷��� ���� 
      t_read ���̺��� �����ϰ�, 
      num �÷��� 100�� ������ ��,
      ���̺��� �б� �������� ������ ����,
      num �÷��� 200�� �����ϰ� ǥ�õǴ� �޽��� Ȯ��
-> ���پ� �ۼ�


CREATE TABLE t_read(
 num NUMBER)

INSERT INTO t_read(num)
values(100)

ALTER TABLE t_read
read only

INSERT INTO t_read(num)
values(200)




--------------------------------------------------------

���̺� ����
DROP TABLE t_read
-> �б� �����̾ ������ �����ϴ�

DROP TABLE ���̺��
���̺� ���� ��������

����1. t_read ���̺��� ����

-------------------------------------------



TRUNCATE ���


TRUNCATE TABLE ���̺��
���̺��� �����Ϳ� �ε��� �����ϰ� ������ ����

����1. t_virtual ���̺��� ��� ������ ����


truncate table t_virtual


delete > ������ �ְ� �����
where �� �Բ� ���  ������� ������ ���� ���� �ȴ�

DELETE FROM emp2
where employee_id =100


---------------------

����1. t_memo ���̺��� reg_date�� ������Ÿ���� timestamp�� ����
-> �ð����� ��Ȯ�� ǥ��


�ϰ���� �۾�

ĳ����
��ų
����
���


�������� ojs
pass 3213


--------------------------------------

12/06


DML: Data Manipulation Language -> ������ �����ۼ��� ���� �غ���
�����ͺ��̽��� �Էµ� �����͸� ��ȸ�ϰų� �߰�, ����, ����

INSERT, DELETE, UPDATE, MERGE

1. INSERT
INSERT INTO ���̺��[(�÷���1, �÷���2, ...)]
VALUES(������1,������2,...)


���������� ���� ���̺��� �����͸� �Ѳ����� �߰�
INSERT INTO ���̺��
   SELECT �÷���
   FROM �������̺��
   WHERE ���ǽ�




2. UPDATE
UPDATE ���̺��
SET �÷��� = �����Ұ�
WHERE ���ǽ�

UPDATE ���̺��
SET �÷���1 = �����Ұ�1,
    �÷���2 = �����Ұ�2,
         ...
WHERE ���ǽ�




����1.employees ���̺��� ������ �����Ͽ� 
      first_name, department_id, salary, hire_date
      �÷���� ������ emp4 ���̺� ����
->������

create table emp4
as
select first_name, department_id, salary, hire_date
from employees
where 2=1

����2. emp4 ���̺� first_name�� 'Min',
       �μ���ȣ�� 30, �޿��� 10000,
       �Ի����ڴ� 2016�� 6�� 6���� ���ڵ� �߰�


insert into emp4(first_name, department_id, salary, hire_date)
values('Min',
        30,
        10000,
        '06/06/2016'
)


-> ��¥�� ���ڿ�

����3. emp4 ���̺� first_name�� 'Yun',
       �μ���ȣ�� 20, �Ի����ڴ� 2016�� 10�� 10���� ���ڵ��߰�


insert into emp4(first_name, department_id, hire_date)
values('Yun',
        20,
        '10/10/2016'
)



����4. employees ���̺��� department_id�� 100�̻���
       �����͵鸸 �����Ͽ� emp4 ���̺� �߰�



insert into emp4
    select first_name, department_id, salary, hire_date
    from employees
    where department_id >=100

-> sub ���� �����̴�





����5. EMP4 ���̺��� first_name�� Yun�� ����� 
       salary�� 1000���� ����



update emp4
    set salary = 1000
     where first_name ='Yun'


����6. emp4 ���̺��� department_id�� 30�� ����� department_id�� 10���� salary�� 1000���� ����


update emp4
    set salary = 1000,
        department_id = 10
     where  department_id = 30


����7. emp4 ���̺��� employee_id �÷��� �߰��ϰ� 
       ��� employee_id�� 99�� ����

alter table emp4
    add (employee_id number(3))


update emp4
    set employee_id = 99
    where employee_id is null



3. DELETE

DELETE FROM EMP4
WHERE  ���ǽ�  -> ���ǽ� ������ ��� ���� �Ǵ� ����!





����8. emp4 ���̺��� department_id�� 100�� ������� ���ڵ带 ��� ����

DELETE 
FROM emp4
    where DEPARTMENT_id = 100


����9. emp4 ���̺��� department_id�� 10 �̰ų� 20�� ���ڵ带 ��� ����
DELETE 
FROM emp4
    where DEPARTMENT_id = 10
    or DEPARTMENT_id = 20

in(10,20) �� ��� �����ϴ� ?


INSERT INTO  T_DATA01 VALUES('101',100,1,500)	
INSERT INTO  T_DATA01 VALUES('102',101,1,400)	
INSERT INTO  T_DATA01 VALUES('103',102,1,300)	

INSERT INTO  T_DATA02 VALUES('201',104,1,600)
INSERT INTO  T_DATA02 VALUES('202',100,1,500)
INSERT INTO  T_DATA02 VALUES('203',102,1,300)




4. MERGE
������ ���� �� ���� ���̺��� �ϳ��� ���̺�� ���� �����ϴ� ���̺� ������ �����ϴ� ���� �ִٸ�
���ο� ������ ����(UPDATE)�ǰ�, �������� ������ ���ο� ������ �߰�(INSERT)


MERGE INTO �������̺�� �������̺���
USING      �������̺�� �������̺���
ON         (���ǽ�)
WHEN MATCHED THEN ������ ��ġ�� ����� ó��
WHEN NOT MATCHED THEN ������ ����ġ�� ����� ó��


MERGE INTO T_DATAS TOTAL
USING T_DATA01 D1
ON  ( TOTAL.DATA_NO = D1.DATA_NO)
WHEN MATCHED THEN 
     UPDATE
     SET TOTAL.PRODUCT_NO = D1.PRODUCT_NO
WHEN NOT MATCHED THEN 
     INSERT VALUES(D1.DATA_NO,D1.PRODUCT_NO,
                   D1.QUANTITY, D1.AMOUNT)


MERGE INTO T_DATAS TOTAL
USING T_DATA02 D1
ON  ( TOTAL.DATA_NO = D1.DATA_NO)
WHEN MATCHED THEN 
     UPDATE
     SET TOTAL.PRODUCT_NO = D1.PRODUCT_NO
WHEN NOT MATCHED THEN 
     INSERT VALUES(D1.DATA_NO,D1.PRODUCT_NO,
                   D1.QUANTITY, D1.AMOUNT)


MERGE INTO T_DATAS TOTAL
USING T_DATA01 D1
ON  ( TOTAL.DATA_NO = D1.DATA_NO)
WHEN MATCHED THEN 
     UPDATE
     SET TOTAL.PRODUCT_NO = D1.PRODUCT_NO , TOTAL.QUANTITY = D1.QUANTITY, TOTAL.AMOUNT = D1.AMOUNT
WHEN NOT MATCHED THEN 
     INSERT VALUES(D1.DATA_NO,D1.PRODUCT_NO,
                   D1.QUANTITY, D1.AMOUNT)


MERGE INTO T_DATAS TOTAL
USING T_DATA02 D1
ON  ( TOTAL.DATA_NO = D1.DATA_NO)
WHEN MATCHED THEN 
     UPDATE
     SET TOTAL.PRODUCT_NO = D1.PRODUCT_NO , TOTAL.QUANTITY = D1.QUANTITY, TOTAL.AMOUNT = D1.AMOUNT
WHEN NOT MATCHED THEN 
     INSERT VALUES(D1.DATA_NO,D1.PRODUCT_NO,
                   D1.QUANTITY, D1.AMOUNT)




����10. employees ���̺��� ������ �� 
        employee_id�� 100,110�� ���ڵ���� 
        employee_id, last_name, job_id,
        salary,hire_date �� �����Ͽ� temp01 ���̺� ����

create table temp01
as
select employee_id, last_name, job_id, salary, hire_date
from employees
where employee_id = 100
or employee_id = 110



����11. employees ���̺��� ������ ��
        job_id�� 'IT_PROG'�� ���ڵ���� 
        employee_id, last_name, job_id,
        salary, hire_date�� �����Ͽ� temp02 ���̺� ����

create table temp02
as
select employee_id, last_name, job_id, salary, hire_date
from employees
where job_id = 'IT_PROG'


����12. temp02 ���̺��� job_id�� ��� test�� ����


update temp02
set job_id = 'test'




����13. temp02 ���̺� 123, Han, job_id, 20000, ���ó�¥
        ���� ���� ���ڵ� �߰�


insert into temp02
values(123, 'Han', 'job_id', 20000, sysdate)





����14. temp01�� temp02 ���̺��� ����
        ���� ������ employee_id�� ��ġ ����
        ��ġ�Ѵٸ� ���� ������ ������Ʈ
        ��ġ���� ������ �ű� ������ �߰�
        -> ���� ������� �ʰ� �غ���


merge into temp01
using temp02
on (temp01.employee_id =temp02.employee_id)
when matched then 
    update 
    set temp01.last_name=temp02.last_name, temp01.job_id=temp02.job_id, temp01.salary=temp02.salary, temp01.hire_date=temp02.hire_date
when not matched then
    insert 
    values(temp02.employee_id, temp02.last_name, temp02.job_id, temp02.salary, temp02.hire_date)




����15. emp4 ���̺��� Min�� department_id�� 
        shelley�� department_id�� ����

update emp4
set department_id = (select department_id from emp4 where first_name = 'Shelley')
where first_name = 'Min'
->��������


���� 16. emp4 ���̺��� ������ �� departments ���̺��� �����Ͽ�
 department_name�� Accounting�� ���ڵ带 ��� ����


delete from emp4
where department_id = (select department_id from departments where department_name = 'Accounting')

->��������



------------------------------------

TCL ; Transaction Control Language
Ʈ����� ���� ���
DML �۾� �Ŀ��� �ݵ�� �ǽ��ؾ� �����ͺ��̽��� �ݿ� ��

1. COMMIT -> �ݿ�
2. ROLLBACK  -> ���


===========================================

DCL ; Data Control Language
������ ���� ���

1. GRANT
2. REVOKE



===========================================

���� ����

1. PRIMARY KEY(�⺻Ű)
   NOT NULL�� UNIQUE�� ������ ����
   �ߺ����� �ʴ� ������ ����
   (�ٸ� ���ڵ��� ����)
   

2. FOREIGN KEY(�ܷ�Ű, ����Ű)
   �����Ǵ� ���̺��� �÷��� ���� �����ϸ� ���



3. UNIQUE
   �ߺ��� ���� ��� ���� �ʴ´�
   �׻� ������ ���� �������� ����



4. CHECK
   ���� ������ ������ ���� ������ ������ �����Ͽ�
   ������ ���� ���


5. NOT NULL
    NULL�� ������� �ʴ´�.


����1. ȸ�� ���̺� T_MEMBER ����
       �׸�          ������Ÿ��    �ڸ���            ��������    �÷���
   ----------------------------------------------------------------------
    
       ���̵�         VARCHAR2       8               �⺻Ű      USER_ID
       ��й�ȣ       VARCHAR2       10              NOT NULL    USER_PW          
       �̸���         VARCHAR2       30              UNIQUE      EMAIL
       ����           CHAR           1               CHECK       GENDER 
       ��ȭ��ȣ       VARCHAR2       13                          PHONE
       �̸�           VARCHAR2       10                          USER_NM
       �������       DATE           ��/��/�⵵                  BIRTH



CREATE table "T_MEMBER" (
    "USER_ID"    VARCHAR2(8),
    "USER_PW"    VARCHAR2(10) NOT NULL,
    "EMAIL"      VARCHAR2(30),
    "GENDER"     CHAR(1),
    "PHONE"      VARCHAR2(13),
    "USER_NM"    VARCHAR2(10),
    "BIRTH"      DATE,
    constraint  "T_MEMBER_PK" primary key ("USER_ID")
)
/

alter table "T_MEMBER" add
constraint "T_MEMBER_UK1" 
unique ("EMAIL")
/   
alter table "T_MEMBER" add
constraint "T_MEMBER_CK1" 
check (GENDER IN('M','F'))
/   


The TABLE operation was not successful for the following reason:
ORA-02298: cannot validate (HR.T_MEMO_FK) - parent keys not found

-> �����Ͱ� �����Ƿ� �����͸� �־��ָ� �ذ��Ҽ� �ִ�



The TABLE operation was not successful for the following reason:
ORA-02297: cannot disable constraint (HR.T_MEMBER_PK) - dependencies exist
-> ������




-----------------------------------------------------------------

12/07



join
-���� �ʿ��� �����͸� �ΰ��� ���̺��� �����´�

1. cartesian product  ->�̰����� ���
   cross join
   Ư���� Ű���� ���� select���� from ���� 
   ���̺���� �޸��� �����Ͽ� ���� ���
   ������� �÷��� ���� �� ���̺��� ���� ���� �ǰ�,
   ���ڵ� ���� �� ���̺��� ���� ���� ���
   
  - �� ���̺��� ���Ͽ� ��ġ�� Ÿ�� 

2. equi join
   where���� ����Ǵ� ���� ������ �˻��ؼ�
   ���� ���̺� '���� ��'�� ������ ������ 

- ������ �׸��� �ִ� �� ���̺��� ��ĥ�� ���� Ÿ��

3. non-equi join
   �� �÷��� ���� �ٸ� �÷��� ���� 
   ��Ȯ�� ��ġ���� �ʴ� ��쿡 ���
-> �÷��� ���� ������ �������� ���� �Ҷ� ��� ����

- �����׸��� ���� �� ���̺��� ��ĥ�� ���� Ÿ��.
  �����׸��� �����Ƿ� ������ �� �ʿ䰡 ����


4. outer join
   join ������ �������� ���� ��쿡��
   ��� �� ���
   left   [outer] join  :���� �������� ���
   right  [outer] join  :�������� �������� ���
   full   [outer] join  :���ʸ��

-������ �������� �ҷ��ö� ����ϴ� Ÿ��

5. self join
�� ���̺��� ���� ���� ���̺� �ִ� ��� ���� 
��ġ �ϳ��� ���̺��� �� ���� ��ó�� ����Ͽ�
���� (equi join Ȱ��-> ������ �ٸ��� �����Ѵ�)







����1. t_data01 ���̺�� t_data02 ���̺��� 
       ī�׽þ� ���δ�Ʈ ���ϱ�

select *
from t_data01, t_data02

select *
from t_data01 cross join t_data02

-> ����� �Ȱ����� join�� �ϴ� �ǹ̴� ����. ������� �ʹ� �������⿡ ���ǹ� �ϴ�.



����2. employees ���̺�� departments ���̺��� 
       join�Ͽ� 
       employee_id, first_name, department_id, department_name�� ���
       ��, department_id�� 100���� �����͵鸸 ��ȸ


select employees.employee_id, 
       employees.first_name, 
       employees.department_id, 
       departments.department_name
from employees , departments
where employees.department_id = departments.department_id
-> ���� ���� ����ϰ� �ɰ��̴�.


select e.employee_id, e.first_name, e.department_id, d.department_name
from employees e , departments d
where e.department_id = d.department_id
-> from ���� ���� ���
   ����� ���� ������ ª������ �ִ�.


select e.employee_id, e.first_name, e.department_id, d.department_name
from employees e join departments d
on e.department_id = d.department_id
-> join, on ��� ����� ����.


select e.employee_id, e.first_name, e.department_id, d.department_name
from employees e , departments d
where e.department_id = d.department_id
and e.department_id = 100

�Ǵ�

select e.employee_id, e.first_name, e.department_id, d.department_name
from employees e , departments d
where e.department_id =100 and d.department_id = 100




����3. employees ���̺�� salary_grade ���̺��� 
       �����Ͽ� first_name, salary, grade �÷���
       ���ڵ� ���
       ��, grade�� salary�� salary_grade ���̺���
       low_sal�� high_sal �÷� �������� ��

*non-equi join 
�÷����� ��ġ ���� �ʰ� ���� ���� �����Ҷ�

select first_name , salary , grade
from employees, salary_grade
where salary between low_sal and high_sal
order by grade

select first_name , salary , grade
from employees join salary_grade
on salary between low_sal and high_sal
order by grade



����4. employees ���̺�� salary_grade ���̺���
       �����Ͽ� ��ü salary�� grade�� 
       �� grade�� ���� ���
       ��, grade�� �Ұ谡 10 �̻��� ���ڵ� �鸸 ���

������� : grade   �Ұ�
          ------------------ 
           1���   ~~��
           2���   ~~��


select grade|| ' ���' , count(*)|| ' ��'
from employees , salary_grade
where salary between low_sal and high_sal
group by grade
order by grade

-> || shift +\ 


���ڴ� ' ' , ������ " " ���


select grade|| ' ���' as "grade" , concat(lpad(count(*),2,'0'),'��') as "�Ұ�"
from employees , salary_grade
where salary between low_sal and high_sal
group by grade
order by grade


->group�� ������ �ɸ��� �Ǹ� 


select grade|| ' ���' as "grade" , concat(lpad(count(*),2,'0'),'��') as "�Ұ�"
from employees , salary_grade
where salary between low_sal and high_sal
group by grade
having count(*) >= 10
order by grade

-> having ���



����5. employees ���̺�� departments ���̺��� 
       join�Ͽ� 
       last_name, job_id, department_id, department_name�� ���


select e.last_name , e.job_id, e.department_id, d.department_name
from employees e , departments d
where  e.department_id = d.department_id



left outer join ���

select e.last_name , e.job_id, e.department_id, d.department_name
from employees e , departments d
where  e.department_id = d.department_id (+)

�Ǵ�

select e.last_name , e.job_id, e.department_id, d.department_name
from employees e left outer join departments d
on  e.department_id = d.department_id


right outer join ���

select e.last_name , e.job_id, e.department_id, d.department_name
from employees e , departments d
where  e.department_id(+) = d.department_id

�Ǵ�

select e.last_name , e.job_id, e.department_id, d.department_name
from employees e right outer join departments d
on  e.department_id = d.department_id


->�����ʿ� �����Ͱ� �ְ� ���ʿ��� ������ (���� ���� �ʿ� (+))




����6. employees ���̺�� departments ���̺��� 
       join�Ͽ� 
       �� �μ��� �޿��� ����
       �޿����� ���� ������ �˻��Ͽ�
       department_id , department_name,
       �μ��� �޿��� ��(���ڸ�����,�� ����)���� ���
       ��, �μ����̵� ���� ���ڵ�鵵 ���


  ������� : �μ����̵� �μ��� �μ��޿���
             -----------------------------------
             10         ~~~     ~~,~~~

select e.department_id �μ����̵� , d.department_name �μ��� , to_char(sum(salary),'999,999') "�μ� �޿���"
from employees e ,  departments d
where e.department_id = d.department_id(+)
group by  e.department_id ,d.department_name
order by sum(salary) desc


�Ǵ�

select e.department_id �μ����̵� , d.department_name �μ��� , to_char(sum(salary),'999,999') "�μ� �޿���"
from employees e left outer join  departments d
on e.department_id = d.department_id
group by  e.department_id ,d.department_name
order by sum(salary) desc




����7. employees ���̺��� ���� �����Ͽ�
       employee_id, first_name, manager_id, manager_name�� ���
       ��, manager�� ���� ������� �����ʹ� 
       ceo�� ���


select a.employee_id, a.first_name, a.manager_id, nvl(b.first_name,'ceo') as "manager_name"
from employees a left outer join  employees b
on a.manager_id = b.employee_id
order by a.employee_id




==================================================================


���� ���� sub query

�ϳ��� ���̺��� �˻��� �����
�ٸ� ���̺� �����Ͽ�
���ο� ����� �˻�

�ϳ��� select ����(���� ����) �ȿ� ���Ե� 
�� �ϳ��� select ����(���� ����)


�� �������� �����ʿ� �ݵ�� ��ȣ�� �ѷ��μ� ���
*Ư���� ��츦 �����ϰ� order by�� ����ϸ� �ȵȴ�!
-> �������� �ȿ�����



where salary >= ()

��������
select ~~~
from ~~~       ��������
where ~~~ >= (select ~~
having        from ~~)




1. ������ ���� ����
   ���� ��� ���� �ϳ��� �ุ ��ȯ
   ���� ������ where /having ������ ���� �� �� �����ڸ�
   ����ؾ� ��(=, >, >=, <=, <, < >)

where ���� ���������� select�� ��ġ �Ͽ��� ��

- ���� ������ ����� �ϳ��� ���϶� ����Ѵ�. ������� �ϳ�

2. ������ ���� ����
3. ��Į�� ���� ����
4. ����� ���� ����


����1. lex�� ���� �μ� ������� ��� ���
    ���� ���� ���� ��
      lex�� department_id(90)�� ã�´�.
      ã�Ƴ� department_id�� ��ġ�ϴ�
      ������� ��� ����Ѵ�.



select first_name , department_id
from employees
where department_id = ( select department_id
                       from employees
                       where first_name = 'Lex' 
)






����2. ��� salary ���� ���� salary�� �޴� ������� 
       first_name, salary, job_id�� ���
       ��, ��� salary�� �Ҽ��� ���� �ݿø��Ͽ� 
       salary �������� ����
      


1 - ��� salary���� ���� salary �޴� �����

select first_name , salary , job_id
from employees
where salary <
              (select round(avg(salary))
               from employees
               )
order by salary desc




����3. ���� ���� salary �� �޴� job_id�� ����
       �ش��ϴ� job_id�� ��� �޿� ���


select  job_id, avg(salary) as "��� �޿�"
from employees
where job_id =  
(
select job_id
from employees
where salary =

(select min(salary) from employees)
   )          
group by job_id


???����4. ���� ���� ��� salary�� �޴� job_id�� ���� 
       �ش��ϴ� job_id�� ��� salary ���




select  job_id, avg(salary) as "��� �޿�"
from employees
having avg(salary) =
(
select min(avg(salary))
from employees 
group by job_id  

)
group by job_id


���� ���� �����Ͽ� ���Ϸ� �ۺ�




================================================================================


12/8

2. ������ ���� ����
�ݵ�� ������ �����ڿ� �Բ� ����ؾ� ��


�� ���� ���� ������ ��� �߿���
in: �ϳ��� ��ġ�ϴ� ���
any,some    : �ϳ� �̻��� ��ġ�ϴ� ���
all         : ��� ���� ��ġ�ϴ� ���
exist       : �����ϴ� ���� �ϳ��� �����ϴ� ���


any/ all      : �ַ�  =, >, < , >= , <= , <> �� ���� ���
 > any        : �ּҰ����� ŭ
 > all        : �ִ밪���� ŭ
 < any        : �ִ밪���� ����
 < all        : �ּҰ����� ����

3.��Į�� ��������
4. ����� ��������


����1. �� department_id ���� �ּ� �޿��� �޴� ������� 
       first_name, salary, department_id ���


select first_name, salary, department_id
from employees
where (department_id, salary) in
(select department_id , min(salary)
 from employees
 group by department_id)





����2. department_id�� 30���� ������� salary��  
       ���� ū ������ �� ���� salary�� �޴� ������� 
       first_name, salary ���


 select first_name, salary
from employees
where salary  > all
(select salary
from employees
where department_id = 30)



����3. department_id�� 30���� ������� salary��  
       ���� ���� ������ �� ���� salary�� �޴� ������� 
       first_name, salary ���

select first_name, salary
from employees
where salary  > any
(select salary
from employees
where department_id = 30)



����4. commisstion_pct�� 0.1,0.15 �ΰ����� ��� ū/�� ���� ��� �� ������ ū
       ������� first_name, commisstion_pct ���(commission_pct ���� ���� ����)



select first_name , commission_pct
from employees
where commission_pct > all( 0.1 , 0.15)
order by commission_pct

-> ��� ū
 

select first_name , commission_pct
from employees
where commission_pct > any( 0.1 , 0.15)
order by commission_pct


->��� �Ѱ� ���� ū



����5. salary�� 10000�̻��� ������� department_id �� 
       ���� department_id�� 
       first_name, salary , department_id ���       


select first_name , salary, department_id
from employees
where department_id in
(select department_id
from employees
where salary >= 10000)

�Ǵ�

select first_name , salary, department_id
from employees
where department_id =any
(select department_id
from employees
where salary >= 10000)


select first_name , salary, department_id
from employees
where department_id =any
(select distinct department_id
from employees
where salary >= 10000)
- �ߺ� ����


================================

��Į�� ��������

���������� select ������ �Լ�ó�� ���Ǵ� ������

����1. employees  ���̺�� departments ���̺��� �����Ͽ� first_name, department_name ���

select first_name, department_id,
       (select department_name
        from departments d
        where e.department_id=d.department_id) "�μ� �̸�"
from employees e
order by department_id

-> ó���ؾ��� �����Ͱ� ������ ����ϰ� �������� equi join�� ����Ѵ�. 



=======================================


����� ���� ����

���� �������� �ѱ� �����͸� ���� ������ ó���� ��
�����ִ� ���


����1. ������� �Ҽ� �μ��� ��� salary ����
      ���� salary�� �޴� ������� first_name,
      salary, department_id ��� ���

?

select first_name, salary, department_id
from employees
where salary <any (select avg(salary) 
from employees
group by department_id
)
- �ۼ��غ� ��



select first_name, salary, department_id
from employees e
where salary < (select avg(salary)
                from employees ee
                where e.department_id = ee.department_id
                group by ee.department_id
)


-> where���� ���������� ���� ���




select a.first_name, a.salary, b.department_id
from employees a, (select department_id , avg(salary) as avg
                    from employees 
                  group by department_id) b
where a.department_id = b.department_id
and   a.salary < b.avg
order by department_id , salary



-> from ���� �����������


select first_name, salary, department_id
from employees outer
where salary < (select avg(salary)
                from employees
                where department_id = outer.department_id
                
)
order by department_id, salary

-������� ���

select first_name, salary, department_id
from employees outer
where salary < (select avg(salary)
                from employees
                where outer.department_id = department_id
                
)
order by department_id, salary

�Ǵ�

select first_name, salary, department_id
from employees a
where salary < (select avg(salary)
                from employees
                where a.department_id = department_id
                
)
order by department_id, salary



����2. department_id���� department_id,
       department_name, ��� salary�� 
       �� �μ��� ��ġ�� city �� country_name��
       ��ȸ
       ��, ��� salary�� ���� ������ �����ϵ�
       �Ҽ��� ���� �ڸ����� ����


select e.department_id, d.department_name
       , trunc(avg(e.salary)) "��� salary" , l.city, c.country_name
from employees e, departments d, countries c, locations l
where c.country_id = l.country_id
and  d.department_id = e.department_id
and l.location_id = d.location_id
group by e.department_id, d.department_name, l.city, c.country_name
order by trunc(avg(e.salary)) desc




==============================================================

view

�������� ���̺� �ٰ��� ������ ���� ���̺�
�������� �����ʹ� ������,
���� ���̺��� ����ϴ� �Ͱ� �����ϰ� ��� ����
���� ���̺��� �Ļ��� ��ü��,
�⺻ ���̺� ���� �ϳ��� ������


1.create view 
�����

2.create or replace view
 �並 ���� �ϰų� ���� �䰡 �����ϴ� ��� ����

3.force
������ ���� ���ο� ��� ���� �����

4.with read only
select�� �����ϵ��� ó��
�����ÿ���, insert/delete/update ��� ����

5.with check option

���� �������� where ���� �߰��Ͽ�
���� ���� ����

-------------------------------------------------

���� ����

1. �ܼ���
�並 ������ ���������� ���� ������ �� ����
1���� ���̺�� ����� ���� ��
2. ���պ�
�並 ������ ���������� �������� ���̺��� 
���εǾ� ��������� ��

3. �ζ��� ��
create view�� ������ �䰡 �ƴ϶�
���� ������ �ӽ÷� ������ ������ ��
from ���� ���� ������ ���



����1. job_id �� 'it_prog'�� ������� �ҼӵǾ� �ִ�
       last_name, job_id, job_title, department_name ���


select e.last_name, e.job_id , j.job_title, d.department_name
from (select last_name,job_id ,department_id
                     from employees
                   where job_id = 'IT_PROG') e, jobs j
                , departments d
where e.job_id = j.job_id
and e.department_id = d.department_id


����2. employees ���̺��� �̿��Ͽ�
       employee_id, last_name, job_id, salary �÷��� ����
       �ܼ� �� v_emp ����
       ��, ������ �䰡 �������� �ʴ� ��쿡��)


create view "v_emp"
("employee_id", "last_name", "job_id", "salary")as
select
e.employee_id,
e.last_name,
e.job_id,
e.salary
from employees e


�Ǵ�

create view v_emp
as
select
employee_id,
last_name,
job_id,
salary
from employees



����3. employees ���̺��� �̿��Ͽ�
       employee_id, last_name, job_id, salary �÷��� 
       ���� �����ȣ, ����, ������ȣ, �޿��� �̸�����
       �ܼ� �� v_emp ����
       ��, ������ �䰡 �����ϴ� ���
           ���ο� ��� ����ǵ��� ó��)
       

create or replace force view v_emp
("�����ȣ","����","������ȣ","�޿�") as
select
employee_id,
last_name,
job_id,
salary
from employees


����4. department_id ���� salary�� �Ѿװ� ����� 
       ��ȸ�� �� �� �ִ� V_salary_info �並 �ۼ�


create or replace force view "V_salary_info"
(�μ���ȣ,�޿��Ѿ�,�޿����)
as
select department_id , sum(salary), avg(salary)
from employees
group by department_id
WITH READ ONLY
-> "" �־���� ��ҹ��� �����Ͽ� �Էµȴ�.


update v_salary_info
set  sum = 10000
where department_id = 100

->ORA-01732: data manipulation operation not legal on this view
�б������̶� ��ȸ�� ����

update v_emp
set ���� = 'k'
where �����ȣ = 100
-> ���� ����



����5. employees ���̺�� departments ���̺��� �����Ͽ�
       employee_id, last_name, salary, department_name
       �÷��� 
       ���� emp_id, emp_name, sal, dept_name�� �̸����� 
       V_EMP_INFO �� ����
       (left outer join)

CREATE VIEW V_EMP_INFO 
( emp_id, emp_name, sal, dept_name)
AS
SELECT 
e.employee_id, 
e.last_name, 
e.salary, 
d.department_name
from 
employees e, departments d
where e.DEPARTMENT_ID = d.DEPARTMENT_ID (+)



*ROWNUM �˻��� ��� �տ� ���ȣ�� ���δ�

select rownum,last_name, salary
from employees


SELECT ROWNUM NO , LAST_NAME, SALARY
FROM (SELECT LAST_NAME, SALARY
      FROM EMPLOYEES
      ORDER BY SALARY)
-> �ζ��� VIEW



CREATE VIEW "V_SAL_NUM" 
(LAST_NAME, SALARY )
AS
SELECT
LAST_NAME, SALARY
FROM 
EMPLOYEES
ORDER BY SALARY
->VIEW ����


SELECT ROWNUM, LAST_NAME ,SALARY
FROM V_SAL_NUM
->VIEW ������ SELECT



DROP VIEW V_SALARY_INFO
-> VIEW ����


DROP TABLE T_MEMO2
->  TABLE ����


����6. employees ���̺��� job_id�� it_prog�̰ų�
       pu_clerk�� �����͵��� employee_id, last_name,
       job_id, salary �÷��� ���� v_emp_view �����
       ��, �������� ������ �÷� �� ���� ���� ����

 6-1   salary�� 5000�̻��� ������� job_id�� 
       IT_GUY�� ����  



create or replace force view "v_emp_view"
(employee_id, last_name, job_id, salary)
as
select employee_id, last_name,
       job_id, salary
from employees
where job_id = 'IT_PROG'
OR JOB_ID = 'PU_CLERK' WITH CHECK OPTION



UPDATE "v_emp_view"
set job_id = 'IT_GUY'
WHERE SALARY >= 5000
-> 
ORA-01402: view WITH CHECK OPTION where-clause violation
üũ �ɼ��� �����Ͽ��� ������ ���� �Ұ�

*
�並 ������Ʈ �ϸ� ���� ���̺� ����ȴ�


����7. employees ���̺��� hire_date �� ���� ���� ���
       5���� ��ȸ�ϴ� v_emp_hire �並 ����


create or replace force view v_emp_hire
(no, hire_date)
as
select rownum no, hire_date
from (select  hire_date
      from employees
      order by hire_date)
where rownum <= 5



����8. employees ���̺��� salary ���� 10����
       ������� last_name, job_id, salary�� ���


create or replace force view v_emp_salary
as
select last_name, job_id ,salary
from (select  salary
      from employees
      order by salary desc)
where salary <= 10




����9. department_id�� �ּ�/�ִ�/��� �޿���
       ����ϴ� v_dept_info �ۼ�
       ��, ��ձ޿��� �ݿø�
       ������� : �μ��� �ּұ޿� �ִ�޿� ��ձ޿�
                  ---------------------------------


create or replace force view v_dept_info
 ("�μ���","�ּұ޿�","�ִ�޿�","��ձ޿�")
as
select d.department_name, min(e.salary), max(e.salary), round(avg(e.salary))
from employees e, departments d
where e.department_id = d.department_id(+)
group by d.department_name
order by d.department_name
-> �÷� �̸��� ������ ���δ�



==================================================
sequence -> �޸� ��ȣ�� ���Ҷ� ����Ѵ�

���������� �ڵ� �����Ǵ� ����


CREATE SEQUENCE ��������
START WITH      ���۰�
INCREMENT BY    ������
MAXVALUE        �ִ밪
MINVALUE        �ּҰ�
CYCLE           �����(��ȯ)����
CACHE           ĳ����뿩��
                �޸� �󿡼� ������ ���� ����
                �⺻ ���� 20 -> NOCACHE




������ ���
��������.NEXTVAL



����1. ���۰� 1, �ּҰ� 1, �ִ밪 9999999999999999,
       ���������� ��ȯ�ؼ� ������� �ʵ���
       T_MEMO_SEQ �������� ����




����2. T_MEMO_SEQ �������� �̿��Ͽ�
       T_MEMO ���̺� �޸� �ϳ� �߰�
       
INSERT INTO T_MEMO
VALUES
(T_MEMO_SEQ.NEXTVAL , 'ABC', 'LAST NAME', 'ORACLE MEMO', 'MEMO.JPG', SYSDATE)

SELECT T_MEMO_SEQ.CURRVAL
FROM DUAL


-> sequence�� LAST NUMBER ���� NEXT VALUE ���� �ȴ�

==============================================

INDEX  

SQL ��ɹ��� ó�� �ӵ��� ��� ��Ű�� ���ؼ�
�÷��� ���ؼ� �����ϴ� ����Ŭ ��ü

�⺻Ű�� ����Ű�� ������ ���Ἲ�� Ȯ���ϱ� ���ؼ�
���÷� �����͸� �˻��ϱ� ������
���� ��ȸ�� �������� 
����Ŭ���� ���������� �ش� �÷��� �ڵ����� �ε��� ����

���� : �˻� �ӵ��� ������
       �ý��ۿ� �ɸ��� ���ϸ� �ٿ���
       ��ü �ý��� ���� ���

���� : �ε����� ���� �߰����� ���� �� ���� �ð� �ҿ�
       DML�� ���� �Ͼ ��쿡�� ������ ���� ����

ROWID
����Ŭ�� ��� �����Ͱ� ���� ������ �ּ�
(�����͸� ã�ư� �� �ʿ�)
�� ROWID ������ ��Ƽ� ���� �ִ� ���� �ε���

�ε����� ����ؾ� �ϴ� ���
-���̺� ���� ���� ���� ��
-WHERE ���� Ư�� �÷��� ���� ���� ��
-�˻� ����� ��ü �������� 2~4% ������ ��
-���ο� ���� ���Ǵ� �÷��̳� NULL�� �����ϴ� �÷��� ���� ���


�ε����� ������� ���ƾ� �ϴ� ���
-���̺� ���� ���� ���� ��
-WHERE ���� �ش� �÷��� ���� ������ ���� ��
-�˻� ����� ��ü �������� 10~15% �̻��� ��
-���̺� DML�۾��� ���� ���

����1. ���� ������ �̿��Ͽ� EMP���̺��� ��� �����͸�
       EMP3 ���̺� �߰��ϰ�,
       LAST_NAME �÷��� EMP3_LASTNAME_IDX���
       �ε��� ����


INSERT INTO EMP3
SELECT *
FROM EMP

INSERT INTO EMP3(EMPLOYEE_ID, LAST_NAME, EMAIL, JOB_ID, HIRE_DATE)
VALUES(123456, 'KIM', 'KIM@KIM.COM', 'IT_PROG', SYSDATE)





*����2. ������ ������ �ε��� ����

DROP INDEX EMP3_LASTNAME_IDX


�ε��� ����
1. UNIQUE INDEX
   �⺻ Ű�� ���� Űó�� ������ ���� ���� �÷��� ����
   �����ϴ� �ε��� 
   �ε��� ���� Ű �� �ߺ� X

   CREATE UNIQUE INDEX �ε�����
   ON                  �������̺�(���ϴ� �÷���)

����3. T_DATA01 ���̺��� DATA_NO �÷���
       DATA1_NO_IDX ��� �̸��� UNIQUE �ε��� ����

  CREATE UNIQUE INDEX DATA1_NO_IDX
   ON                  T_DATA01(DATA_NO)     

2. NON-UNIQUE INDEX
   
   �ߺ��� �����͸� ���� �÷��� ���ؼ� �����ϴ� �ε���

�ε��� ����

CREATE INDEX �ε��� �̸�
ON           �������̺��(���ϴ� �÷���)


CREATE INDEX EMP3_LASTNAME_IDX
ON           EMP3(LAST_NAME)



3. FUNCTION BASED INDEX
   �Լ� ��� �ε���
   WHRER ���� ��� ǥ�� �Ǵ� �Լ��� ����ϴ� ���
   �̸� �����Ͽ� �����ϴ� �ε���

   EX)WHERE SALARY = 10000     -> ����ȵ�
      WHERE SALARY*12 = 120000  => ���ǥ���� ����� ����

����4. EMP3 ���̺��� SALARY �÷��� 
       EMP3_SAL_IDX��� �̸��� �ε��� �����ϰ�,
       SALARY*12�� 120000�� �������� 
       LAST_NAME, SALARY, SALARY*12�� ���

CREATE INDEX EMP3_SAL_IDX
ON           EMP3(SALARY)       

SELECT DISTINCT LAST_NAME, SALARY, SALARY*12
FROM EMP3
WHERE SALARY*12 =120000


����5. EMP3 ���̺��� SALARY �÷��� 12���� ������ 
       EMP3_SAL_FBIDX��� �̸��� �ε��� �����ϰ�,
       SALARY*12�� 120000�� �������� 
       LAST_NAME, SALARY, SALARY*12�� ���

CREATE INDEX EMP3_SAL_FBIDX
ON           EMP3(SALARY*12)       

SELECT DISTINCT LAST_NAME, SALARY, SALARY*12
FROM EMP3
WHERE SALARY*12 =120000

4. COMPOSITE INDEX
���� �ε���

�� �� �̻��� �÷����� �����ϴ� �ε���
WHERE ������ �� �� �̻��� ������ AND �� ����Ǵ�
��쿡 ���� ���
�߸� ����� ������ ���� ��ȭ ����


����6. EMP3 ���̺��� SALARY�� 10000 �̻��̰�,
      JOB_ID�� MK_MAN�� ������ �˻��� ����
      SALARY�� JOB_ID�� ���� �ε�����
      EMP3_SAL_JOB_IDX ����

CREATE INDEX EMP3_SAL_JOB_IDX
ON           EMP3(SALARY , JOB_ID)       

SELECT *
FROM EMP3
WHERE SALARY >= 10000
AND JOB_ID = 'MK_MAN'


* �������� �ε��� ����� -> ĸ���Ͽ� ���Ϸ� ������
======================================================
12/13

Q&A ���̺� ����

UI ����

1.Q&A �Խ���

no.  ����           �ۼ�����       �ۼ���     �亯����
-----------------------------------------------------
1    ù��° ����     12/31/2016    abc        X
2    �׳� ����       11/30/2016    bbb        X
3    �����ڴԲ�      11/11/2016    ccc        O 
                                                [�����ϱ�]
========================================================

2.Q&A �󼼺���

������ȣ  1                 ��ȸ��     1
����      ù��° ����        ��õ��     0
�ۼ�����  12/31/2016
�ۼ���    abc
���� ����  ~~~~~~~~~~ ??

[����][����]                               [��õ�ϱ�]
-----------------------------------------------------
�亯  ���� �亯�� ��ϵ��� �ʾҽ��ϴ�. -> ��Ͼȵ� ��� [���]
 
      ù��° �亯                                    [����]
                                                    [����]

������� 12/31/2016            

===========================================================

3. Q&A �Խ���

�����ϱ�
-----------------------------------------------------
����      ù��° ����        
�ۼ���    abc
���� ����  ~~~~~~~~~~ ??



�亯�ϱ�
-----------------------------------------------------
����      ù��° ����        
���� ����  ~~~~~~~~~~ ??
���� ��ȣ  1
�亯     ~~~~~~~~~~~~!!


*�亯�� �����ڸ� ������ ȸ���� 
1. ȸ�����̺�
���̺��̸� : T_MEMBER
�׸�           �÷���         ������Ÿ��(ũ��)            ��������
-------------------------------------------------------




2. T_QNA ���̺� �ϳ��� 
���̺� �̸�: T_QNA
�׸�           �÷���              ������Ÿ��(ũ��)                                       ��������
-------------------------------------------------------------------------------------------------
 ��ȣ          Q_NO                NUMBER(10)                                              PK
 ���������     Q_REG_DATE          DATE DEFALT SYSDATE
 �亯�����     A_REG_DATE          DATE DEFALT SYSDATE
 ������         Q_USER              VARCHAR2(13)                                           FK
 ��������       Q_TITLE             VARCHAR2(40)
 ��������       Q_CONTENTS          VARCHAR2(100)
 �亯����       A_CONTENTS          VARCHAR2(400) DEFALT '���� �亯�� ��ϵ��� �ʾҽ��ϴ�.'            
 �亯����       A_CONFIRM           CHAR(1)  DEFALT 'N'                                 CHECK A_CONFIRM IN('Y','N')
 ��ȸ��         QNA_VIEWS           NUMBER(10) DEFALT 0
 ��õ��         QNA_RECOMMEND       NUMBER(10) DEFALT 0
   

 =========================================================
 ������ ����        
 
 ��ȣ      ����            �̸�
----------------------------------------------------       
 1.      QNA ��ȣ          


============================================================
SQL

1. ȸ������ ���̺� ���� ����
-> T_MEMBER ���̺� ���

ADMIN ���� ����
�߰� ȸ�� ���� ����

2. Q&A ���̺� ���� ����
CREATE TABLE  "T_QNA" 
   (	"Q_NO" NUMBER, 
	"Q_REG_DATE" DATE, 
	"A_REG_DATE" DATE, 
	"Q_USER" VARCHAR2(13), 
	"Q_TITLE" VARCHAR2(40), 
	"Q_CONTENTS" VARCHAR2(100), 
	"A_CONTENTS" VARCHAR2(400) DEFAULT '���� �亯�� ��ϵ��� �ʾҽ��ϴ�.', 
	"A_CONFIRM" CHAR(1) DEFAULT 'N', 
	"QNA_VIEWS" NUMBER DEFAULT 0, 
	"QNA_RECOMMEND" NUMBER DEFAULT 0, 
	 CONSTRAINT "T_QNA_PK" PRIMARY KEY ("Q_NO") ENABLE, 
	 CONSTRAINT "T_QNA_CK1" CHECK (A_CONFIRM IN('Y','N')) ENABLE
   ) ;ALTER TABLE  "T_QNA" ADD CONSTRAINT "T_QNA_FK" FOREIGN KEY ("Q_USER")
	  REFERENCES  "T_MEMBER" ("USER_ID") ENABLE;

CREATE OR REPLACE TRIGGER  "BI_T_QNA" 
  before insert on "T_QNA"               
  for each row  
begin   
  if :NEW."Q_NO" is null then 
    select "T_QNA_SEQ".nextval into :NEW."Q_NO" from dual; 
  end if; 
end; 

/
ALTER TRIGGER  "BI_T_QNA" ENABLE;


3. Q&A �Խ��� ��� ��� (SELECT)
SELECT Q_NO, Q_TITLE, Q_REG_DATE, Q_USER, A_CONFIRM
FROM T_QNA

4. ������� 

INSERT INTO T_QNA(Q_NO,Q_REG_DATE,Q_USER,Q_TITLE,Q_CONTENTS)
VALUES("T_QNA_SEQ".nextval,
         SYSDATE,
      'ABC','�����ֽ��ϴ� ���ؿ�',
      '���������� ���ݸ��� �Կ��� �ǳ���?')

5. ��������
5.1 ���� ���� ȭ�� ���
5.2 ���� ���� ó��
SELECT Q_TITLE,Q_USER,Q_CONTENTS
FROM T_QNA
WHERE Q_NO =1

UPDATE T_QNA
set Q_TITLE = '��� ���ؿ�' , Q_CONTENTS = '�츮 �������� ���ݸ��� �Ծ���� �����ּ���'
WHERE Q_NO = 1

6. ��������
DELETE T_QNA
WHERE Q_NO = 2

7. ��õ�ϱ�
UPDATE T_QNA
SET QNA_RECOMMEND=(SELECT QNA_RECOMMEND
                   FROM T_QNA
                   WHERE Q_NO = 1)+1
WHERE Q_NO = 1

8. ��ȸ�� ���� ó��
������ �󼼺��� �ϸ� ��ȸ�� �ø��� SELECT �ؼ� ��������
UPDATE T_QNA
SET QNA_VIEWS=(SELECT Q_NO,
       QNA_VIEWS,
      Q_TITLE,
      QNA_RECOMMEND,
      Q_REG_DATE,
      Q_USER,
      Q_CONTENTS,
      A_CONTENTS,
      A_REG_DATE
      FROM T_QNA
      WHERE Q_NO = 1)+1
WHERE Q_NO = 1


9. ���� �� ����(8-9�� ����)
SELECT Q_NO,
       QNA_VIEWS,
      Q_TITLE,
      QNA_RECOMMEND,
      Q_REG_DATE,
      Q_USER,
      Q_CONTENTS,
      A_CONTENTS,
      A_REG_DATE
FROM T_QNA
WHERE Q_NO = 1

10.�亯 ���
10.1 �亯 ��� ȭ�� ���
10.2 �亯 ��� ���� ó��
SELECT Q_TITLE,Q_CONTENTS,Q_NO,A_CONTENTS
FROM T_QNA
WHERE Q_NO = 1



UPDATE T_QNA
SET A_CONTENTS = '���ݸ��� ���̸� �ȵ˴ϴ�.' , A_REG_DATE =SYSDATE
WHERE Q_NO = 1

11.�亯 ����
11.1 �亯 ���� ȭ�� ���
11.2 �亯 ���� ó��
SELECT Q_TITLE,Q_CONTENTS,Q_NO,A_CONTENTS
FROM T_QNA
WHERE Q_NO = 1

UPDATE T_QNA
SET A_CONTENTS = '���� ����� ������������ ����������!' ,A_REG_DATE =SYSDATE
WHERE Q_NO = 1

12.�亯 ����

UPDATE T_QNA
SET A_CONTENTS = DEFAULT , A_REG_DATE =SYSDATE
WHERE Q_NO = 1


13.������1 ���� - ��ȣ
CREATE SEQUENCE Q_NO_SEQ
START WITH 1
INCREMENT BY 1
NOCYCLE
NOCACHE

14.������2 ���� - ��ȸ�� -����
-�������� ��ȸ�� ��õ���� �ø��� �Ǹ� �������� ��������
�����ؾ� �Ѵٴ� �������� �߻��Ѵ�.
CREATE SEQUENCE QNA_VIEWS_SEQ
START WITH 1
INCREMENT BY 1
NOCYCLE
NOCACHE

15.������3 ���� - ��õ�� - ����
CREATE SEQUENCE QNA_RECOMMEND_SEQ
START WITH 1
INCREMENT BY 1
NOCYCLE
NOCACHE







*�Խ��� ����� ����
http://iluku.net/blog/archives/1398



�䱸���� ����
1. ȸ�������� �ϰ� ���̵� ������ ����� ���� ����
2. �亯�� �����ڸ� ����
3. �亯�� �Ϸ�Ǹ� �亯 ���ο� O ǥ��

�Խ��� version 2(������ ����)

1.Q&A �Խ���

no.  ����              �ۼ�����       �ۼ���     �亯����
-----------------------------------------------------
1    ù��° ����        12/31/2016    abc        X
2    �׳� ����          11/30/2016    bbb        X
3    �����ڴԲ�[5]      11/11/2016    ccc        O 
                                                [�����ϱ�]
========================================================

2. T_QNA ���̺� �ϳ��� 
���̺� �̸�: T_QNA
�׸�           �÷���              ������Ÿ��(ũ��)                                       ��������
-------------------------------------------------------------------------------------------------
 ��ȣ          Q_NO                NUMBER(10)                                              PK
 �θ�� ��ȣ    Q_ROOT_NO           NUMBER(10) DEFAULT 0            NEW
 �׷� ��ȣ      Q_GROUP_NO          NUMBER(10)  DEFAULT 0           NEW
 ���������     Q_REG_DATE          DATE DEFALT SYSDATE
 �亯�����     A_REG_DATE          DATE DEFALT SYSDATE
 ������         Q_USERID            VARCHAR2(13)                 UPDATE                    FK
 ��������       Q_TITLE             VARCHAR2(40)
 ��������       Q_CONTENTS          VARCHAR2(100)
 �亯��         A_ANSERID           VARCHAR2(13)                     NEW
 �亯����       A_CONTENTS          VARCHAR2(400) DEFALT '���� �亯�� ��ϵ��� �ʾҽ��ϴ�.'            
 �亯����       A_CONFIRM           CHAR(1)  DEFALT 'N'                                 CHECK A_CONFIRM IN('Y','N')
 ��ȸ��         QNA_VIEWS           NUMBER(10) DEFALT 0
 ��õ��         QNA_RECOMMEND       NUMBER(10) DEFALT 0

ALTER TABLE T_QNA
ADD (Q_ROOT_NO NUMBER DEFAULT 0)

ALTER TABLE T_QNA
ADD (Q_GROUP_NO NUMBER DEFAULT 0)

alter table T_QNA rename column Q_USER to Q_USERID

ALTER TABLE T_QNA
ADD (A_ANSERID VARCHAR2(13))


1. �Խ��� ��� ���

SELECT Q_NO, Q_TITLE || SUM(Q_GROUP_NO) AS Q_TITLE , Q_REG_DATE, Q_USERID, A_CONFIRM, QNA_VIEWS,QNA_RECOMMEND 
FROM T_QNA

   
2. T_QUESTION �� T_ANSWER �� ���̺�� ����� 
���̺� �̸�: T_QUESTION
�׸�           �÷���              ������Ÿ��(ũ��)                                       ��������
-------------------------------------------------------------------------------------------------
 ��ȣ          Q_NO                NUMBER(10)                                              PK
 ���������     Q_REG_DATE          DATE DEFALT SYSDATE
 ������         Q_USERID            VARCHAR2(13)                                           FK
 ��������       Q_TITLE             VARCHAR2(40)
 ��������       Q_CONTENTS          VARCHAR2(100)
 ��ȸ��         QNA_VIEWS           NUMBER(10) DEFALT 0
 ��õ��         QNA_RECOMMEND       NUMBER(10) DEFALT 0

2.1 T_QUESTION ���̺� ���� ����

CREATE TABLE  "T_QUESTION" 
   (	"Q_NO" NUMBER(10,0) NOT NULL ENABLE, 
	"Q_REG_DATE" DATE DEFAULT SYSDATE, 
	"Q_USERID" VARCHAR2(13), 
	"Q_TITLE" VARCHAR2(40), 
	"Q_CONTENTS" VARCHAR2(100), 
	"QNA_VIEWS" NUMBER(10,0) DEFAULT 0, 
	"QNA_RECOMMEND" NUMBER(10,0) DEFAULT 0, 
	 CONSTRAINT "T_QUESTION_PK" PRIMARY KEY ("Q_NO") ENABLE
   ) ;ALTER TABLE  "T_QUESTION" ADD CONSTRAINT "T_QUESTION_FK" FOREIGN KEY ("Q_USERID")
	  REFERENCES  "T_MEMBER" ("USER_ID") ENABLE;

CREATE OR REPLACE TRIGGER  "BI_T_QUESTION" 
  before insert on "T_QUESTION"               
  for each row  
begin   
  if :NEW."NO" is null then 
    select "T_QUESTION_SEQ".nextval into :NEW."NO" from dual; 
  end if; 
end; 

/
ALTER TRIGGER  "BI_T_QUESTION" ENABLE;




 ���̺� �̸�: T_ANSWER
�׸�           �÷���              ������Ÿ��(ũ��)                                       ��������
-------------------------------------------------------------------------------------------------
 ��ȣ          Q_NO                NUMBER(10)                                              FK
 �亯�����     A_REG_DATE          DATE DEFALT SYSDATE
 �亯��         A_ANWSERID           VARCHAR2(13)                   
 �亯����       A_CONTENTS          VARCHAR2(400) DEFALT '���� �亯�� ��ϵ��� �ʾҽ��ϴ�.'            
 �亯����       A_CONFIRM           CHAR(1)  DEFAULT 'N'                                 CHECK A_CONFIRM IN('Y','N')
 



2.2 T_ANSWER ���̺� ���� ����

CREATE TABLE  "T_ANSWER" 
   (	"Q_NO" NUMBER(10,0), 
	"A_REG_DATE" DATE DEFAULT SYSDATE, 
	"A_ANSWERID" VARCHAR2(13), 
	"A_CONTENTS" VARCHAR2(400) DEFAULT '���� �亯�� ��ϵ��� �ʾҽ��ϴ�.', 
	"A_CONFIRM" CHAR(1) DEFAULT 'N', 
	 CONSTRAINT "T_ANSWER_CHECK" CHECK ( "A_CONFIRM" IN('Y','N')) ENABLE
   ) ;ALTER TABLE  "T_ANSWER" ADD CONSTRAINT "T_ANSWER_FK" FOREIGN KEY ("Q_NO")
	  REFERENCES  "T_QUESTION" ("Q_NO") ENABLE;



Q&A �Խ���

no.  ����              �ۼ�����       �ۼ���     �亯����
-----------------------------------------------------
1    ù��° ����        12/31/2016    abc        X
2    �׳� ����          11/30/2016    bbb        X
3    �����ڴԲ�[5]      11/11/2016    ccc        O 
                                                [�����ϱ�]
========================================================


3. Q&A �Խ��� ��� ��� (SELECT)

SELECT 



4. ������� 

5. ��������
5.1 ���� ���� ȭ�� ���
5.2 ���� ���� ó��


6. ��������

7. ��õ�ϱ�

8. ��ȸ�� ���� ó��


9. ���� �� ����(8-9�� ����)

10.�亯 ���
10.1 �亯 ��� ȭ�� ���
10.2 �亯 ��� ���� ó��

11.�亯 ����
11.1 �亯 ���� ȭ�� ���
11.2 �亯 ���� ó��

12.�亯 ����

13.������ ���� - Q_NO ��ȣ


sql command line 


sql> connect
 -> locked

     name :sys as sysdba
     pass : 1111

    alter user hr (identified by hr) account unlock;
    ()-> ��й�ȣ ����

    conn sys/1111 as sysdba
    alter user hr identified by 1111;
    conn hr/1111

    conn / as sysdba -> sys db�� �����Ҷ��� ���� �ٸ� db�� �Ұ����ϴ�

    Ű���� ��/�Ʒ� -> ����� ��� �����丮 �� �� �ִ�
 ==================================================================

12/14

SQL * PULS ��ɾ� 

SYS/SYSTEM ---�����ڰ�����
DESC �ڼ��� �������� ��ȸ
SELECT * FROM TAB --���̺� ��� ����(������)


1.�������

L -> ������ ���� ��� ��� (LIST)  : LIST ���ۿ� ����� SQL���� ǥ��
/ -> ������ ���� ��� �����       : ���ۿ� ����� SQL���� ����
R -> L + /  (RUN)                : RUN ���ۿ� ����� SQL���� ǥ���ϰ� ����

2.���� ���� ���
  
  ������ ������ ���Ͽ� �����ϴ� ��ɾ�� 
  
  ED [���ϸ�]: ������ ���� ��ɾ� ���Ϸ� ���� ->���ϸ� �������� ������ AFIEDT.BUF�� �����
  
  HOST ->���� ������Ʈ�� 
  
  DIR/W AF* ---AF�� �����ϴ� ���� �˻�
  
  SAVE ���ϸ�[.Ȯ����][REPLACE]---�ٲٱ� [APPEND]---�߰� :������ ���� ��ɾ� ���Ϸ� ����
  
  get ���ϸ� --- save�� ����� ������ ���� ��������

  @ ���ϸ�[.Ȯ����] ----������ ����
  
  SPOOL ���ϸ� : ���ϸ����� ���Ŀ� ����Ǵ� ��ɵ� ȭ�� ĸ��
  spool off : ĸ�� ����



3.DB ���� �� ����

CONNECT ���̵�/��й�ȣ
CONN    ���̵�/��й�ȣ
HOST������ < > EXIT SQL+ �� �̵�   
C:\oraclexe\app\oracle\product\11.2.0\server\bin\AFIEDT.BUF


C:\oraclexe\app\oracle\product\11.2.0\server\network\ADMIN\LISTENER.ORA
---����Ŭ������ Ŭ���̾�Ʈ ����� ó���ϱ� ���� ����(������ Ŭ���̾�Ʈ ������ ó���Ҷ�)
TNSNAMES.ORA ---����Ŭ������ �����ϱ����� �ʿ��� ������ ��� ����
HOST /PORT /SID=SERVICE_NAME


EXIT    ����

4.��� ����
SET
COL[UMN] �÷��� FORMAT A30 -> �÷��� �ʺ� ���� ---����
COL[UMN] �÷��� FORMAT 9,999,999 ----���� �ڸ���
COL[UMN] �÷��� FORMAT 000.00

SQL> 

help set

set heading off  ---�÷� head option off

set pagesize 120 --- �������� ǥ���Ǵ� line ����


����1. C ����̺� �ؿ� DATA ������ �����ϰ�
       SQL PLUS ���� ���� �������� ������ �������� EXERCISE.SQL ���Ϸ� ����


SAVE C:\DATA\EXERCICE.SQL APPEND 



����2. emp2 ���̺��� ��ü �����͸� ��ȸ�ϰ�,
      department_id�� 20�� �����͸� ��ȸ�ϴ� �����  
      c����̺� ���� data ������
      emp2_depts.lst ���Ϸ� ĸ���� ��,
      ĸ���� ������ sql plus���� ���


===================================================================
DB ����


����ڰ� Ư�� ���̺� ���� ���� �ο��ϰų�
Ư�� ���̺� SELECT/DELETE/UPDATE/INSERT ����
������ ���� ���� ���� ����

1. �ý��� ���� SYSTEM PRIVILEGES
   ������� ����/����, DB ���� �� ���� ��ü ���� �� 
   �ַ� DBA�� ���� �ο�

   CREATE/DROP USER
   CREATE/DROP ANY TABLE
   CREATE SESSION   --DB�� ���� ���� ����
   CREATE VIEW
   CREATE SEQUENCE
   CREATE PROCEDURE

2. ��ü ���� OBJECT PRIVILEGES
   ��ü�� ������ �� �ִ� ����
   (���̺�,��,������,�ε��� ��)


-------------------------------------------------------

�ý��� ����

1. CREATE ����� ����
   ����Ŭ ��ġ�� �� �ڵ����� �����Ǵ�
   ����Ʈ ����� ���
   �ý��� ������ ���� �����ͺ��̽� ��������
   SYS, SYSTEM �� ����
   
   CREATE USER ����ڸ�
   IDENTIFIED BY ��й�ȣ

����1. SYS �������� �α����Ͽ�
       ���̵�� USER1, ��й�ȣ�� 1111�� ����� ���� 
       -----------������ ��� ������ ���� �ʴ´�.  

       CONN / AS sysdba
       CREATE USER USER1
       IDENTIFIED BY 1111;

2.GRANT
  ����ڿ��� �ý��� ���� �ο�

  GRANT  ���Ѹ�
  TO     ����ڸ�
  [WITH ADMIN OPTION]   �ο����� ������ �ٸ�����ڿ��� �Ѱ� �ټ� �ִ�    

����2. ������ ������ USER1���� DB ���� ������
       CREATE SESSION�� �ο�

GRANT CREATE SESSION
TO USER1

����3. ���̵�� USER2, ��й�ȣ�� 1111�� ����� �����ϰ�,
      DB ���Ӱ� �ο� ���� ������ �ٸ� ����ڿ���
      �ο��� �� �ִ� ������ ������ ��,
      ���̵�� USER3, ��й�ȣ�� 1111�� ����� �߰� ����

      CONN / AS sysdba
      CREATE USER USER2 IDENTIFIED BY 1111;
      GRANT CREATE SESSION TO USER2 WITH ADMIN OPTION
      


      CREATE USER USER3 IDENTIFIED BY 1111;
------------------------------------------------------------------------

��ü ����

����          TABLE        VIEW        SEQUENCE          PROCEDURE
------------------------------------------------------------------------
ALTER          O                          O
DELETE         O             O
EXECUTE                                                      O
INDEX          O
INSERT         O             O
REFERENCES     O
SELECT         O             O            O
UPDATE         O             O 

���� ����
Ư�� ��ü�� ���� ������
�⺻������ �� ��ü�� ���� ����ڿ��Ը� �־���

��Ű�� SCHEMA
��ü�� ������ �����
�ڽ��� ������ ��ü�� �������������� �� �ܿ��� ��Ű���� �Է��ؾ� �Ѵ�.

GRANT ���Ѹ� | ALL
ON    ��ü�� | �Ѹ� | PUBLIC
TO    ����ڸ�

���� öȸ
REVOKE ���Ѹ� | ALL
ON     ��ü�� 
FROM   ����ڸ�


����1. USER1 ����ڿ��� EMPLOYEES ���̺��� ��ȸ�� �� �ִ� 
       ���� �ο�

       CONN HR/1111;

       GRANT SELECT
       ON    EMPLOYEES
       TO    USER1

       SELECT * FROM HR.EMPLOYEES  ---- HR�� ��Ű�� ��

����2. USER1 ����ڿ��� EMPLOYEES ���̺��� ��ȸ�� �� �ִ� 
       ���� öȸ 
       ��, HR ����ڰ� USER1���� �ο��� ������ Ȯ�� �ϰ� ó�� 

       SELECT * FROM USER_TAB_PRIVS_MADE  ---HR�� �� ���� Ȯ��

       REVOKE SELECT                      ---���� öȸ
       ON     EMPLOYEES
       FROM   USER1

=======================================================================

������ ��ųʸ� DATA DICTIONARY

DB �ڿ��� ȿ�������� �����ϱ� ����
�پ��� ������ �����ϴ� �ý��� ���̺�

����ڰ� ���̺��� �����ϰų�, ����ڸ� �߰��ϴ� ����
�۾��� �� �� �ڵ����� ���ŵǼ�
�ش� ��ü�� ���� ��Ÿ ������ ������ �����

�ý����� ���� �����ϱ� ������ ��ȸ�� ����
��ȣ ���� ��ȣ�� ������ �� ������ �� �� ����

=======================================================================

������ ��ųʸ� ��  DATA DICTIONARY VIEW

������ ��ųʸ� �� ���̺��� ���� ��ȸ�ϱⰡ
���� �Ұ����ϱ� ������
����ڰ� ������ �� �ִ� ������ ������ ���� ����

����
1. STATIC DATA DICTIONARY VIEW
   DBA_~~~~~~~ �����ͺ��̽� �����ڸ� ���� ������ ��ü ���� ���� ��ȸ
                EX) DBA_TABLES   


   ALL_~~~~~~~ �ڽ� ���� ���� �Ǵ� ������ �ο� ���� ��ü ���� ���� ��ȸ
                EX) ALL_TABLES 

   USER_~~~~~~ �ڽ��� ������ ������ ��ü ���� ���� ��ȸ
                EX) USER_TABLES



����1. HR �������� SQL PLUS�� �����Ͽ�
       ��� ������ ��� ���̺� �̸��� ������������ 
       �����Ͽ� ���
       ��, USER_TABLES ������ ��ųʸ� �並 ���

       CONN HR/1111
       SELECT TABLE_NAME 
       FROM USER_TABLES 
       ORDER BY TABLE_NAME DESC

2. DYNAMIC PERFORMANCE VIEW
   ���� ���� �ڵ� �ݿ�


--------------------------------------------------------------
���� ���� ���� ��ȸ 

SELECT *  
FROM USER_CONSTRAINTS

R - FK

��ųʸ� ���

1.USER_CONSTRAINTS
CONSTRAINT_TYPE
-P PK
-R FK
-U UNIQUE
-C CHECK

����2. HR������ �����ϰ� �ִ� ���̺����
      �������� ������ ,�̸�, �Ҽ� ���̺�, Ÿ��,
      ���� ������, �����̸� �� ���
      

      -------�ߺ�����
      SELECT DISTINCT CONSTRAINT_TYPE
      FROM USER_CONSTRAINTS


�������� ������ȸ

SELECT OWNER ������ , CONSTRAINT_NAME �̸� , TABLE_NAME �Ҽ����̺� ,CONSTRAINT_TYPE Ÿ�� , 
       R_OWNER ���������� , R_CONSTRAINT_NAME �����̸� 
FROM   USER_CONSTRAINTS
ORDER BY CONSTRAINT_TYPE

���������� �ɷ��ִ� �÷� ��ȸ
2.USER_CONS_COLUMNS

�並 �����Ҷ� ����� �������� ��ȸ
3.USER_VIEWS

������ ���� ��ȸ
4.USER_SEQUENCES

*�ε��� ������ �÷��� ��ȸ
5.USER_IND_COLUMNS

*�ε��� ���� ��ȸ
6.USER_INDEXES

*���� ������ �� ���� ��ȸ
7.USER_TAB_PRIVS_MADE

*���� ���� ���� ���� ��ȸ
8.USER_TAB_PRIVS_RECD

�ο��� �Ѱ� ���� Ȯ��
9.USER_ROLE_PRIVS



SELECT * FROM USER_TAB_PRIVS_RECD


����3. EMPLOYEES ���̺� ���õǾ� �ִ� 
       �ε��� �̸��� �÷� �̸��� ȭ�鿡 ���

SELECT INDEX_NAME,TABLE_NAME,COLUMN_NAME FROM USER_IND_COLUMNS
WHERE TABLE_NAME = 'EMPLOYEES'


12/14 ����

1.USER_CONSTRAINTS

  �������� ������ȸ

  SELECT   OWNER ������ , CONSTRAINT_NAME �̸� , TABLE_NAME �Ҽ����̺� ,CONSTRAINT_TYPE Ÿ�� , 
           R_OWNER ���������� , R_CONSTRAINT_NAME �����̸� 
  FROM     USER_CONSTRAINTS
  ORDER BY CONSTRAINT_TYPE

2.USER_CONS_COLUMNS

  ���������� �ɷ��ִ� �÷��� ��ȸ

  SELECT OWNER ������,CONSTRAINT_NAME �̸�,TABLE_NAME �Ҽ����̺�,COLUMN_NAME �÷���
  FROM   USER_CONS_COLUMNS
  WHERE  TABLE_NAME = 'EMPLOYEES'

3.USER_VIEWS
  
  �並 �����Ҷ� ����� ������ ��ȸ

  SELECT VIEW_NAME , TEXT , READ_ONLY
  FROM   USER_VIEWS

4.USER_SEQUENCES

  ������ ������ ���� ��ȸ
  
  SELECT SEQUENCE_NAME,MIN_VALUE,INCREMENT_BY,LAST_NUMBER
  FROM   USER_SEQUENCES


5.USER_IND_COLUMNS

  �ε����� ������ �÷��� ��ȸ

  SELECT INDEX_NAME,TABLE_NAME,COLUMN_NAME
  FROM   USER_IND_COLUMNS
  WHERE  TABLE_NAME ='EMPLOYEES'

6.USER_INDEXES

  �ε����� ��� ���� ��ȸ

  SELECT INDEX_NAME,INDEX_TYPE,TABLE_OWNER,TABLE_NAME,TABLE_TYPE,UNIQUENESS
  FROM   USER_INDEXES
  WHERE  TABLE_NAME ='EMPLOYEES'

7.USER_TAB_PRIVS_MADE

  ���� ������ �� ���� ��ȸ

SELECT GRANTEE,TABLE_NAME,GRANTOR,PRIVILEGE
FROM   USER_TAB_PRIVS_MADE


8.USER_TAB_PRIVS_RECD
  
  ���� ������ ���� ���� ��ȸ

  SELECT OWNER,TABLE_NAME,GRANTOR,PRIVILEGE
  FROM   USER_TAB_PRIVS_RECD

����4. DICT ���̺��� TABLE_NAME�� ROLE��
       ���ԵǾ� �ִ� ���ڵ� ��ȸ

SQL> SELECT * FROM DICT WHERE TABLE_NAME LIKE '%ROLE%';


-----------------------------------------------------------------------------

12/15

role
����ڿ��� ���� ȿ�������� ������ �ο��� �� �ֵ��� 
�������� ������ ���� ���� ��

���� ���� ��     : DB ��ġ �� �⺻ ����
  1. CONNECT                  
    ����ڰ� �����ͺ��̽��� ���� �� �� �ֵ��� ������� �⺻����
    �ý��� ���� 8����
    
    CREATE CLUSTER
    CREATE DATABASE LINK
    CREATE SEQUENCE
    CREATE SESSION
    CREATE SYNONYM
    CREATE TABLE 
    CREATE VIEW
    ALTER SESSION

  2.RESOURCE
    ����ڰ� ��ü(���̺�,��,�ε��� ��)�� ������ �� �ֵ���
    �ϱ� ���� ���� ���� �ý��� ����

    CREATE CLUSTER
    CREATE PROCEDURE
    CREATE SEQUENCE
    CREATE TABLE
    CREATE TRIGGER
  
  3.DBA
    ����ڵ��� ������ �����ͺ��̽� ��ü�� �����ϰ�
    ����� ����/����/������ �� �ֵ��� �ϴ� ��� ���� ����
  

    
����� ���� ��   : ����ڰ� ���� �� ����
  �� ����   ->   �ѿ� ���� �ο�       -> �� �ο�
   DBA         DBA/�����ִ� �����       DBA


CREATE ROLE ���̸�;
GRANT �����̸� TO ���̸�; �ѿ��ٰ� ������ �ο�


����1. �ý��� ������ �������� �α����Ͽ�
       ���̵�� USER4, ��й�ȣ�� 1111�� ������ ������ ��
       CONNECT�� RESOURCE ���� �ο�

       SQL> CONN / AS sysdba
            CREATE USER USER4 IDENTIFIED BY 1111;


����2. �ý��� ������ �������� �α����Ͽ�
       THE_ROLE�̶�� �̸��� ���� �����ϰ�,
       EMPLOYEES ���̺��� ��ȸ ������ �ο��� ��
       ������ ���� USER4���� �ο�

SQL>
     CONN / AS sysdba
     SELCT OWNER,TABLE_NAME FROM ALL_TABLES WHERE TABLE_NAME ='EMPLOYEES'; (USER_TABLES�� �ȵ�,DBA_TABLES�� �ȴ�)
     GRANT SELECT ON HR.EMPLOYEES TO THE_ROLE;
     GRANT THE_ROLE TO USER4;


     USER4���� �ִ� �� ���� ��ȸ
     SELECT * FROM USER_ROLE_PRIVS;

����3. THE_ROLE2��� �̸��� ���� �����ϰ�, �����ͺ��̽� ����/���̺� �� �� ���� ������ �ο��� ��,
       ���̵�� USER5, ��й�ȣ�� 1111�� ���� ������ ����ڿ��� ������ �� �ο�

 SQL> CONN / AS sysdba
      CREATE ROLE THE_ROLE2;
      CRANT CONNECT,RESOURCE TO THE_ROLE2;
      CREATE USER USER5 IDENTIFIED BY 1111;
      GRANT THE_ROLE2 TO USER5;

---TABLE SPACE�� ���� ���� ������ ���� �ʾұ⿡ TABLE������ ���� �ʴ´�.
CON / AS sysdba
ALTER USER USER5 QUOTA 100M ON SYSTEM;
---- QUOTA UNLIMITED (������)
     QUOTA 0M �ش� ���̺����̽��� ���̺� ���� ����


����Ʈ �� ���� �� ���
�ѿ� �ý��� ���Ѱ� ��ü ������ �ο��� ��
���� ����ڿ��� �ο� 

����4. BASIC_ROLE�̶�� �̸��� ���� �����ϰ�,
       �����ͺ��̽� ���� ������ �ο��� ��,
       EMPLOYEES ���̺��� ����/����/��ȸ(UPDATE,DELETE,SELECT) ������ ���ѵ� �ο�

       ���̵� TESTER1~3, ��й�ȣ�� 1111�� ����� 3�� �߰��� ��,
       ��ο��� ������ ������ �� �ο�

 SQL> CONN / AS sysdba;
      CREATE ROLE BASIC_ROLE;   
      GRANT CONNECT TO BASIC_ROLE;
      GRANT UPDATE,DELETE,SELECT ON HR.EMPLOYEES TO BASIC_ROLE;

      CREATE USER TESTER1 IDENTIFIED BY 1111;
      CREATE USER TESTER2 IDENTIFIED BY 1111;
      CREATE USER TESTER3 IDENTIFIED BY 1111;

      GRANT BASIC_ROLE TO TESTER1;
      GRANT BASIC_ROLE TO TESTER2;
      GRANT BASIC_ROLE TO TESTER3;

      CONN TESTER1/1111;
      SELECT * FROM HR.EMPLOYEES;

�� ȸ���ϱ�

REVOKE ���̸� FROM �����;


����5. USER5���� �ο��� ���� Ȯ���� �� 
      �ο��� ���� ȸ��
SQL>  
      CONN / AS SYSDBA; 
      SELECT * FROM DBA_ROLE_PRIVS WHERE GRANTEE = 'USER5';
      REVOKE THE_ROLE2 FROM USER5;

�� ����

DROP ROLE ���̸�

FROM DICT --- ROLE���� TABLE
DBA_CONNECT_ROLE_GRANTEES
---INFORMATION REGARDING WHICH USERS ARE GRANTED CONNECT
DBA_ROLES
---ALL ROLES WHICH EXIST IN THE DATABASE
DBA-ROLE-PRIVS
---ROLES GRANTED TO USERS AND ROLES
DBA-SCHEDULER-JOB-ROLES
---ALL SCHEDULER JOBS IN THE DATABASE BY DATABASE ROLE
USER_ROLE-PRIVS
---ROLES GRANTED TO CURRENT USER
ROLE_ROLE_PRIVS
---ROLES WHICH ARE GRANTED TO ROLES
*ROLE_SYS_PRIVS
---SYSTEM PRIVILEGES GRANTED TO ROLES
*ROLE_TAB_PRIVS
---TABLE PRIVILEGES GRANTED TO ROLES
SESSION_ROLES
---ROLES WHICH THER USER CURRENTLY HAS ENABLED




����6. USER5���� �ο��Ǿ��� ���� ������ Ȯ��    
      ������ ��ųʸ��� �ش� ���� �����ڸ� Ȯ�� �� ��
      �� ����
  SQL> SELECT S.ROLE,S.PRIVILEGE,T.TABLE_NAME
       FROM ROLE_SYS_PRIVS S , ROLE_TAB_PRIVS T
      WHERE S.ROLE = T.ROLE(+)
      AND S.ROLE = 'THE_ROLE2'

ROLE_SYS_PRIVS -> ROLE, PRIVILEGE, ADMIN_OPTION
ROLE_TAB_PRIVS -> ROLE, OWNER, TABLE_NAME, COLUMN_NAME, PRIVILEGE, GRANTABLE


��
      SELECT ROLE, PRIVILEGE
      FROM ROLE_SYS_PRIVS
      WHERE ROLE = 'THE_ROLE2'

      SELECT ROLE, PRIVILEGE
      FROM ROLE_TAB_PRIVS
      WHERE ROLE = 'THE_ROLE2'  --- �ο��� ���� ���� Ȯ��

      SELECT * 
      FROM DBA_ROLE_PRIVS
      WHERE GRANTED_ROLE = 'THE_ROLE2'   ----�ش� ���� ������ Ȯ��


======================================================================  
PL/SQL

ORACLES PROCEDUAL LANGUAGE EXTENSION TO SQL�� ����  
�����ͺ��̽� ���� �����͸� �����ϱ� ���ؼ�
SQL�� �Բ� ����


���� ����, ���� ó��, �ݺ�ó�� ���� ����

����  �����           ����, ��� ����
      �����           ���� ���
      ���� ó����      ���� ó�� ���

�͸��� ���ν���
����
      DECLARE         �����(������ ��� ����)
      BEGIN           ����� ����(���� ���) ---���ν���  ���� ����
      END;            ����� ��
      / ---���ν��� ����


SQL>
  SET SERVEROUTPUT ON
  begin
     DBMS_OUTPUT.PUT_LINE('HELLO WORLD!');
  END;
  /

����
���ϴ� ���� �����ϴ� �޸� ���� ����

���
������ �ʴ� ��

�ּ�    ���� �ּ�     -- ~~~
        ������ �ּ�    /*  ~~~
                          ~~~    */

���� ���� : �����̸�  ������Ÿ��(ũ��);
������ �� ����  �����̸� := ������ �� 
  ����1.         
  EX) ���ݰ� ���ڿ� �� ���ڸ� ������ ���� ����
         NAME    VARCHR2(20); //����
          WONGUM NUMBER;      //����
         EEJAYUL NUMBER(1,3); //������
          EEJA   NUMBER;      // ����



����2. ������ ������ ������ ������ ���� ����
      ����: KIM ,���� 10000, ������: 5%,
      �̸� : ���� X ������      
      NAME :='KIM';
      WONGUM :=10000 ;
      EEJAYUL :=0.05;
      EEJA :=WONGUM * EEJAYUL;

����3. ����1�� 2�� �޸��� ���Ͽ� ����Ͽ�
       ���ݰ� ������ �� ���ڸ� ȭ������ ���

SQL>
DECLARE NAME VARCHAR2(20);
         WONGUM NUMBER;
         EEJAYUL NUMBER(1,2); 
         EEJA   NUMBER;    
BEGIN   NAME :='KIM';
      WONGUM :=10000 ;
      EEJAYUL :=0.05;
      EEJA :=WONGUM * EEJAYUL;
      DBMS_OUTPUT.PUT_LINE('���� :' || NAME || '���� :' || WONGUM ||  '������ : '  || EEJAYUL || '���� : ' || EEJA  );
END;
/


DECLARE 
        NAME VARCHAR2(20);
        WONGUM NUMBER;
        EEJAYUL NUMBER(1,2); 
        EEJA   NUMBER;    
BEGIN   
        NAME :='KIM';
        WONGUM :=10000 ;
        EEJAYUL :=0.05;
        EEJA :=WONGUM * EEJAYUL;
        DBMS_OUTPUT.PUT_LINE( NAME || '������ ������' || WONGUM ||  '�� �̰� �������� '  || EEJAYUL || '�̰� ���ڴ�' || EEJA ||'�Դϴ�.' );
END;
/

-----------------------------------------------------------------------------
���� ���ν���

PL/SQL�� ������ ���� �ʿ��� ��� ���� �� ȣ���Ͽ� ��� ����

����  CREATE [OR REPLACE] PROCEDURE ���ν����̸�
     [(�Ű�����1 IN|OUT|INOUT ������Ÿ��,
       �Ű�����2 IN|OUT|INOUT ������Ÿ��,
       ...)]
     IS                                  --IN �Ѱܹ��� ������
       [���� ����]                        --OUT �Ѱ��� ������
    BEGIN                                --INOUT �� ��
       ó���� ����1,
       ó���� ����2,
       ...
    END;
    /

����  
  SQL>   EXECUTE ���ν����̸�
         EXECUTE ���ν����̸�(�Ű����� ��)



����4. DEV ������� EMP ���̺��� ��� ���ڵ带 �����Ͽ�
      EMP1 ���̺��� �����ϰ�,
      EMP1 ���̺��� ��� ���ڵ带 �����ϴ� 
      DEL_EMP1 ���ν��� �ۼ�

CREATE OR REPLACE PROCEDURE DEL_EMP1
IS
BEGIN
DELETE EMP1;


END;
/

@ C:\DATA\PLSQL

SQL>EXCUTE DEL_EMP1;

* SQL>SHOW ERRORS  ���� ���

ROLLBACK; ---�ǵ�����

COMMIT; ---��������


����5. ������ ������ ������� ���� 8�ڸ� �����ϰ�
       ~~~~�� ~~�� ~~���� ���·� ����ϴ� 
       BIRTH_INFO ���ν��� �ۼ�

CREATE OR REPLACE PROCEDURE BIRTH_INFO
(BIRTH VARCHAR2(8));
IS
BEGIN
BIRTH :='~~~~~~~~'; 
DBMS_OUTPUT.PUT_LINE(SUBSTR(BIRTH,1,4)||'��' ||SUBSTR(BIRTH,5,2)||' ��'||SUBSTR(BIRTH,7,2)||' ��' );
END;
/


  
CREATE OR REPLACE PROCEDURE BIRTH_INFO

IS
   BIRTH VARCHAR2(20) :='19991111';
BEGIN
   BIRTH :=SUBSTR(BIRTH,1,4)||'��'||
           SUBSTR(BIRTH,5,2)||'��'||
           SUBSTR(BIRTH,7)||'��';
DBMS_OUTPUT.PUT_LINE('�������'||BIRTH);
END;
/  


����6.. ��������� 8�ڸ��� ����(19991111)�� �Է¹޾�
       1999�� 11�� 11���� ���·� ����ϴ� 
       BIRTH_INFO2 ���ν��� �ۼ�

CREATE OR REPLACE PROCEDURE BIRTH_INFO2
(BIRTH_DATA IN VARCHAR2)
IS
   BIRTH VARCHAR2(20) := BIRTH_DATA;
BEGIN
  
   BIRTH :=SUBSTR(BIRTH,1,4)||'��'||
           SUBSTR(BIRTH,5,2)||'��'||
           SUBSTR(BIRTH,7)||'��';
DBMS_OUTPUT.PUT_LINE('������� :'||BIRTH);
END;
/  



����7. ������ ������ ��ȭ��ȣ 8�ڸ�(12345678)�� ������ ��
       010-1234-5678 �� ���·� ����ϴ�
       TEL_INFO ���ν��� �ۼ�
       ��, ��ȭ��ȣ�� ���� �� ���� ���� ����

CREATE OR REPLACE PROCEDURE TEL_INFO
(TEL_DATA IN VARCHAR2)
IS
  TEL VARCHAR2(20) := TEL_DATA;

BEGIN
  TEL := '010-'||SUBSTR(TEL,1,4)||'-'||
          SUBSTR(TEL,5);
DBMS_OUTPUT.PUT_LINE(TEL);
END;
/


--------------------------------------------------------
12/16
�����Լ�

���� ���ν����� �޸� ���� ����� �Ѱ��� �� ����
�Ѱ��� �������� Ÿ�԰� ���� ����� ��� ��

����  CREATE [OR REPLACE] FUNCTION �Լ��̸�
     [(�Ű�����1 IN|OUT|INOUT ������Ÿ��,
       �Ű�����2 IN|OUT|INOUT ������Ÿ��,
       ...)]
     
     RETURN ��ȯ������Ÿ��                --����! Ÿ���̴�.
     IS                                  --IN �Ѱܹ��� ������
       [���� ����]                        --OUT �Ѱ��� ������
    BEGIN                                --INOUT �� ��
       ó���� ����1,
       ó���� ����2,
       ...
       
       RETURN ��ȯ�����Ͱ�                
    END;
    /

���� 
     VARIABLE �����̸� ������Ÿ��(ũ��); ---�����̸� �ѱ۵� ����
     EXECUTE :�����̸� := �Լ��̸�
     EXECUTE :�����̸� := �Լ��̸�[(�Ű�������)]

���� �� ��� PRINT �����̸�;

����8. ������ ������ ������� ���� 8�ڸ� �����ϰ�
       ~~~~�� ~~�� ~~���� ���·� ����ϴ� 
       BIRTH_INFO ���ν����� �Լ�BIRTH_INFO_F�� �ۼ�



CREATE OR REPLACE FUNCTION BIRTH_INFO_F
RETURN VARCHAR2
IS
   BIRTH VARCHAR2(20) :='19991111';
BEGIN
   BIRTH :=SUBSTR(BIRTH,1,4)||'��'||
           SUBSTR(BIRTH,5,2)||'��'||
           SUBSTR(BIRTH,7)||'��';

RETURN BIRTH;
END;
/  

SQL>  VARIABLE BIRTH_OUT VARCHAR2(20);
      EXECUTE : BIRTH_OUT := BIRTH_INFO_F
      PRINT BIRTH_OUT;


����9. BIRTH_INFO2 ���ν����� BIRTH_INFO2_F �Լ��� ����

CREATE OR REPLACE FUNCTION BIRTH_INFO2_F
(BIRTH_DATA IN VARCHAR2)
RETURN VARCHAR2
IS
   BIRTH VARCHAR2(20) := BIRTH_DATA;
BEGIN
  
   BIRTH :='������� :'||SUBSTR(BIRTH,1,4)||'��'||
           SUBSTR(BIRTH,5,2)||'��'||
           SUBSTR(BIRTH,7)||'��';
RETURN BIRTH;
END;
/  

SQL> @ ���ϸ�
     VARIABLE BIRTH_OUT2 VARCHAR2(50);
     EXECUTE:BIRTH_OUT2 :=BIRTH_INFO2_F(19991111) ----�Է��Ҷ� ���� �����Ұ�!
     PRINT BIRTH_OUT2


*����10. TEL_INFO ���ν����� TEL_INFO_F �Լ��� ����


CREATE OR REPLACE FUNCTION TEL_INFO_F
(TEL_DATA IN VARCHAR2)
RETURN VARCHAR2
IS
  TEL VARCHAR2(20) := TEL_DATA;

BEGIN
  TEL := '010-'||SUBSTR(TEL,1,4)||'-'||
          SUBSTR(TEL,5);
RETURN TEL;
END;
/

SQL> @ ���ϸ�
     VARIABLE TEL_OUT VARCHAR2(30);
     EXECUTE:TEL_OUT :=TEL_INFO_F(12345678)
     PRINT TEL_OUT


*����11. �͸��� ���ν����� �ۼ��Ͽ�
        BIRTH_INFO�� ����

 
BEGIN 
BIRTH_INFO;
END;
/

USER_SOURCE  --- ���� ���ν��� , Ʈ���Ÿ� Ȯ�� �Ҽ� �ִ�.

---------------------------------------------------------------------

����Ŭ ������ ���� - Ʈ������

START WITH ����1
     ��Ʈ��� �ĺ�
     ����1�� �����ϴ� ����� ��� ��Ʈ��尡 ��
     START WITH ���� ������ ��� ��� ����� ��Ʈ ���� ����
     ����1�� ���������� ��� ����
     

CONNECT BY ����2
     �θ�� �ڽ� ���� ���� ���� ���
     �۹�ȣ = �θ��� ��ȣ
     ����2���� �ݵ�� PRIOR �����ڸ� ���Խ��Ѿ� ��
     ==> PRIOR �����ڸ� �̿��Ͽ� �θ� ����� �÷� �ĺ�
     ����2���� �������� ��� �Ұ�



PRIOR ������
  ������ ���������� ���
  CONNECT BY ������ =�� ������ ������ ���Ǵ� ������
  CONNECT BY ������ �ش� �÷��� �θ� �� �ĺ�

      

LEVEL PSEUDO COLUMN
�����ǻ��÷�
  ROWNUM,ROWID�� ���� ������ ���̺� 
  ����Ǿ� ������ ������ �ִ� �÷�ó�� ��밡��
  ������ ������ ǥ���� �� ���� ǥ��
  �Ϲ����� �÷�ó�� SELECT, WHERE, ORDER BY ������
  ��� ����

  ��Ʈ��尡 ����1, ��Ʈ�� �ڽ� ��尡 ����2, �� �ڽĳ�尡 
  ����3�� ��
  ������ �����Ͱ� �ƴ� ��� ��� ���� ����


1. T_BOARD ���̺� ����

CREATE TABLE  "T_BOARD" 
   (	"MEMO_NO" NUMBER, 
	"PMEMO_NO" NUMBER, 
	"TITLE" VARCHAR2(100), 
	"CONTENTS" VARCHAR2(4000), 
	"REG_DATE" DATE, 
	 CONSTRAINT "T_BOARD_PK" PRIMARY KEY ("MEMO_NO") ENABLE
   ) ;

CREATE OR REPLACE TRIGGER  "BI_T_BOARD" 
  before insert on "T_BOARD"               
  for each row  
begin   
  if :NEW."MEMO_NO" is null then 
    select "T_BOARD_SEQ".nextval into :NEW."MEMO_NO" from dual; 
  end if; 
end; 

/
ALTER TRIGGER  "BI_T_BOARD" ENABLE;

2. T_BOARD ���̺� ���ڵ� �߰�

INSERT INTO T_BOARD 
      VALUES(T_BOARD_SEQ.NEXTVAL,0,'FIRST','MEMO',SYSDATE)
INSERT INTO T_BOARD 
      VALUES(T_BOARD_SEQ.NEXTVAL,1,'FFF','RE:MEMO',SYSDATE)
INSERT INTO T_BOARD 
      VALUES(T_BOARD_SEQ.NEXTVAL,1,'TTT','RE:MEMO',SYSDATE)
INSERT INTO T_BOARD 
     VALUES(T_BOARD_SEQ.NEXTVAL,0,'SECOND','MEMO',SYSDATE)
INSERT INTO T_BOARD 
     VALUES(T_BOARD_SEQ.NEXTVAL,2,'AAA','MEMO',SYSDATE)

3.T_BOARD ����Ʈ - ��ü ��� ����
   �۹�ȣ    ����                 �ۼ�����
   ---------------------------------------------------------
   1        FIRST               12/16/2016
   2          FFF               12/16/2016
   5            AAA             12/16/2016
   3          TTT               12/16/2016
   4        SECOND              12/16/2016


SELECT MEMO_NO �۹�ȣ ,PMEMO_NO , LPAD('-----',2*(LEVEL-1))||TITLE ���� , REG_DATE �ۼ�����, LEVEL
FROM T_BOARD
START WITH PMEMO_NO = 0
CONNECT BY PRIOR MEMO_NO = PMEMO_NO



4.T_BOARD ����Ʈ - ��Ʈ ��常 
   �۹�ȣ    ����                 �ۼ�����
   ---------------------------------------------------------
   1        FIRST[]             12/16/2016
   4        SECOND              12/16/2016

SELECT A.MEMO_NO "�۹�ȣ" , A.TITLE ||'['|| 
NVL((SELECT COUNT(B.PMEMO_NO)
   FROM T_BOARD B
   WHERE A.MEMO_NO = B.PMEMO_NO
   GROUP BY A.MEMO_NO),0)  || ']' "����", 
   REG_DATE "�ۼ�����"
FROM T_BOARD A
WHERE LEVEL =1
START WITH PMEMO_NO =0
CONNECT BY PRIOR MEMO_NO = PMEMO_NO



5. T_BOARD �󼼺���
   �۹�ȣ    :1
   ����      :FIRST          
   �ۼ�����  :~~~~
   ����      :
   ---------------------------------------------------------
    ��� ����                      �ۼ�����
     FFF                           ~~~
       AAA                         ~~~
     TTT                           ~~~

SELECT MEMO_NO "�۹�ȣ" , TITLE "����" , REG_DATE "�ۼ�����" , CONTENTS "����" 
FROM T_BOARD

SELECT LPAD('-----',2*(LEVEL-1))||TITLE "����"  , REG_DATE "�ۼ�����" 
FROM T_BOARD
WHERE CONNECT_BY_ROOT MEMO_NO =1   ---- ROOT ��ȣ�� 1�� �͸� �Ÿ���
AND PMEMO_NO <>0  --- ROOT��ȣ 0 ����
START WITH PMEMO_NO = 0
CONNECT BY PRIOR MEMO_NO = PMEMO_NO





6.�۾���

INSERT INTO 


7.��� �ޱ�

---�θ��ȣ �ʿ�


8.PAGING -�� �������� 5���� ���  --- ��¥ ����

��ȣ         ����       
1          FIRST[2]     ---- �˾ƾ� �ϴ� ��
2          SECOND
3          SECONDD
4          SECONDDD
5          SECONDDDD    ---- �˾ƾ� �ϴ� ��
-----------------------------------------------
            1 [2] [3] [4] [5]


SELECT *
FROM (SELECT ROWNUM RNUM , MEMO_NO "�۹�ȣ" , TITLE || '[' || ((SELECT COUNT(*)
                                                                FROM T_BOARD 
                                                                WHERE  T1.MEMO_NO = CONNECT_BY_ROOT MEMO_NO
                                                                START WITH PMEMO_NO = 0
                                                                CONNECT BY PRIOR MEMO_NO = PMEMO_NO)-1) ||']' AS ����,
                                                                REG_DATE AS �ۼ���
FROM (SELECT MEMO_NO,
             TITLE,
             REG_DATE
      FROM T_BOARD
      WHERE PMEMO_NO = 0
      ORDER BY MEMO_NO DESC) T1
)
WHERE RNUM BETWEEN 1 AND 5                                                             



�� + ���� 1�� -> ���� ���ڷ� �ν��� �� 



===============================================================================


Eclipse IDE for Java EE Developers �ٿ� 

java se - window x64 �ٿ�


static web project(����ڸ��� �Ȱ��� ȭ��) - htmls(context root)

web content -> new -> html file

window -> preferences -> general -> appearance -> colors and font (�۲��� �������� ����)

preferences -> general -> enc -> web -> css, html , jsp file -> encoding -> iso 10646/unicode(utf-8)

--html�� head /head(�ݱ�)�� body /body(�ݱ�)�� ������.

head ���� meta�� title�� ������.

open web Browser -> �ּ� �ٿ��ֱ� -> Run



