오라클 사용방법

과제계정 ojs
pass 3213

sys
1

1.www.oracle.com

http://127.0.0.1:8080/apex/

2.buie4532@naver.com
  Kim05******

3.oracle database 11g expresions 다운

4.셋업후 실행.(안되면 재부팅) 비번 알기쉽게 1111

5.Application express 클릭

6.sys로 로그인 비번은 설정했던것. 1111

7.아이디 생성 dev 비번 1111

WORKSPACE HR 
ID HR
PASS 1111


si는 새로운것 찾는것
-----------------------------------------------------------------

1강 접속

- HomeSQL > Workshop > Object Browser > tables > EMP

(데이터 베이스 일하는사람은 보통 테이블에 있는 애들을 꺼내와서 쓴다.)


- HomeSQL > Workshop > SQL Commands > desc emp > Run 클릭
 (위와 동일)


- 커맨드 입력 방식(SQL plus)

 시작 > SQL Command line > connect > dev > 1111(안보임) > desc emp; 
 (위와 동일)

-----------------------------------------------------------------

보통 쿼리의 작업은 Insert , Delete , Update , Select 4가지 작업을 한다.
이 작업들을 Crud 라고 한다.

EMP과 DEPT 애들은 서로 연결되어있다.  내가할꺼랑 연결지어서 프로젝트를 진행하는게 좋음

DEPTNO 는 써있는 숫자들로 제약이 걸림 그 숫자로 사용되야어야됨
Ex(10/20/30/40)

----------오늘 어떤걸 만들고 싶다.----------
생각하고 오기

-----------summery--------

SELECT 컬럼명
FROM   테이블명
WHERE  조건식명(연산자)
       (<=>)
       (and,BETWEEN,OR,IN)
ORDER BY (DESC,ASC) -> 정렬을 한다 desc,asc 입력 안하면 default는 asc
--------------------------


-EMP > insert
Insert INTO 테이블명 (컬럼명,...)
            Values(값1,...)

-----HR 계정------

데이터 조회 Select 문

1)기본 구문: select 컬럼명 From  테이블 명

2)전체 컬럼 조회: Select *(*는 모든걸 불러온다) from employees

3)특정 컬럼 조회: Select 컬럼1,컬럼2,... From employees

4)컬럼에 별명 사용: SELECT 컬럼명 AS 별명
                  FROM 테이블명

5)컬럼에 별명 사용2: SELECT 컬럼명 AS "별 명"
                  FROM 테이블명

6)컬럼에 별명 사용3: 
                    Select 컬럼명 "별명"
                    From 테이블명

7)중복 값을 제거하고 출력: 

select DISTINCT(department_id) From employees


8)정렬하여 출력하기: SELECT department_id FROM employees ORDER BY department_id DESC

	SELECT 컬럼명
	FROM 테이블명
	ORDER BY 컬럼명 ASC(오름차순) 또는 DESC(내림차순)

9)조건조회

	SELECT 컬럼명
	FROM 테이블명
	WHERE Salary >= 조건문 
	'날짜'(mm/dd/yyyy) 와 '문자' (실제 값들은 영문의 대소문자 구분하니 조심)
---------------------------------------------------------------------------------
연산자의 분류

	1.산술연산자
	  -양수, 음수 부호표시 : +,-
	  -사칙연산: +, - ,* ,/

	2. 결합연산자
	  -두개의 문자열을 연결:||

	3.집합 연산자
	  -합집합: UNION
	  -합집합에 대한 교집합: Union all
	  -교집합: Intersect
	  -차집합: Minus

 	4. 산술 비교 연산자: >,<,>=,<=

	5. 논리 연산자
	   부정: NOT
	   동시 만조: AND
	   부분 만족: OR

	6. SQR 비교 연산자
	  특정 문자열 포함 비교: LIKE
				%(와일드카드): 갯수를 모를때
				_: 나열될 갯수를 알때
	  List 비교: IN

연산자의 우선 순위 : 모든 비교연산자  > AND > OR
		     같은 순위의 경우 좌에서 우로 적용 괄호가 항상 우선
---------------------------------------------------------------------------------

	연습1. Job_id가 'it_prog'인 사람들의 first_name, salary, 부서번호 출력
	(이름을 오름차순으로 정렬)

		SELECT job_id, first_name, salary, department_id "부서번호"
		FROM employees
		WHERE job_id = 'IT_PROG' 
		Order by first_name

	연습2. 2005년 이후에 입사한 사람들의
	       first_name, salary, 부서번호 출력
	       (입사일을 기준으로 정렬)	*01/01/2005

		SELECT hire_date, first_name, salary, department_id "부서번호"
		FROM employees
		WHERE hire_date >= '01/01/2005'
		Order by hire_date;

	연습3. employee_id와 first_name을 공백으로 연결하고 
		'사원정보'라는 별명으로 출력

		SELECT employee_id || ' ' || first_name "사원정보"
		FROM employees


	연습4. 2005년도에 입사한 사람들의
	[LIKE]	first_name, salary, 입사일, 부서번호 출력
	[WHERE]	(입사일을 기준으로 정렬) 
		
		SELECT hire_date "입사일", first_name, salary, department_id "부서번호"
		FROM employees
		WHERE  hire_date >= '01/01/2005' 
		AND hire_date < '01/01/2006'
		Order by hire_date;
	
	연습5. salary가 10000에서 20000사이의
		first_name, job_id,salary 검색
		(salary로 정렬) AND 연산자, BETWEEN연산자
	
		SELECT job_id, first_name, salary
		FROM employees
		WHERE salary >= 10000 
		AND salary <= 20000
		(이것도 됨 WHERE salary BETWEEN 10000 AND 20000)
		Order by salary;

	연습6. department_id가 30, 60, 90인 사람들의 
		department_id, first_name 출력 (OR 연산자, IN 연산자)

		SELECT     department_id, first_name
		FROM       employees
		WHERE      department_id = 30 
		OR         department_id = 60
		OR         department_id = 90;
		(이것도 됨 WHERE department_id IN(30,60,90)
		
	연습7. last_name이 K로 시작하는 사람들의
		last_name, first_name, salary 출력

		SELECT     last_name, first_name, salary
		FROM       employees
		WHERE      last_name LIKE 'K%'

	연습8. last_name이 K로 시작하고 , g로 끝나는 4글자인 사람들의
		last_name, first_name, salary 출력

		SELECT     last_name, first_name, salary
		FROM       employees
		WHERE      last_name LIKE 'K__g'

	연습9. phone_number가 가운데 번호가 500번대로 시작하는 사람들의
		first_name, phone_number 출력

		SELECT first_name, phone_number
		FROM employees
		WHERE phone_number LIKE '%.5%.%';

	연습10. phone_number가 가운데 번호가 500번대이 아닌 사람들의
		first_name, phone_number 출력

select first_name , phone_number
from employees
where phone_number <> '___.500.____'


--------------------------------16/12/02---------------------------------------


	IS NULL        -> 값이 없을때
	IS NOT NULL	: NULL 값 조회   -> 있을때

	연습1. salary에 commission_pct를 곱해서	
		보너스를 계산하여
		first_name, job_id, salary, 보너스 출력 
		(단, commission_pct가 있는 자료들만 사용)			

		SELECT   First_name, job_id, salary ,salary * commission_PCT as 보너스
		From     employees
		WHERE    Commission_pct IS NOT NULL


	연습2. CEO의 employee_id,last_name, manager_id, salary 출력


		SELECT   employee_id,last_name, manager_id, salary
		From     employees
		WHERE    manager_id IS NULL



	연습3. department_id가 100이나 50에 속하는
		사람들 중에서 salary가 5000 이상인 자료
		last_name, salary, job_id, department_id 출력
		단, department_idf를 오름차순으로 정렬하고, 
		같은 department_id인 경우 Salary를 내림차순으로 정렬

		SELECT   last_name, salary, job_id, department_id
		From     employees
		WHERE    (department_id = 50 OR department_id = 100)
		AND      Salary >= 5000
		ORDER BY department_id, Salary DESC

	연습4. salary가 10000이상이
		department_id가 80,90인 사람들의
		first_name, salary, department_id 출력

		SELECT   first_name, salary, department_id
		From     employees
		WHERE    Salary >= 10000
		And      department_id = 80
		
		UNION all

		SELECT   first_name, salary, department_id
		From     employees
		WHERE    Salary >= 10000
		And      department_id = 90


	연습5. department_id가 70 이상인 자료와
		70미만인 자료의 salary가 같은 자료 출력

SELECT   salary
From     employees
WHERE    department_id >= 70

intersect

SELECT   salary
From     employees
WHERE    department_id < 70


	연습6. department_id가 100번인 자료의 salary를 
		제외한 모든 salary 출력


SELECT   salary
From     employees

Minus

SELECT   salary
From     employees
WHERE    department_id =100

-------------------------------------------------------------------------------
3.문자형 함수

1. 모든 문자를 대문자로 전환: UPPER

2. 모든 문자를 소문자로 전환: LOWER

3. 문자를 단어별로 첫문자는 대문자
   나머지는 소문자로 전환 : INITCAP

4. 문자열 결합: CONCAT

5. 문자열의 특정부분 선택:  SUbSTR (컬럼명, 시작숫자, 추출숫자)

6. 문자열의 길이 계산: LENGTH(컬럼명)

7. 특정 문자열의 시작 위치를 지정 : INSTR(컬럼명,찾는문자,방향,번째)

8. 왼쪽 문자 자리 채움 : LPAD

9. 오른쪽 문자 자리 채움 : RPAD

10. 왼쪽 문자 지움 :  LTRIM

11. 오른쪽 문자 지움 : RTRIM

12. 왼쪽, 오른쪽 문자 선택적으로 지움 : TRIM

------------

연습1. UPPER 활용
                  last_name은 모두 대문자로 전환
	job_id는 모두 소문자로 전환,
	email은 첫문자를 대문자로 전환

SELECT   UPPER(last_name), LOWER(job_id), INITCAP(email)
From     employees


연습2.  CONCAT 활용
	last_name, salary를 출력
           사원의 연봉을 ' ~~~의 연봉: ~~~~원'으로 출력

SELECT     last_name , salary,
CONCAT  (CONCAT (last_name, '의 연봉 : '),CONCAT (salary*12, '달러')) "사원의 연봉"
From         employees


연습3.  SUbSTR 활용1
	hire_date가 12월인 사람들의
	last_name, hire_date 출력

SELECT    last_name, hire_date
From       employees
WHERE   SUBSTR(hire_date,1,2) = 12

연습4.  SUbSTR 활용2
	hire_date가 2005인 사람들의
	last_name, hire_date 출력

SELECT  last_name, hire_date
From    employees
WHERE   SUBSTR(hire_date,7) = 2005


연습4-1 INSTR을 활용
	hire_date가 2005인 사람들의
	last_name, hire_date 출력


연습 5. http://127.0.0.1:8080/index.jsp에서 
           ip만 추출

SELECT  SUBSTR('http://127.0.0.1:8080/index.jsp',
        INSTR('http://127.0.0.1:8080/index.jsp','/',1,2)+1,
        INSTR('http://127.0.0.1:8080/index.jsp','/',1,3)-INSTR('http://127.0.0.1:8080/index.jsp','/',1,2)-1)
From    dual

연습6. salary가 10000 이하인 사람들의
           salary가 7자리로 출력
          (단, 부족한 자릿수는 *표시)

SELECT  first_name,salary,
        LPAD(salary,7,'*'),
        RPAD(salary,7,'*')
From    employees
WHERE salary <= 10000


연습7. employee_id 의 왼쪽에 1을 제거, 오른쪽의 1을 제거

SELECT  employee_id ,
        LTRIM(employee_id,1),
        RTRIM(employee_id,1)
From    employees

연습8. job_id 컬럼의 IT_PROG를 모두 IT_ENGINEER로 바꿈

SELECT  job_id,
        Replace(job_id,'IT_PROG','IT_ENGINEER')
From    employees
WHERE job_id = 'IT_PROG'

연습8-1 last_name 을 At***son으로 표시
replace 사용
---------------------------------------------------------------------

숫자관련 함수
1.반올림 : ROUND
2.버림: TRUNC
3.CEIL  숫자를 올림하고 소수점 버림
4.FLOOR 숫자를 내림하고 소수점 버림

연습1.   Salary의 보너스를 0.33333을 곱하여 반올림

SELECT first_name, salary,
       salary*0.333333,
       Round(salary*0.33333,-1),
       Round(salary*0.33333,2),
       Round(salary*0.33333,1),
       Round(salary*0.33333)
From    employees

연습2. Salary의 보너스를 0.33333을 곱하여 반올림
         (단, 1000부터 9999까지 나타내자)


SELECT first_name, salary,RPAD(round(salary*0.33333,2),7,'0')
      
From    employees
WHERE ROUND(salary*0.33333,2) BETWEEN 1000 AND 9999



연습3.
SELECT first_name, salary,
       salary*0.333333 Bonus,
      salary/3 DIV,
      MOD(salary,3)MOD,
      ceil(salary*0.33333)ceil,
      Floor(salary*0.33333)Floor

From    employees

4
연습3-1. last_name과 직원들의 직무년수 표시

SELECT first_name, salary, concat(Trunc((sysdate-hire_date)/365),' 년차') AS "근속 년수"
      
From    employees



-----------------------------

 날짜 관련 함수

1. Months_BETWEEN 특정 두날짜사이의 개월수
2.ADD_MONTHS  지정된 날짜의 몇개월 후의 날짜
3.NEXT_DAY 특정 날짜에서 다음 요일ㅇ
4. LAST_Day  지정한 달의 마지막 날짜


연습1. last_name과 직원들의 근무 개월 수 표시
비교.1-1
SELECT sysdate, Hire_date,
       trunc(MONTHS_between(sysdate, Hire_date)) Months1,
       Trunc((sysdate-HIre_date)/30) Months2,
       Trunc((sysdate-HIre_date)/31) Months2,
       Trunc((sysdate-HIre_date)/365*12) Months2
From employees

연습2. hire_date와 입사 후 6개월 되는 날짜 출력

SELECT hire_date,
       ADD_MONTHs(hire_date,6)
From employees

연습3. 이번 주 토요일의 날짜 출력

SELECT SYSDATE, NEXT_DAY(sysdate,'saturday')
From employees

 연습4.이번달의 마지막 날짜

SELECT SYSDATE, LAST_Day (sysdate)
From employees

연습5. 근속 개월 수가 120개월 이상인 사람들의
          last_Name, job_id, 근속 개월수 표시

SELECT last_name,job_id,
 trunc(MONTHs_BETWEEN(sysdate,Hire_date)) "근속 개월수"
From employees
WHERE trunc(MONTHs_BETWEEN(sysdate,Hire_date)) >= 120

---------------------------------
형 변환 관련 함수
1. To_char         숫자/날짜를 문자로 바꾸는것
	19981231  => 19,981,231
	12/31/1998  => 1998년 12월 31일

	숫자를 문자로 변환 시에 사용되는 형식 요소
	9      : 일반적인 숫자 표시
	0      : 앞의 빈자리를 0으로 채움
	$      : dollar를 표시
	L      : 지역 통화 단위
	.       : 소숫점 표시
	,       : 천 단위 표시

       날짜를 문자로 변환 시에 사용되는 형식 요소
       YYYY: 4자리 연도 표시
       MM: 2자리 월로 표시
       DD: 2자리 일로 표시
       HH, HH24  : 1~12, 0~23 시간 표시
       MI   :  분 표시
       SS   :  초 표시

2. To_number   문자를 숫자로 바꾸는 것


3. To_date         문자를 날짜로 바꾸는 것


연습1. Salary를 세 자리마다 콤마로 구분하여 표시

SELECT last_name, salary,
       To_char(salary*12*10,'999,999,999.99$') "10년치 연봉",
       To_char(salary*12*10,'000,000,000.00$') "10년치 연봉"
FROM employees

연습 2. hire_date를 연/월/일의 형태로 출력
           ex) 2003/12/31

SELECT last_name,hire_date,
       To_char(hire_date,'yyyy/mm/dd')
FROM employees

연습3. '20161231'을 숫자로 변환하여 출력

SELECT TO_number('20161202','YYYY/mm/dd')
From dual

연습4. '20161231'을 날짜로 변환하여  2016/31/31의 형태로 출력

SELECT TO_DATE('20161202','YYYY/mm/dd')
From dual


--------------------------------------------------------------------------

다양한 일반 함수들

1.NULL 값을 특정 값으로 변환: NVL(모든데이터 타입), NVL2, NULLIF

nvl(a,b) : a컬럼에 null일 경우에 b 를 출력
nvl2(a,b,c) : a컬럼에 값이 존재하면 b 출력, null이면 c 값 출력
nullif(a,b) : a, b 값이 동일하면 null 출력 다르면 , a 값 출력





조건에 값을 비교하여 해당하는 조건에 알맞은 값을 반환
 (IF,ELSE와 유사)
2.DECODE  : equal 비교, 조건문이 비교적 간단
3.case         : Range 비교,조건문이 길어짐


 

연습1. commission_pct가 없는 사람의 경우 3%를 적용하여
           last_name, salary, bonus를 출력

연습2. commission_pct가 없는 사람의 경우 3%,
            기존에 있었던 경우에는 5%를 적용하여
            Last_name, salary, bonus를 출력

SELECT last_name, salary,
       salary*NVL2(commission_pct,0.05,0.03) BOUNUS
FROM employees


연습3. first_name과 last_name의 문자열 길이를 출력
            두 문자열의 길이를 비교하여
            같지않으면 first_name을 출력, 같으면 NULL로 처리

SELECT first_name,last_name, length(first_name),length(last_name), 
NULLIF(length(first_name),length(last_name))
FROM employees




연습4. department_id가 10이면 'team1',
             20이면 'team2', 30이면  'team3',
            나머지는  'team0'로 처리

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

연습5. departmen_id가 10~50이면 'teamA',
            60~100이면 'teamB', 110~150이면 'teamC',
           나머지는 'teamX'로 처리

연습6. salary가 10000미만이며 50%, 
                           20000 미만이면 30%,
                           20000 이상이면 10%의 보너스를
            계산하여 last_name, salary, bounus 출력

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

답은 하나만 있는게 아니다

날짜관련함수
형변환 관련 함수
NULL값
DECODE 정확히
CASE 범위



그룹함수 :여러 건의 데이터를 한꺼번에 처리

1. COUNT ( , ) 행이 몇개인지  전체레코드 개수
2. AVG  평균
3. SUM 합계
4. MIN 최소
5. MAX 최대

* - ALL

1. SELECT COUNT(*)
      FROM employees

   SELECT COUNT(*), COUNT(commission_pct)
      FROM employees

연습1. job_id에 'IT'가 포함된 직원들의 수 출력 
   WHERE 절 조건

SELECT JOB_ID
FROM employees
WHERE JOB_ID LIKE '%IT%'


연습.2 JOB_ID에 'IT'가 포함된 직원들 중에서
       COMMISSION_PCT가 있는 직원들의 수 출력
SELECT COUNT(commission_pct)
FROM employees
WHERE JOB_ID LIKE '%IT%'

연습3. job_id에 'IT'가 포함된 직원들의 급여 평균과 합계계산
       단, 평균 계산 시, NULL값이 있는 경우 0으로 간주하여 적용

SELECT AVG(salary) 평균, SUM(salary) 합계 
FROM employees
WHERE JOB_ID LIKE '%IT%'


SELECT AVG(NVL(salary,0)) 평균, SUM(salary) 합계 
FROM employees
WHERE JOB_ID LIKE '%IT%'

연습4. 가장큰 salary와 가장 작은 salary 출력
SELECT MAX(salary), MIN(salary),
       MAX(hire_date), MIN(hire_date)
FROM employees
WHERE JOB_ID LIKE '%IT%'

===================================

그룹 함수에 특정 조건 지정


1. GROUP BY
2. HAVING


연습1. 각 department_id 별로
       평균 급여 출력
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

SELECT와 GROUP BY 일치 할것

연습2. salary의 합계가 20000 이상인 부서의 department_id, 인원수, salary합계 출력

SELECT department_id, job_id, COUNT(*), SUM(salary)
FROM employees
WHERE SUM(salary) >= 20000
ORDER BY department_id
-> 오류발생

* GROUP BY 와 WHERE를 같이 사용 불가 -> WHERE 대신에 HAVING 사용할것(조건이 그룹함수에 걸릴때만 사용)

SELECT department_id, COUNT(*), SUM(salary)
FROM employees
HAVING SUM(salary) >= 20000
GROUP BY department_id
ORDER BY department_id


연습3. salary의 평균이 10000 이상인 department_id, 평균 salary출력

SELECT department_id,  AVG (salary)
FROM employees
HAVING AVG(salary) >= 10000
GROUP BY department_id
ORDER BY department_id


GROUP BY와 HAVING 의 순서는 상관이 없다


연습4. 각 department_id 별로 job_id가 2명 이상인 레코드의 department_id, job_id, 인원수 출력

SELECT department_id, job_id, COUNT(*)
FROM employees
HAVING COUNT(*) >=2
GROUP BY department_id, job_id
ORDER BY department_id


연습5. 각 department_id 별로 job_id가 'IT_PROG'인 사람들의 평균 급여 출력

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


그룹이 아니므로

SELECT department_id,  AVG(salary)
FROM employees
WHERE job_id = 'IT_PROG'
GROUP BY department_id
ORDER BY department_id


연습6. 각 department_id 별로 job_id가 60이상인 레코드의 department_id, job_id, 인원수, salary의 합계 출력


SELECT department_id, job_id, COUNT(*), SUM(salary)
FROM employees
where department_id >= 60
GROUP BY department_id, job_id
ORDER BY department_id



=======================================

데이터 집계 함수들
1. ROLLUP (엑셀의 부분합과 비슷하다)
2. CUBE - 전체 총계의 데이터까지 출력할수 있다.
3. GROUPING SETS 각 집합별로 그룹화


연습1. 각 department_id 별로 job_id가 60이상인 레코드의 department_id, job_id, 인원수, salary의 합계 출력
       단, 각 데이터들의 소계도 출력

SELECT department_id, job_id, COUNT(*), SUM(salary)
FROM employees
where department_id >= 60
GROUP BY ROLLUP(department_id, job_id)
ORDER BY department_id

연습2. 각 department_id 별로 job_id가 60이상인 레코드의 department_id, job_id, 인원수, salary의 합계 출력
       단, 각 데이터들의 소계 및 전체 총계 도 출력


SELECT department_id, job_id, COUNT(*), SUM(salary)
FROM employees
where department_id >= 60
GROUP BY CUBE(department_id, job_id)
ORDER BY department_id


연습3. department_id 가 100이상인 레코드의 department_id,manager_id, manager_id 별 인원수 출력

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
데이터 정의 언어

CREATE, DROP, ALTER, TUNCATE, RENAME, COMMENT


1. CREATE TABLE : 새로운 테이블 생성
2. DROP TABLE : 기본 테이블의 구조 및 모든 행 삭제
3. ALTER TABLE : 기본 테이블 변경
                 컬럼의 추가, 수정, 삭제
                제약 조건의 추가, 삭제, 활성화/비활성화
4. TRUNCATE: 기존 테이블의 구조는 남기고 모든 행 삭제
5. RENAME : 테이블 이름 변경
6. COMMENT : 테이블이나 컬럼에 주석문 달기


명명 규칙
  객체를 의미할 수 있는 적절할 이름 사용
  테이블명과 컬럼명은 반드시 문자로 시작
  (최대 30자까지 허용)
  A~Z, a~z, 0~9, _, $, # 만 사용 가능
  동일명 중복 불가
  오라클의 예약어 사용 불가

ex)10_DEPT  숫자로 시작하여 사용불가
   S-SALES  -는 사용 불가
   ORDER  오라클 예약어라 사용불가



테이블 생성
CREATE TABLE 테이블명(스키마.] 테이블명(
      컬럼명1 데이터타입[기본 형식],
      컬럼명2 데이터타입[기본 형식],
      ...

)
  
   스키마      : 객체의 집합으로 테이블의 소유자 의미
   데이터 타입 : 컬럼이 가질 데이터의 종류와 크기
   기본형식    : 데이터 입력(INSERT)시에 사용될 기본값
                 특정 값을 입력하지 않았을 경우
                 NULL값 대신에 기본 값이 자동 입력 됨


데이터 타입---------------------------
CHAR(size)       : 고정 길이 문자 데이터
                   입력된 자료의 길이와 상관없이 
                   정해진 길이만큼 저장 영역 차지
                   최소 크기는 1
VARCHAR2(size)   : 가변 길이 문자 데이터
                   실제 입력된 문자열의 길이만큼 
                   저장 영역 차지
                   최소 크기는 1 최대 4000bBYTES
NUMBER           : 최고 40자리까지 숫자 저장
                   소수점이나 부호는 길이에 포함 X
NUMBER(w)        : 최대 38자리까지 숫자 저장
NUMBER(W,D)      : d는 소수점 이하 자릿수
DATE             : 날짜 


연습1. T_MEMMO라는 메모 테이블 생성('_'를 주로 사용한다
메모 번호      : 숫자 9자리                              : memo_no
사용자 아이디  : 가변문자열 8자리                        : user_id 
메모 제목      : 가변문자열 (한글은 2BYTE가 1BYTE) 40자리: title
메모 내용      : 가변문자열 500자리                      : memo 
이모티콘       : (JPG나 파일명) 가변 문자열 20자리       : emoticon
가입일자       : 날짜                                    : reg_date 

UI 출력이미지 부터 생각해볼것
명명규칙 참고


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

not null 은 필수값
숫자 정수, 실수 precision, scale
 sequence 값이 하나씩 증가
foreign key 참조 키

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

-> 날짜는 문자열로 처리 할것, 순서 맞추어서 VALUES를 입력


INSERT INTO T_MEMO (MEMO_NO, USER_ID, TITLE, MEMO, EMOTICON, REG_DATE)
VALUES(11,
      'PAULOH',
      'ORACLE',
      'HELLO',
      'HELLO.JPG',
      '12/07/2016'
       
) 

-> T MEMO 에 넣을 입력값의 순서를 바꿀수 있다.


INSERT ROW클릭 - TEST 할수 있음


------------------------------------------------------

테이블 복사하기(CTAS)

1. 모든 컬럼을 복사
   CREATE TABLE 테이블명
   AS
   SELECT * FROM 원본테이블명

*기본값은 복사가 되지 않으므로 직접 설정해야 한다

2. 특정 컬럼을 복사
   CREATE TABLE 테이블명
   AS 
   SELECT 컬럼명1, 컬럼명2 , ....
   FROM 원본 테이블명

3. 데이터 구조만 복사해서 테이블 생성
   CREATE TABLE 테이블명
   AS
   SELECT *
   FROM 원본테이블명
   WHERE 1=0 -> 말도 안되는 조건 삽입
-> 테이블은 만들지만 조건이 말이 안되서 구조만 복사된다



연습1. employees 테이블의 모든 컬럼과 데이터를 복사하여 emp 테이블 생성

CREATE TABLE emp
AS
SELECT * FROM employees



연습2.employees 테이블의 employee_id, first_name, department_id, job_id 컬럼과 데이터들만 복사하여 emp2 테이블 생성

CREATE TABLE emp2
AS
SELECT employee_id, first_name, department_id, job_id
FROM employees



연습3. employees 테이블의 구조만 복사하여
       emp3 테이블 생성


CREATE TABLE emp3
AS
SELECT *
FROM employees
WHERE 3=1


4. 가상 컬럼 테이블 생성


CREATE TABLE t_virtual(
   no1 NUMBER,
   no2 NUMBER,
   no3 NUMBER  GENERATED 
               ALWAYS AS (NO1 + NO2)

)


연습4. t_virtual 테이블의
       NO1 컬럼에 10, NO2 컬럼에 20을 입력 


INSERT INTO t_virtual(no1,no2)
      values(10,20)




ALTER TABLE t_virtual
ADD   (no4 GENERATED ALWAYS AS ((NO1*12)+ NO2))


ALTER TABLE t_virtual
ADD   (no5 CHAR(1))


-----------------------

ALTER 명령

1. 테이블에 새로운 컬럼 추가하기
   ALTER TABLE 테이블명
   ADD (컬럼명 데이터타입(자릿수))


2. 테이블의 컬럼 이름 변경하기
   ALTER TABLE 테이블명
   RENAME COLUMN 원본컬럼명 TO 변경컬럼명


연습1.  t_virtual 테이블에 가변문자열의 10자리를 갖는 
       no6 컬럼 추가
     단, 기본값은 '6th'으로 지정

ALTER TABLE t_virtual
ADD   (no6 VARCHAR(10) DEFAULT '6TH')


INSERT INTO t_virtual(no1, no2)
VALUES(100,200)


연습2.  t_virtual 테이블에 NO6 컬럼명을 NO6TH로 변경
ALTER TABLE t_virtual
RENAME COLUMN NO6 TO NO6TH


3. 테이블 이름 변경하기

RENAME 원본테이블명 TO 변경테이블명

연습3. t_virtual 테이블의 이름을 t_nums로 변경  



4. 컬럼의 데이터타입/크기 변경

   ALTER TABLE 테이블명
   MODIFY(컬럼명 크기)


연습4. t_nums 테이블의 no5 컬럼의 크기를 5로 변경하고, 컬럼타입을 가변문자열로 수정

ALTER TABLE t_nums
MODIFY (NO5 VARCHAR(5))



5. 컬럼 삭제
 ALTER TABLE 테이블명
 DROP COLUMN 컬럼명

5.1 참조키가 설정된 컬럼 삭제
ALTER TABLE 테이블명
 DROP COLUMN 컬럼명 CASSCADE CONSTRAINTS


6. 테이블을 읽기 전용/읽기 쓰기로 변경
   ALTER TABLE 테이블명 READ ONLY/READ WRITE


연습5. t_nums 테이블의 no7 컬럼을 삭제


ALTER TABLE t_nums
 DROP COLUMN NO7


연습6. t_nums 테이블의 모든 컬럼과 데이터를 t_virtual 테이블을 생성하여 복사


CREATE TABLE t_virtual
AS
SELECT *
FROM t_nums


ALTER TABLE t_virtual
MODIFY (NO6 VARCHAR2(10) DEFAULT '6TH')


ALTER TABLE t_virtual
MODIFY NO6 VARCHAR2(10) DEFAULT '6TH'


연습7. 숫자를 저장하는 NUM 컬럼을 갖는 
      t_read 테이블을 생성하고, 
      num 컬럼에 100을 저장한 후,
      테이블을 읽기 전용으로 변경한 다음,
      num 컬럼에 200을 저장하고 표시되는 메시지 확인
-> 한줄씩 작성


CREATE TABLE t_read(
 num NUMBER)

INSERT INTO t_read(num)
values(100)

ALTER TABLE t_read
read only

INSERT INTO t_read(num)
values(200)




--------------------------------------------------------

테이블 삭제
DROP TABLE t_read
-> 읽기 전용이어도 삭제는 가능하다

DROP TABLE 테이블명
테이블 삭제 완전삭제

연습1. t_read 테이블을 삭제

-------------------------------------------



TRUNCATE 명령


TRUNCATE TABLE 테이블명
테이블의 데이터와 인덱스 삭제하고 구조만 남김

연습1. t_virtual 테이블의 모든 데이터 삭제


truncate table t_virtual


delete > 조건을 주고 지울것
where 를 함께 사용  사용하지 않으면 전부 삭제 된다

DELETE FROM emp2
where employee_id =100


---------------------

연습1. t_memo 테이블의 reg_date의 데이터타입을 timestamp로 변경
-> 시간까지 정확히 표현


하고싶은 작업

캐릭터
스킬
무기
등등


과제계정 ojs
pass 3213


--------------------------------------

12/06


DML: Data Manipulation Language -> 가급적 쿼리작성을 많이 해볼것
데이터베이스에 입력된 데이터를 조회하거나 추가, 수정, 삭제

INSERT, DELETE, UPDATE, MERGE

1. INSERT
INSERT INTO 테이블명[(컬럼명1, 컬럼명2, ...)]
VALUES(데이터1,데이터2,...)


서브쿼리로 원본 테이블의 데이터를 한꺼번에 추가
INSERT INTO 테이블명
   SELECT 컬럼명
   FROM 원본테이블명
   WHERE 조건식




2. UPDATE
UPDATE 테이블명
SET 컬럼명 = 변경할값
WHERE 조건식

UPDATE 테이블명
SET 컬럼명1 = 변경할값1,
    컬럼명2 = 변경할값2,
         ...
WHERE 조건식




연습1.employees 테이블의 구조를 복사하여 
      first_name, department_id, salary, hire_date
      컬럼들로 구성된 emp4 테이블 생성
->구조만

create table emp4
as
select first_name, department_id, salary, hire_date
from employees
where 2=1

연습2. emp4 테이블에 first_name은 'Min',
       부서번호는 30, 급여는 10000,
       입사일자는 2016년 6월 6일의 레코드 추가


insert into emp4(first_name, department_id, salary, hire_date)
values('Min',
        30,
        10000,
        '06/06/2016'
)


-> 날짜는 문자열

연습3. emp4 테이블에 first_name은 'Yun',
       부서번호는 20, 입사일자는 2016년 10월 10일의 레코드추가


insert into emp4(first_name, department_id, hire_date)
values('Yun',
        20,
        '10/10/2016'
)



연습4. employees 테이블에서 department_id가 100이상인
       데이터들만 복사하여 emp4 테이블에 추가



insert into emp4
    select first_name, department_id, salary, hire_date
    from employees
    where department_id >=100

-> sub 쿼리 형태이다





연습5. EMP4 테이블의 first_name이 Yun인 사람의 
       salary를 1000으로 변경



update emp4
    set salary = 1000
     where first_name ='Yun'


연습6. emp4 테이블의 department_id가 30인 사람의 department_id를 10으로 salary를 1000으로 변경


update emp4
    set salary = 1000,
        department_id = 10
     where  department_id = 30


연습7. emp4 테이블의 employee_id 컬럼을 추가하고 
       모든 employee_id를 99로 지정

alter table emp4
    add (employee_id number(3))


update emp4
    set employee_id = 99
    where employee_id is null



3. DELETE

DELETE FROM EMP4
WHERE  조건식  -> 조건식 없으면 모두 삭제 되니 주의!





연습8. emp4 테이블의 department_id가 100인 사람들의 레코드를 모두 삭제

DELETE 
FROM emp4
    where DEPARTMENT_id = 100


연습9. emp4 테이블의 department_id가 10 이거나 20인 레코드를 모두 삭제
DELETE 
FROM emp4
    where DEPARTMENT_id = 10
    or DEPARTMENT_id = 20

in(10,20) 도 사용 가능하다 ?


INSERT INTO  T_DATA01 VALUES('101',100,1,500)	
INSERT INTO  T_DATA01 VALUES('102',101,1,400)	
INSERT INTO  T_DATA01 VALUES('103',102,1,300)	

INSERT INTO  T_DATA02 VALUES('201',104,1,600)
INSERT INTO  T_DATA02 VALUES('202',100,1,500)
INSERT INTO  T_DATA02 VALUES('203',102,1,300)




4. MERGE
구조가 같은 두 개의 테이블을 하나의 테이블로 병합 수행하는 테이블에 기존에 존재하는 행이 있다면
새로운 값으로 갱신(UPDATE)되고, 존재하지 않으면 새로운 행으로 추가(INSERT)


MERGE INTO 병합테이블명 병합테이블별명
USING      원본테이블명 원본테이블별명
ON         (조건식)
WHEN MATCHED THEN 조건이 일치할 경우의 처리
WHEN NOT MATCHED THEN 조건이 불일치할 경우의 처리


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




연습10. employees 테이블의 데이터 중 
        employee_id가 100,110인 레코드들의 
        employee_id, last_name, job_id,
        salary,hire_date 를 복사하여 temp01 테이블 생성

create table temp01
as
select employee_id, last_name, job_id, salary, hire_date
from employees
where employee_id = 100
or employee_id = 110



연습11. employees 테이블의 데이터 중
        job_id가 'IT_PROG'인 레코드들의 
        employee_id, last_name, job_id,
        salary, hire_date를 복사하여 temp02 테이블 생성

create table temp02
as
select employee_id, last_name, job_id, salary, hire_date
from employees
where job_id = 'IT_PROG'


연습12. temp02 테이블의 job_id를 모두 test로 변경


update temp02
set job_id = 'test'




연습13. temp02 테이블에 123, Han, job_id, 20000, 오늘날짜
        값을 갖는 레코드 추가


insert into temp02
values(123, 'Han', 'job_id', 20000, sysdate)





연습14. temp01에 temp02 테이블을 병합
        병합 기준은 employee_id의 일치 여부
        일치한다면 기존 데이터 업데이트
        일치하지 않으면 신규 데이터 추가
        -> 별명 사용하지 않고 해보기


merge into temp01
using temp02
on (temp01.employee_id =temp02.employee_id)
when matched then 
    update 
    set temp01.last_name=temp02.last_name, temp01.job_id=temp02.job_id, temp01.salary=temp02.salary, temp01.hire_date=temp02.hire_date
when not matched then
    insert 
    values(temp02.employee_id, temp02.last_name, temp02.job_id, temp02.salary, temp02.hire_date)




연습15. emp4 테이블의 Min의 department_id를 
        shelley의 department_id로 변경

update emp4
set department_id = (select department_id from emp4 where first_name = 'Shelley')
where first_name = 'Min'
->서브쿼리


연습 16. emp4 테이블의 데이터 중 departments 테이블에서 참조하여
 department_name이 Accounting인 레코드를 모두 삭제


delete from emp4
where department_id = (select department_id from departments where department_name = 'Accounting')

->서브쿼리



------------------------------------

TCL ; Transaction Control Language
트랜잭션 제어 언어
DML 작업 후에는 반드시 실시해야 데이터베이스에 반영 됨

1. COMMIT -> 반영
2. ROLLBACK  -> 취소


===========================================

DCL ; Data Control Language
데이터 제어 언어

1. GRANT
2. REVOKE



===========================================

제약 조건

1. PRIMARY KEY(기본키)
   NOT NULL과 UNIQUE를 결합한 형태
   중복되지 않는 값으로 설정
   (다른 레코드들과 구분)
   

2. FOREIGN KEY(외래키, 참조키)
   참조되는 테이블의 컬럼의 값이 존재하면 허용



3. UNIQUE
   중복된 값을 허용 하지 않는다
   항상 유일한 값을 가지도록 설정



4. CHECK
   저장 가능한 데이터 값의 범위나 조건을 설정하여
   지정된 값만 허용


5. NOT NULL
    NULL을 허용하지 않는다.


연습1. 회원 테이블 T_MEMBER 생성
       항목          데이터타입    자릿수            제약조건    컬럼명
   ----------------------------------------------------------------------
    
       아이디         VARCHAR2       8               기본키      USER_ID
       비밀번호       VARCHAR2       10              NOT NULL    USER_PW          
       이메일         VARCHAR2       30              UNIQUE      EMAIL
       성별           CHAR           1               CHECK       GENDER 
       전화번호       VARCHAR2       13                          PHONE
       이름           VARCHAR2       10                          USER_NM
       생년월일       DATE           월/일/년도                  BIRTH



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

-> 데이터가 없으므로 데이터를 넣어주면 해결할수 있다



The TABLE operation was not successful for the following reason:
ORA-02297: cannot disable constraint (HR.T_MEMBER_PK) - dependencies exist
-> 참조중




-----------------------------------------------------------------

12/07



join
-내가 필요한 데이터를 두개의 테이블에서 가져온다

1. cartesian product  ->이것으로 기억
   cross join
   특별한 키워드 없이 select문의 from 절에 
   테이블명을 콤마로 구분하여 연속 기술
   얻어지는 컬럼의 수는 두 테이블을 더한 것이 되고,
   레코드 수는 두 테이블의 행을 곱한 결과
   
  - 두 테이블을 곱하여 합치는 타입 

2. equi join
   where절에 기술되는 조인 조건을 검사해서
   양쪽 테이블에 '같은 값'이 있으면 가져옴 

- 공통의 항목이 있는 두 테이블을 합칠때 쓰는 타입

3. non-equi join
   한 컬럼의 값이 다른 컬럼의 값과 
   정확히 일치하지 않는 경우에 사용
-> 컬럼은 같지 않으나 범위값이 존재 할때 사용 가능

- 공통항목이 없는 두 테이블을 합칠때 쓰는 타입.
  공통항목이 없으므로 별명은 쓸 필요가 없다


4. outer join
   join 조건을 만족하지 않은 경우에도
   모든 행 출력
   left   [outer] join  :왼쪽 기준으로 출력
   right  [outer] join  :오른쪽을 기준으로 출력
   full   [outer] join  :양쪽모두

-누락된 정보들을 불러올때 사용하는 타입

5. self join
한 테이블의 행을 같은 테이블에 있는 행과 연결 
마치 하나의 테이블을 두 개인 것처럼 사용하여
조인 (equi join 활용-> 별명을 다르게 설정한다)







연습1. t_data01 테이블과 t_data02 테이블을 
       카테시안 프로덕트 구하기

select *
from t_data01, t_data02

select *
from t_data01 cross join t_data02

-> 결과는 똑같으나 join을 하는 의미는 없다. 결과값이 너무 많아지기에 무의미 하다.



연습2. employees 테이블과 departments 테이블을 
       join하여 
       employee_id, first_name, department_id, department_name을 출력
       단, department_id가 100번인 데이터들만 조회


select employees.employee_id, 
       employees.first_name, 
       employees.department_id, 
       departments.department_name
from employees , departments
where employees.department_id = departments.department_id
-> 가장 많이 사용하게 될것이다.


select e.employee_id, e.first_name, e.department_id, d.department_name
from employees e , departments d
where e.department_id = d.department_id
-> from 절에 별명 사용
   결과는 같고 과정이 짧아질수 있다.


select e.employee_id, e.first_name, e.department_id, d.department_name
from employees e join departments d
on e.department_id = d.department_id
-> join, on 사용 결과는 같다.


select e.employee_id, e.first_name, e.department_id, d.department_name
from employees e , departments d
where e.department_id = d.department_id
and e.department_id = 100

또는

select e.employee_id, e.first_name, e.department_id, d.department_name
from employees e , departments d
where e.department_id =100 and d.department_id = 100




연습3. employees 테이블과 salary_grade 테이블을 
       조인하여 first_name, salary, grade 컬럼의
       레코드 출력
       단, grade는 salary가 salary_grade 테이블의
       low_sal과 high_sal 컬럼 범위값일 것

*non-equi join 
컬럼값이 일치 하지 않고 범위 값만 존재할때

select first_name , salary , grade
from employees, salary_grade
where salary between low_sal and high_sal
order by grade

select first_name , salary , grade
from employees join salary_grade
on salary between low_sal and high_sal
order by grade



연습4. employees 테이블과 salary_grade 테이블을
       조인하여 전체 salary별 grade와 
       각 grade의 갯수 출력
       단, grade의 소계가 10 이상인 레코드 들만 출력

출력형태 : grade   소계
          ------------------ 
           1등급   ~~개
           2등급   ~~개


select grade|| ' 등급' , count(*)|| ' 개'
from employees , salary_grade
where salary between low_sal and high_sal
group by grade
order by grade

-> || shift +\ 


문자는 ' ' , 별명은 " " 사용


select grade|| ' 등급' as "grade" , concat(lpad(count(*),2,'0'),'개') as "소계"
from employees , salary_grade
where salary between low_sal and high_sal
group by grade
order by grade


->group에 조건이 걸리게 되면 


select grade|| ' 등급' as "grade" , concat(lpad(count(*),2,'0'),'개') as "소계"
from employees , salary_grade
where salary between low_sal and high_sal
group by grade
having count(*) >= 10
order by grade

-> having 사용



연습5. employees 테이블과 departments 테이블을 
       join하여 
       last_name, job_id, department_id, department_name을 출력


select e.last_name , e.job_id, e.department_id, d.department_name
from employees e , departments d
where  e.department_id = d.department_id



left outer join 사용

select e.last_name , e.job_id, e.department_id, d.department_name
from employees e , departments d
where  e.department_id = d.department_id (+)

또는

select e.last_name , e.job_id, e.department_id, d.department_name
from employees e left outer join departments d
on  e.department_id = d.department_id


right outer join 사용

select e.last_name , e.job_id, e.department_id, d.department_name
from employees e , departments d
where  e.department_id(+) = d.department_id

또는

select e.last_name , e.job_id, e.department_id, d.department_name
from employees e right outer join departments d
on  e.department_id = d.department_id


->오른쪽에 데이터가 있고 왼쪽에는 없을때 (값이 없는 쪽에 (+))




연습6. employees 테이블과 departments 테이블을 
       join하여 
       각 부서별 급여의 합을
       급여합의 높은 순으로 검색하여
       department_id , department_name,
       부서별 급여의 합(세자리마다,로 구분)으로 출력
       단, 부서아이디가 없는 레코드들도 출력


  출력형태 : 부서아이디 부서명 부서급여합
             -----------------------------------
             10         ~~~     ~~,~~~

select e.department_id 부서아이디 , d.department_name 부서명 , to_char(sum(salary),'999,999') "부서 급여합"
from employees e ,  departments d
where e.department_id = d.department_id(+)
group by  e.department_id ,d.department_name
order by sum(salary) desc


또는

select e.department_id 부서아이디 , d.department_name 부서명 , to_char(sum(salary),'999,999') "부서 급여합"
from employees e left outer join  departments d
on e.department_id = d.department_id
group by  e.department_id ,d.department_name
order by sum(salary) desc




연습7. employees 테이블을 셀프 조인하여
       employee_id, first_name, manager_id, manager_name을 출력
       단, manager가 없는 사람들의 데이터는 
       ceo로 출력


select a.employee_id, a.first_name, a.manager_id, nvl(b.first_name,'ceo') as "manager_name"
from employees a left outer join  employees b
on a.manager_id = b.employee_id
order by a.employee_id




==================================================================


서브 쿼리 sub query

하나의 테이블에서 검색한 결과를
다른 테이블에 전달하여
새로운 결과를 검색

하나의 select 구문(메인 쿼리) 안에 포함된 
또 하나의 select 구문(서브 쿼리)


비교 연산자의 오른쪽에 반드시 괄호로 둘러싸서 명시
*특별한 경우를 제외하고 order by를 사용하면 안된다!
-> 서브쿼리 안에서만



where salary >= ()

메인쿼리
select ~~~
from ~~~       서브쿼리
where ~~~ >= (select ~~
having        from ~~)




1. 단일행 서브 쿼리
   수행 결과 오직 하나의 행만 반환
   메인 쿼리의 where /having 절에서 단일 행 비교 연산자만
   사용해야 함(=, >, >=, <=, <, < >)

where 절과 서브쿼리의 select절 일치 하여야 함

- 서브 쿼리의 결과가 하나의 행일때 사용한다. 결과값도 하나

2. 다중행 서브 쿼리
3. 스칼라 서브 쿼리
4. 상관형 서브 쿼리


연습1. lex와 같은 부서 사람들의 목록 출력
    서브 쿼리 적용 전
      lex의 department_id(90)를 찾는다.
      찾아낸 department_id와 일치하는
      사람들의 목록 출력한다.



select first_name , department_id
from employees
where department_id = ( select department_id
                       from employees
                       where first_name = 'Lex' 
)






연습2. 평균 salary 보다 적은 salary를 받는 사람들의 
       first_name, salary, job_id를 출력
       단, 평균 salary는 소수점 이하 반올림하여 
       salary 내림차순 정렬
      


1 - 평균 salary보다 적은 salary 받는 사람들

select first_name , salary , job_id
from employees
where salary <
              (select round(avg(salary))
               from employees
               )
order by salary desc




연습3. 가장 낮은 salary 를 받는 job_id에 대해
       해당하는 job_id와 평균 급여 출력


select  job_id, avg(salary) as "평균 급여"
from employees
where job_id =  
(
select job_id
from employees
where salary =

(select min(salary) from employees)
   )          
group by job_id


???연습4. 가장 낮은 평균 salary를 받는 job_id에 대해 
       해당하는 job_id와 평균 salary 출력




select  job_id, avg(salary) as "평균 급여"
from employees
having avg(salary) =
(
select min(avg(salary))
from employees 
group by job_id  

)
group by job_id


오늘 배운것 정리하여 메일로 송부




================================================================================


12/8

2. 다중행 서브 쿼리
반드시 다중행 연산자와 함께 사용해야 함


비교 조건 서브 쿼리의 결과 중에서
in: 하나라도 일치하는 경우
any,some    : 하나 이상이 일치하는 경우
all         : 모든 값이 일치하는 경우
exist       : 만족하는 값이 하나라도 존재하는 경우


any/ all      : 주로  =, >, < , >= , <= , <> 와 같이 사용
 > any        : 최소값보다 큼
 > all        : 최대값보다 큼
 < any        : 최대값보다 작음
 < all        : 최소값보다 작음

3.스칼라 서브쿼리
4. 상관형 서브쿼리


연습1. 각 department_id 별로 최소 급여를 받는 사원들의 
       first_name, salary, department_id 출력


select first_name, salary, department_id
from employees
where (department_id, salary) in
(select department_id , min(salary)
 from employees
 group by department_id)





연습2. department_id가 30번인 사원들의 salary중  
       가장 큰 값보다 더 많은 salary를 받는 사람들의 
       first_name, salary 출력


 select first_name, salary
from employees
where salary  > all
(select salary
from employees
where department_id = 30)



연습3. department_id가 30번인 사원들의 salary중  
       가장 작은 값보다 더 많은 salary를 받는 사람들의 
       first_name, salary 출력

select first_name, salary
from employees
where salary  > any
(select salary
from employees
where department_id = 30)



연습4. commisstion_pct가 0.1,0.15 두값보다 모두 큰/둘 중의 어느 한 값보다 큰
       사람들의 first_name, commisstion_pct 출력(commission_pct 내림 차순 정렬)



select first_name , commission_pct
from employees
where commission_pct > all( 0.1 , 0.15)
order by commission_pct

-> 모두 큰
 

select first_name , commission_pct
from employees
where commission_pct > any( 0.1 , 0.15)
order by commission_pct


->어느 한값 보다 큰



연습5. salary가 10000이상인 사원들의 department_id 와 
       같은 department_id의 
       first_name, salary , department_id 출력       


select first_name , salary, department_id
from employees
where department_id in
(select department_id
from employees
where salary >= 10000)

또는

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
- 중복 제거


================================

스칼라 서브쿼리

메인쿼리의 select 절에서 함수처럼 사용되는 쿼리문

연습1. employees  테이블과 departments 테이블을 조인하여 first_name, department_name 출력

select first_name, department_id,
       (select department_name
        from departments d
        where e.department_id=d.department_id) "부서 이름"
from employees e
order by department_id

-> 처리해야할 데이터가 적을때 사용하고 많을때는 equi join을 사용한다. 



=======================================


상관형 서브 쿼리

메인 쿼리에서 넘긴 데이터를 서브 쿼리가 처리한 후
돌려주는 방식


연습1. 사원들의 소속 부서의 평균 salary 보다
      적은 salary를 받는 사람들의 first_name,
      salary, department_id 목록 출력

?

select first_name, salary, department_id
from employees
where salary <any (select avg(salary) 
from employees
group by department_id
)
- 작성해본 답



select first_name, salary, department_id
from employees e
where salary < (select avg(salary)
                from employees ee
                where e.department_id = ee.department_id
                group by ee.department_id
)


-> where절에 서브쿼리와 조인 사용




select a.first_name, a.salary, b.department_id
from employees a, (select department_id , avg(salary) as avg
                    from employees 
                  group by department_id) b
where a.department_id = b.department_id
and   a.salary < b.avg
order by department_id , salary



-> from 절에 서브쿼리사용


select first_name, salary, department_id
from employees outer
where salary < (select avg(salary)
                from employees
                where department_id = outer.department_id
                
)
order by department_id, salary

-상관쿼리 사용

select first_name, salary, department_id
from employees outer
where salary < (select avg(salary)
                from employees
                where outer.department_id = department_id
                
)
order by department_id, salary

또는

select first_name, salary, department_id
from employees a
where salary < (select avg(salary)
                from employees
                where a.department_id = department_id
                
)
order by department_id, salary



연습2. department_id별로 department_id,
       department_name, 평균 salary와 
       각 부서가 위치한 city 및 country_name을
       조회
       단, 평균 salary가 높은 순서로 정렬하되
       소수점 이하 자릿수는 버림


select e.department_id, d.department_name
       , trunc(avg(e.salary)) "평균 salary" , l.city, c.country_name
from employees e, departments d, countries c, locations l
where c.country_id = l.country_id
and  d.department_id = e.department_id
and l.location_id = d.location_id
group by e.department_id, d.department_name, l.city, c.country_name
order by trunc(avg(e.salary)) desc




==============================================================

view

물리적인 테이블에 근거한 논리적인 가상 테이블
실질적인 데이터는 없으나,
실제 테이블을 사용하는 것과 동일하게 사용 가능
기존 테이블에서 파생된 객체로,
기본 테이블에 대한 하나의 쿼리문


1.create view 
뷰생성

2.create or replace view
 뷰를 생성 하거나 기존 뷰가 존재하는 경우 변경

3.force
기존의 존재 여부와 상관 없이 뷰생성

4.with read only
select만 가능하도록 처리
생략시에는, insert/delete/update 모두 가능

5.with check option

서브 쿼리문에 where 절을 추가하여
변경 금지 설정

-------------------------------------------------

뷰의 종류

1. 단순뷰
뷰를 생성할 서브쿼리에 조인 조건이 안 들어가고
1개의 테이블로 만들어 지는 뷰
2. 복합뷰
뷰를 생성할 서브쿼리에 여러개의 테이블이 
조인되어 만들어지는 뷰

3. 인라인 뷰
create view로 생성된 뷰가 아니라
문장 내에서 임시로 생선된 형태의 뷰
from 절에 서브 쿼리로 기술



연습1. job_id 가 'it_prog'인 사원들이 소속되어 있는
       last_name, job_id, job_title, department_name 출력


select e.last_name, e.job_id , j.job_title, d.department_name
from (select last_name,job_id ,department_id
                     from employees
                   where job_id = 'IT_PROG') e, jobs j
                , departments d
where e.job_id = j.job_id
and e.department_id = d.department_id


연습2. employees 테이블을 이용하여
       employee_id, last_name, job_id, salary 컬럼을 갖는
       단순 뷰 v_emp 생성
       단, 기존의 뷰가 존재하지 않는 경우에만)


create view "v_emp"
("employee_id", "last_name", "job_id", "salary")as
select
e.employee_id,
e.last_name,
e.job_id,
e.salary
from employees e


또는

create view v_emp
as
select
employee_id,
last_name,
job_id,
salary
from employees



연습3. employees 테이블을 이용하여
       employee_id, last_name, job_id, salary 컬럼을 
       각각 사원번호, 성명, 직무번호, 급여의 이름으로
       단순 뷰 v_emp 생성
       단, 기존의 뷰가 존재하는 경우
           새로운 뷰로 변경되도록 처리)
       

create or replace force view v_emp
("사원번호","성명","직무번호","급여") as
select
employee_id,
last_name,
job_id,
salary
from employees


연습4. department_id 별로 salary의 총액과 평균을 
       조회만 할 수 있는 V_salary_info 뷰를 작성


create or replace force view "V_salary_info"
(부서번호,급여총액,급여평균)
as
select department_id , sum(salary), avg(salary)
from employees
group by department_id
WITH READ ONLY
-> "" 넣어줘야 대소문자 구분하여 입력된다.


update v_salary_info
set  sum = 10000
where department_id = 100

->ORA-01732: data manipulation operation not legal on this view
읽기전용이라 조회만 가능

update v_emp
set 성명 = 'k'
where 사원번호 = 100
-> 변경 가능



연습5. employees 테이블과 departments 테이블을 조인하여
       employee_id, last_name, salary, department_name
       컬럼을 
       각각 emp_id, emp_name, sal, dept_name의 이름으로 
       V_EMP_INFO 뷰 생성
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



*ROWNUM 검색된 결과 앞에 행번호를 붙인다

select rownum,last_name, salary
from employees


SELECT ROWNUM NO , LAST_NAME, SALARY
FROM (SELECT LAST_NAME, SALARY
      FROM EMPLOYEES
      ORDER BY SALARY)
-> 인라인 VIEW



CREATE VIEW "V_SAL_NUM" 
(LAST_NAME, SALARY )
AS
SELECT
LAST_NAME, SALARY
FROM 
EMPLOYEES
ORDER BY SALARY
->VIEW 생성


SELECT ROWNUM, LAST_NAME ,SALARY
FROM V_SAL_NUM
->VIEW 생성후 SELECT



DROP VIEW V_SALARY_INFO
-> VIEW 삭제


DROP TABLE T_MEMO2
->  TABLE 삭제


연습6. employees 테이블에서 job_id가 it_prog이거나
       pu_clerk인 데이터들의 employee_id, last_name,
       job_id, salary 컬럼을 갖는 v_emp_view 뷰생성
       단, 조건으로 지정된 컬럼 값 변경 금지 설정

 6-1   salary가 5000이상인 사람들의 job_id를 
       IT_GUY로 변경  



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
체크 옵션을 설정하였기 때문에 변경 불가

*
뷰를 업데이트 하면 원본 테이블도 변경된다


연습7. employees 테이블에서 hire_date 가 가장 빠른 사람
       5명을 조회하는 v_emp_hire 뷰를 생성


create or replace force view v_emp_hire
(no, hire_date)
as
select rownum no, hire_date
from (select  hire_date
      from employees
      order by hire_date)
where rownum <= 5



연습8. employees 테이블에서 salary 상위 10명인
       사람들의 last_name, job_id, salary를 출력


create or replace force view v_emp_salary
as
select last_name, job_id ,salary
from (select  salary
      from employees
      order by salary desc)
where salary <= 10




연습9. department_id별 최소/최대/평균 급여를
       출력하는 v_dept_info 작성
       단, 평균급여는 반올림
       출력형태 : 부서명 최소급여 최대급여 평균급여
                  ---------------------------------


create or replace force view v_dept_info
 ("부서명","최소급여","최대급여","평균급여")
as
select d.department_name, min(e.salary), max(e.salary), round(avg(e.salary))
from employees e, departments d
where e.department_id = d.department_id(+)
group by d.department_name
order by d.department_name
-> 컬럼 이름에 별명을 붙인다



==================================================
sequence -> 메모에 번호를 정할때 사용한다

연속적으로 자동 생성되는 숫자


CREATE SEQUENCE 시퀀스명
START WITH      시작값
INCREMENT BY    증가값
MAXVALUE        최대값
MINVALUE        최소값
CYCLE           재시작(순환)여부
CACHE           캐쉬사용여부
                메모리 상에서 시퀀스 관리 지정
                기본 값은 20 -> NOCACHE




시퀀스 사용
시퀀스명.NEXTVAL



연습1. 시작값 1, 최소값 1, 최대값 9999999999999999,
       시퀀스값은 순환해서 사용하지 않도록
       T_MEMO_SEQ 시퀀스를 생성




연습2. T_MEMO_SEQ 시퀀스를 이용하여
       T_MEMO 테이블에 메모 하나 추가
       
INSERT INTO T_MEMO
VALUES
(T_MEMO_SEQ.NEXTVAL , 'ABC', 'LAST NAME', 'ORACLE MEMO', 'MEMO.JPG', SYSDATE)

SELECT T_MEMO_SEQ.CURRVAL
FROM DUAL


-> sequence의 LAST NUMBER 값이 NEXT VALUE 값이 된다

==============================================

INDEX  

SQL 명령문의 처리 속도를 향상 시키기 위해서
컬럼에 대해서 생성하는 오라클 객체

기본키나 유일키는 데이터 무결성을 확인하기 위해서
수시로 데이터를 검색하기 때문에
빠른 조회를 목적으로 
오라클에서 내부적으로 해당 컬럼에 자동으로 인덱스 생성

장점 : 검색 속도가 빨라짐
       시스템에 걸리는 부하를 줄여서
       전체 시스템 성능 향상

단점 : 인덱스를 위한 추가적인 공간 및 생성 시간 소요
       DML이 자주 일어날 경우에는 오히려 성능 저하

ROWID
오라클의 모든 데이터가 갖는 고유의 주소
(데이터를 찾아갈 때 필요)
이 ROWID 정보를 모아서 갖고 있는 것이 인덱스

인덱스를 사용해야 하는 경우
-테이블에 행의 수가 많을 때
-WHERE 절에 특정 컬럼이 많이 사용될 때
-검색 결과가 전체 데이터의 2~4% 정도일 때
-조인에 자주 사용되는 컬럼이나 NULL을 포함하는 컬럼이 많은 경우


인덱스를 사용하지 말아야 하는 경우
-테이블에 행의 수가 적을 때
-WHERE 절에 해당 컬럼이 자주 사용되지 않을 때
-검색 결과가 전체 데이터의 10~15% 이상일 때
-테이블에 DML작업이 많은 경우

연습1. 서브 쿼리를 이용하여 EMP테이블의 모든 데이터를
       EMP3 테이블에 추가하고,
       LAST_NAME 컬럼에 EMP3_LASTNAME_IDX라는
       인덱스 생성


INSERT INTO EMP3
SELECT *
FROM EMP

INSERT INTO EMP3(EMPLOYEE_ID, LAST_NAME, EMAIL, JOB_ID, HIRE_DATE)
VALUES(123456, 'KIM', 'KIM@KIM.COM', 'IT_PROG', SYSDATE)





*연습2. 위에서 생성한 인덱스 삭제

DROP INDEX EMP3_LASTNAME_IDX


인덱스 종류
1. UNIQUE INDEX
   기본 키나 유일 키처럼 유일한 값을 갖는 컬럼에 대해
   생성하는 인덱스 
   인덱스 내의 키 값 중복 X

   CREATE UNIQUE INDEX 인덱스명
   ON                  원본테이블(원하는 컬럼명)

연습3. T_DATA01 테이블의 DATA_NO 컬럼을
       DATA1_NO_IDX 라는 이름의 UNIQUE 인덱스 생성

  CREATE UNIQUE INDEX DATA1_NO_IDX
   ON                  T_DATA01(DATA_NO)     

2. NON-UNIQUE INDEX
   
   중복된 데이터를 갖는 컬럼에 대해서 생성하는 인덱스

인덱스 생성

CREATE INDEX 인덱스 이름
ON           원본테이블명(원하는 컬럼명)


CREATE INDEX EMP3_LASTNAME_IDX
ON           EMP3(LAST_NAME)



3. FUNCTION BASED INDEX
   함수 기반 인덱스
   WHRER 절에 산술 표현 또는 함수를 사용하는 경우
   이를 적용하여 생성하는 인덱스

   EX)WHERE SALARY = 10000     -> 적용안됨
      WHERE SALARY*12 = 120000  => 산술표현이 적용된 수식

연습4. EMP3 테이블의 SALARY 컬럼에 
       EMP3_SAL_IDX라는 이름의 인덱스 생성하고,
       SALARY*12가 120000인 데이터의 
       LAST_NAME, SALARY, SALARY*12를 출력

CREATE INDEX EMP3_SAL_IDX
ON           EMP3(SALARY)       

SELECT DISTINCT LAST_NAME, SALARY, SALARY*12
FROM EMP3
WHERE SALARY*12 =120000


연습5. EMP3 테이블의 SALARY 컬럼에 12배한 값으로 
       EMP3_SAL_FBIDX라는 이름의 인덱스 생성하고,
       SALARY*12가 120000인 데이터의 
       LAST_NAME, SALARY, SALARY*12를 출력

CREATE INDEX EMP3_SAL_FBIDX
ON           EMP3(SALARY*12)       

SELECT DISTINCT LAST_NAME, SALARY, SALARY*12
FROM EMP3
WHERE SALARY*12 =120000

4. COMPOSITE INDEX
결합 인덱스

두 개 이상의 컬럼으로 구성하는 인덱스
WHERE 절에서 두 개 이상의 조건이 AND 로 연결되는
경우에 많이 사용
잘못 만들면 오히려 성능 악화 가능


연습6. EMP3 테이블에서 SALARY가 10000 이상이고,
      JOB_ID가 MK_MAN인 데이터 검색해 보고
      SALARY와 JOB_ID를 복합 인덱스로
      EMP3_SAL_JOB_IDX 생성

CREATE INDEX EMP3_SAL_JOB_IDX
ON           EMP3(SALARY , JOB_ID)       

SELECT *
FROM EMP3
WHERE SALARY >= 10000
AND JOB_ID = 'MK_MAN'


* 시퀀스와 인덱스 만들기 -> 캡쳐하여 메일로 보내기
======================================================
12/13

Q&A 테이블 생성

UI 구성

1.Q&A 게시판

no.  질문           작성일자       작성자     답변여부
-----------------------------------------------------
1    첫번째 질문     12/31/2016    abc        X
2    그냥 질문       11/30/2016    bbb        X
3    관리자님께      11/11/2016    ccc        O 
                                                [질문하기]
========================================================

2.Q&A 상세보기

질문번호  1                 조회수     1
질문      첫번째 질문        추천수     0
작성일자  12/31/2016
작성자    abc
질문 내용  ~~~~~~~~~~ ??

[수정][삭제]                               [추천하기]
-----------------------------------------------------
답변  아직 답변이 등록되지 않았습니다. -> 등록안된 경우 [등록]
 
      첫번째 답변                                    [수정]
                                                    [삭제]

등록일자 12/31/2016            

===========================================================

3. Q&A 게시판

질문하기
-----------------------------------------------------
질문      첫번째 질문        
작성자    abc
질문 내용  ~~~~~~~~~~ ??



답변하기
-----------------------------------------------------
질문      첫번째 질문        
질문 내용  ~~~~~~~~~~ ??
질문 번호  1
답변     ~~~~~~~~~~~~!!


*답변은 관리자만 질문은 회원만 
1. 회원테이블
테이블이름 : T_MEMBER
항목           컬럼명         데이터타입(크기)            제약조건
-------------------------------------------------------




2. T_QNA 테이블 하나로 
테이블 이름: T_QNA
항목           컬럼명              데이터타입(크기)                                       제약조건
-------------------------------------------------------------------------------------------------
 번호          Q_NO                NUMBER(10)                                              PK
 질문등록일     Q_REG_DATE          DATE DEFALT SYSDATE
 답변등록일     A_REG_DATE          DATE DEFALT SYSDATE
 질문자         Q_USER              VARCHAR2(13)                                           FK
 질문제목       Q_TITLE             VARCHAR2(40)
 질문내용       Q_CONTENTS          VARCHAR2(100)
 답변내용       A_CONTENTS          VARCHAR2(400) DEFALT '아직 답변이 등록되지 않았습니다.'            
 답변여부       A_CONFIRM           CHAR(1)  DEFALT 'N'                                 CHECK A_CONFIRM IN('Y','N')
 조회수         QNA_VIEWS           NUMBER(10) DEFALT 0
 추천수         QNA_RECOMMEND       NUMBER(10) DEFALT 0
   

 =========================================================
 시퀀스 정보        
 
 번호      구분            이름
----------------------------------------------------       
 1.      QNA 번호          


============================================================
SQL

1. 회원정보 테이블 생성 쿼리
-> T_MEMBER 테이블 사용

ADMIN 계정 생성
추가 회원 계정 생성

2. Q&A 테이블 생성 쿼리
CREATE TABLE  "T_QNA" 
   (	"Q_NO" NUMBER, 
	"Q_REG_DATE" DATE, 
	"A_REG_DATE" DATE, 
	"Q_USER" VARCHAR2(13), 
	"Q_TITLE" VARCHAR2(40), 
	"Q_CONTENTS" VARCHAR2(100), 
	"A_CONTENTS" VARCHAR2(400) DEFAULT '아직 답변이 등록되지 않았습니다.', 
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


3. Q&A 게시판 목록 출력 (SELECT)
SELECT Q_NO, Q_TITLE, Q_REG_DATE, Q_USER, A_CONFIRM
FROM T_QNA

4. 질문등록 

INSERT INTO T_QNA(Q_NO,Q_REG_DATE,Q_USER,Q_TITLE,Q_CONTENTS)
VALUES("T_QNA_SEQ".nextval,
         SYSDATE,
      'ABC','질문있습니다 급해요',
      '강아지에게 초콜릿을 먹여도 되나요?')

5. 질문수정
5.1 질문 수정 화면 출력
5.2 질문 수정 처리
SELECT Q_TITLE,Q_USER,Q_CONTENTS
FROM T_QNA
WHERE Q_NO =1

UPDATE T_QNA
set Q_TITLE = '긴급 급해요' , Q_CONTENTS = '우리 강아지가 초콜릿을 먹었어요 도와주세요'
WHERE Q_NO = 1

6. 질문삭제
DELETE T_QNA
WHERE Q_NO = 2

7. 추천하기
UPDATE T_QNA
SET QNA_RECOMMEND=(SELECT QNA_RECOMMEND
                   FROM T_QNA
                   WHERE Q_NO = 1)+1
WHERE Q_NO = 1

8. 조회수 증가 처리
질문을 상세보기 하면 조회수 올리고 SELECT 해서 가져오기
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


9. 질문 상세 보기(8-9번 연결)
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

10.답변 등록
10.1 답변 등록 화면 출력
10.2 답변 등록 수정 처리
SELECT Q_TITLE,Q_CONTENTS,Q_NO,A_CONTENTS
FROM T_QNA
WHERE Q_NO = 1



UPDATE T_QNA
SET A_CONTENTS = '초콜릿을 먹이면 안됩니다.' , A_REG_DATE =SYSDATE
WHERE Q_NO = 1

11.답변 수정
11.1 답변 수정 화면 출력
11.2 답변 수정 처리
SELECT Q_TITLE,Q_CONTENTS,Q_NO,A_CONTENTS
FROM T_QNA
WHERE Q_NO = 1

UPDATE T_QNA
SET A_CONTENTS = '빨리 가까운 동물병원으로 데려가세요!' ,A_REG_DATE =SYSDATE
WHERE Q_NO = 1

12.답변 삭제

UPDATE T_QNA
SET A_CONTENTS = DEFAULT , A_REG_DATE =SYSDATE
WHERE Q_NO = 1


13.시퀀스1 생성 - 번호
CREATE SEQUENCE Q_NO_SEQ
START WITH 1
INCREMENT BY 1
NOCYCLE
NOCACHE

14.시퀀스2 생성 - 조회수 -삭제
-시퀀스로 조회나 추천수를 늘리게 되면 질문마다 시퀀스가
존재해야 한다는 문제점이 발생한다.
CREATE SEQUENCE QNA_VIEWS_SEQ
START WITH 1
INCREMENT BY 1
NOCYCLE
NOCACHE

15.시퀀스3 생성 - 추천수 - 삭제
CREATE SEQUENCE QNA_RECOMMEND_SEQ
START WITH 1
INCREMENT BY 1
NOCYCLE
NOCACHE







*게시판 만들기 참고
http://iluku.net/blog/archives/1398



요구사항 정의
1. 회원가입을 하고 아이디를 보유한 사람만 질문 가능
2. 답변은 관리자만 가능
3. 답변이 완료되면 답변 여부에 O 표시

게시판 version 2(계층형 구조)

1.Q&A 게시판

no.  질문              작성일자       작성자     답변여부
-----------------------------------------------------
1    첫번째 질문        12/31/2016    abc        X
2    그냥 질문          11/30/2016    bbb        X
3    관리자님께[5]      11/11/2016    ccc        O 
                                                [질문하기]
========================================================

2. T_QNA 테이블 하나로 
테이블 이름: T_QNA
항목           컬럼명              데이터타입(크기)                                       제약조건
-------------------------------------------------------------------------------------------------
 번호          Q_NO                NUMBER(10)                                              PK
 부모글 번호    Q_ROOT_NO           NUMBER(10) DEFAULT 0            NEW
 그룹 번호      Q_GROUP_NO          NUMBER(10)  DEFAULT 0           NEW
 질문등록일     Q_REG_DATE          DATE DEFALT SYSDATE
 답변등록일     A_REG_DATE          DATE DEFALT SYSDATE
 질문자         Q_USERID            VARCHAR2(13)                 UPDATE                    FK
 질문제목       Q_TITLE             VARCHAR2(40)
 질문내용       Q_CONTENTS          VARCHAR2(100)
 답변자         A_ANSERID           VARCHAR2(13)                     NEW
 답변내용       A_CONTENTS          VARCHAR2(400) DEFALT '아직 답변이 등록되지 않았습니다.'            
 답변여부       A_CONFIRM           CHAR(1)  DEFALT 'N'                                 CHECK A_CONFIRM IN('Y','N')
 조회수         QNA_VIEWS           NUMBER(10) DEFALT 0
 추천수         QNA_RECOMMEND       NUMBER(10) DEFALT 0

ALTER TABLE T_QNA
ADD (Q_ROOT_NO NUMBER DEFAULT 0)

ALTER TABLE T_QNA
ADD (Q_GROUP_NO NUMBER DEFAULT 0)

alter table T_QNA rename column Q_USER to Q_USERID

ALTER TABLE T_QNA
ADD (A_ANSERID VARCHAR2(13))


1. 게시판 목록 출력

SELECT Q_NO, Q_TITLE || SUM(Q_GROUP_NO) AS Q_TITLE , Q_REG_DATE, Q_USERID, A_CONFIRM, QNA_VIEWS,QNA_RECOMMEND 
FROM T_QNA

   
2. T_QUESTION 과 T_ANSWER 두 테이블로 나누어서 
테이블 이름: T_QUESTION
항목           컬럼명              데이터타입(크기)                                       제약조건
-------------------------------------------------------------------------------------------------
 번호          Q_NO                NUMBER(10)                                              PK
 질문등록일     Q_REG_DATE          DATE DEFALT SYSDATE
 질문자         Q_USERID            VARCHAR2(13)                                           FK
 질문제목       Q_TITLE             VARCHAR2(40)
 질문내용       Q_CONTENTS          VARCHAR2(100)
 조회수         QNA_VIEWS           NUMBER(10) DEFALT 0
 추천수         QNA_RECOMMEND       NUMBER(10) DEFALT 0

2.1 T_QUESTION 테이블 생성 쿼리

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




 테이블 이름: T_ANSWER
항목           컬럼명              데이터타입(크기)                                       제약조건
-------------------------------------------------------------------------------------------------
 번호          Q_NO                NUMBER(10)                                              FK
 답변등록일     A_REG_DATE          DATE DEFALT SYSDATE
 답변자         A_ANWSERID           VARCHAR2(13)                   
 답변내용       A_CONTENTS          VARCHAR2(400) DEFALT '아직 답변이 등록되지 않았습니다.'            
 답변여부       A_CONFIRM           CHAR(1)  DEFAULT 'N'                                 CHECK A_CONFIRM IN('Y','N')
 



2.2 T_ANSWER 테이블 생성 쿼리

CREATE TABLE  "T_ANSWER" 
   (	"Q_NO" NUMBER(10,0), 
	"A_REG_DATE" DATE DEFAULT SYSDATE, 
	"A_ANSWERID" VARCHAR2(13), 
	"A_CONTENTS" VARCHAR2(400) DEFAULT '아직 답변이 등록되지 않았습니다.', 
	"A_CONFIRM" CHAR(1) DEFAULT 'N', 
	 CONSTRAINT "T_ANSWER_CHECK" CHECK ( "A_CONFIRM" IN('Y','N')) ENABLE
   ) ;ALTER TABLE  "T_ANSWER" ADD CONSTRAINT "T_ANSWER_FK" FOREIGN KEY ("Q_NO")
	  REFERENCES  "T_QUESTION" ("Q_NO") ENABLE;



Q&A 게시판

no.  질문              작성일자       작성자     답변여부
-----------------------------------------------------
1    첫번째 질문        12/31/2016    abc        X
2    그냥 질문          11/30/2016    bbb        X
3    관리자님께[5]      11/11/2016    ccc        O 
                                                [질문하기]
========================================================


3. Q&A 게시판 목록 출력 (SELECT)

SELECT 



4. 질문등록 

5. 질문수정
5.1 질문 수정 화면 출력
5.2 질문 수정 처리


6. 질문삭제

7. 추천하기

8. 조회수 증가 처리


9. 질문 상세 보기(8-9번 연결)

10.답변 등록
10.1 답변 등록 화면 출력
10.2 답변 등록 수정 처리

11.답변 수정
11.1 답변 수정 화면 출력
11.2 답변 수정 처리

12.답변 삭제

13.시퀀스 생성 - Q_NO 번호


sql command line 


sql> connect
 -> locked

     name :sys as sysdba
     pass : 1111

    alter user hr (identified by hr) account unlock;
    ()-> 비밀번호 생성

    conn sys/1111 as sysdba
    alter user hr identified by 1111;
    conn hr/1111

    conn / as sysdba -> sys db에 접속할때만 가능 다른 db는 불가능하다

    키보드 위/아래 -> 실행된 명령 히스토리 볼 수 있다
 ==================================================================

12/14

SQL * PULS 명령어 

SYS/SYSTEM ---관리자계정들
DESC 자세히 나오도록 조회
SELECT * FROM TAB --테이블 목록 보기(뷰포함)


1.편집명령

L -> 마지막 실행 명령 출력 (LIST)  : LIST 버퍼에 저장된 SQL문을 표시
/ -> 마지막 실행 명령 재실행       : 버퍼에 저장된 SQL문을 실행
R -> L + /  (RUN)                : RUN 버퍼에 저장된 SQL문을 표시하고 실행

2.파일 관련 명령
  
  버퍼의 내용을 파일에 저장하는 명령어들 
  
  ED [파일명]: 마지막 실행 명령어 파일로 저장 ->파일명 지정하지 않으면 AFIEDT.BUF로 저장됨
  
  HOST ->도스 프롬프트로 
  
  DIR/W AF* ---AF로 시작하는 파일 검색
  
  SAVE 파일명[.확장자][REPLACE]---바꾸기 [APPEND]---추가 :마지막 실행 명령어 파일로 저장
  
  get 파일명 --- save로 저장된 파일의 내용 가져오기

  @ 파일명[.확장자] ----파일을 실행
  
  SPOOL 파일명 : 파일명으로 이후에 실행되는 명령들 화면 캡쳐
  spool off : 캡쳐 종료



3.DB 접속 및 종료

CONNECT 아이디/비밀번호
CONN    아이디/비밀번호
HOST도스로 < > EXIT SQL+ 로 이동   
C:\oraclexe\app\oracle\product\11.2.0\server\bin\AFIEDT.BUF


C:\oraclexe\app\oracle\product\11.2.0\server\network\ADMIN\LISTENER.ORA
---오라클서버가 클라이언트 명령을 처리하기 위한 파일(서버가 클라이언트 접속을 처리할때)
TNSNAMES.ORA ---오라클서버에 접속하기위해 필요한 정보가 담긴 파일
HOST /PORT /SID=SERVICE_NAME


EXIT    종료

4.출력 형식
SET
COL[UMN] 컬럼명 FORMAT A30 -> 컬럼명 너비 조절 ---문자
COL[UMN] 컬럼명 FORMAT 9,999,999 ----숫자 자리수
COL[UMN] 컬럼명 FORMAT 000.00

SQL> 

help set

set heading off  ---컬럼 head option off

set pagesize 120 --- 페이지에 표현되는 line 변경


연습1. C 드라이브 밑에 DATA 폴더를 생성하고
       SQL PLUS 에서 가장 마지막에 수행한 쿼리문을 EXERCISE.SQL 파일로 저장


SAVE C:\DATA\EXERCICE.SQL APPEND 



연습2. emp2 테이블의 전체 데이터를 조회하고,
      department_id가 20인 데이터를 조회하는 결과를  
      c드라이브 밑의 data 폴더에
      emp2_depts.lst 파일로 캡쳐한 후,
      캡쳐한 파일을 sql plus에서 출력


===================================================================
DB 권한


사용자가 특정 테이블 접근 가능 부여하거나
특정 테이블에 SELECT/DELETE/UPDATE/INSERT 등의
쿼리문 실행 가능 여부 제한

1. 시스템 권한 SYSTEM PRIVILEGES
   사용자의 생성/제거, DB 접근 및 각종 객체 생성 등 
   주로 DBA에 의해 부여

   CREATE/DROP USER
   CREATE/DROP ANY TABLE
   CREATE SESSION   --DB에 접속 권한 관련
   CREATE VIEW
   CREATE SEQUENCE
   CREATE PROCEDURE

2. 객체 권한 OBJECT PRIVILEGES
   객체를 조작할 수 있는 권한
   (테이블,뷰,시퀀스,인덱스 등)


-------------------------------------------------------

시스템 권한

1. CREATE 사용자 생성
   오라클 설치할 때 자동으로 생성되는
   디폴트 사용자 가운데
   시스템 권한을 가진 데이터베이스 관리자인
   SYS, SYSTEM 만 가능
   
   CREATE USER 사용자명
   IDENTIFIED BY 비밀번호

연습1. SYS 계정으로 로그인하여
       아이디는 USER1, 비밀번호는 1111로 사용자 생성 
       -----------권한이 없어서 접속이 되지 않는다.  

       CONN / AS sysdba
       CREATE USER USER1
       IDENTIFIED BY 1111;

2.GRANT
  사용자에게 시스템 권한 부여

  GRANT  권한명
  TO     사용자명
  [WITH ADMIN OPTION]   부여받은 권한을 다른사용자에게 넘겨 줄수 있다    

연습2. 위에서 생성한 USER1에게 DB 접속 권한인
       CREATE SESSION을 부여

GRANT CREATE SESSION
TO USER1

연습3. 아이디는 USER2, 비밀번호는 1111로 사용자 생성하고,
      DB 접속과 부여 받은 권한을 다른 사용자에게
      부여할 수 있는 권한을 지정한 후,
      아이디는 USER3, 비밀번호는 1111로 사용자 추가 생성

      CONN / AS sysdba
      CREATE USER USER2 IDENTIFIED BY 1111;
      GRANT CREATE SESSION TO USER2 WITH ADMIN OPTION
      


      CREATE USER USER3 IDENTIFIED BY 1111;
------------------------------------------------------------------------

객체 권한

권한          TABLE        VIEW        SEQUENCE          PROCEDURE
------------------------------------------------------------------------
ALTER          O                          O
DELETE         O             O
EXECUTE                                                      O
INDEX          O
INSERT         O             O
REFERENCES     O
SELECT         O             O            O
UPDATE         O             O 

권한 범위
특정 객체에 대한 권한은
기본적으로 그 객체를 만든 사용자에게만 주어짐

스키마 SCHEMA
객체를 소유한 사용자
자신이 소유한 객체는 생략가능하지만 그 외에는 스키마명 입력해야 한다.

GRANT 권한명 | ALL
ON    객체명 | 롤명 | PUBLIC
TO    사용자명

권한 철회
REVOKE 권한명 | ALL
ON     객체명 
FROM   사용자명


연습1. USER1 사용자에게 EMPLOYEES 테이블을 조회할 수 있는 
       권한 부여

       CONN HR/1111;

       GRANT SELECT
       ON    EMPLOYEES
       TO    USER1

       SELECT * FROM HR.EMPLOYEES  ---- HR은 스키마 명

연습2. USER1 사용자에게 EMPLOYEES 테이블을 조회할 수 있는 
       권한 철회 
       단, HR 사용자가 USER1에게 부여한 권한을 확인 하고 처리 

       SELECT * FROM USER_TAB_PRIVS_MADE  ---HR이 준 권한 확인

       REVOKE SELECT                      ---권한 철회
       ON     EMPLOYEES
       FROM   USER1

=======================================================================

데이터 딕셔너리 DATA DICTIONARY

DB 자원을 효율적으로 관리하기 위해
다양한 정보를 저장하는 시스템 테이블

사용자가 테이블을 생성하거나, 사용자를 추가하는 등의
작업을 할 때 자동으로 갱신되서
해당 객체가 갖는 메타 데이터 정보가 저장됨

시스템이 직접 관리하기 때문에 조회해 보면
암호 같은 기호만 보여질 뿐 내용은 알 수 없음

=======================================================================

데이터 딕셔너리 뷰  DATA DICTIONARY VIEW

데이터 딕셔너리 원 테이블은 직접 조회하기가
거의 불가능하기 때문에
사용자가 이해할 수 있는 데이터 산출을 위해 제공

종류
1. STATIC DATA DICTIONARY VIEW
   DBA_~~~~~~~ 데이터베이스 관리자만 접근 가능한 객체 등의 정보 조회
                EX) DBA_TABLES   


   ALL_~~~~~~~ 자신 계정 소유 또는 권한을 부여 받은 객체 등의 정보 조회
                EX) ALL_TABLES 

   USER_~~~~~~ 자신의 계정이 소유한 객체 등의 정보 조회
                EX) USER_TABLES



연습1. HR 계정으로 SQL PLUS에 접속하여
       사용 가능한 모든 테이블 이름을 내림차순으로 
       정렬하여 출력
       단, USER_TABLES 데이터 딕셔너리 뷰를 사용

       CONN HR/1111
       SELECT TABLE_NAME 
       FROM USER_TABLES 
       ORDER BY TABLE_NAME DESC

2. DYNAMIC PERFORMANCE VIEW
   변경 내용 자동 반영


--------------------------------------------------------------
제약 조건 정보 조회 

SELECT *  
FROM USER_CONSTRAINTS

R - FK

딕셔너리 뷰들

1.USER_CONSTRAINTS
CONSTRAINT_TYPE
-P PK
-R FK
-U UNIQUE
-C CHECK

연습2. HR계정이 소유하고 있는 테이블들의
      제약조건 소유자 ,이름, 소속 테이블, 타입,
      참조 소유자, 참조이름 을 출력
      

      -------중복제거
      SELECT DISTINCT CONSTRAINT_TYPE
      FROM USER_CONSTRAINTS


제약조건 정보조회

SELECT OWNER 소유자 , CONSTRAINT_NAME 이름 , TABLE_NAME 소속테이블 ,CONSTRAINT_TYPE 타입 , 
       R_OWNER 참조소유자 , R_CONSTRAINT_NAME 참조이름 
FROM   USER_CONSTRAINTS
ORDER BY CONSTRAINT_TYPE

제약조건이 걸려있는 컬럼 조회
2.USER_CONS_COLUMNS

뷰를 정의할때 사용한 쿼리문을 조회
3.USER_VIEWS

시퀀스 정보 조회
4.USER_SEQUENCES

*인덱스 지정된 컬럼의 조회
5.USER_IND_COLUMNS

*인덱스 정보 조회
6.USER_INDEXES

*내가 권한을 준 정보 조회
7.USER_TAB_PRIVS_MADE

*내가 받은 권한 정보 조회
8.USER_TAB_PRIVS_RECD

부여된 롤과 권한 확인
9.USER_ROLE_PRIVS



SELECT * FROM USER_TAB_PRIVS_RECD


연습3. EMPLOYEES 테이블에 관련되어 있는 
       인덱스 이름과 컬럼 이름을 화면에 출력

SELECT INDEX_NAME,TABLE_NAME,COLUMN_NAME FROM USER_IND_COLUMNS
WHERE TABLE_NAME = 'EMPLOYEES'


12/14 과제

1.USER_CONSTRAINTS

  제약조건 정보조회

  SELECT   OWNER 소유자 , CONSTRAINT_NAME 이름 , TABLE_NAME 소속테이블 ,CONSTRAINT_TYPE 타입 , 
           R_OWNER 참조소유자 , R_CONSTRAINT_NAME 참조이름 
  FROM     USER_CONSTRAINTS
  ORDER BY CONSTRAINT_TYPE

2.USER_CONS_COLUMNS

  제약조건이 걸려있는 컬럼을 조회

  SELECT OWNER 소유자,CONSTRAINT_NAME 이름,TABLE_NAME 소속테이블,COLUMN_NAME 컬럼명
  FROM   USER_CONS_COLUMNS
  WHERE  TABLE_NAME = 'EMPLOYEES'

3.USER_VIEWS
  
  뷰를 정의할때 사용한 쿼리문 조회

  SELECT VIEW_NAME , TEXT , READ_ONLY
  FROM   USER_VIEWS

4.USER_SEQUENCES

  정의한 시퀀스 정보 조회
  
  SELECT SEQUENCE_NAME,MIN_VALUE,INCREMENT_BY,LAST_NUMBER
  FROM   USER_SEQUENCES


5.USER_IND_COLUMNS

  인덱스가 지정된 컬럼의 조회

  SELECT INDEX_NAME,TABLE_NAME,COLUMN_NAME
  FROM   USER_IND_COLUMNS
  WHERE  TABLE_NAME ='EMPLOYEES'

6.USER_INDEXES

  인덱스의 모든 정보 조회

  SELECT INDEX_NAME,INDEX_TYPE,TABLE_OWNER,TABLE_NAME,TABLE_TYPE,UNIQUENESS
  FROM   USER_INDEXES
  WHERE  TABLE_NAME ='EMPLOYEES'

7.USER_TAB_PRIVS_MADE

  내가 권한을 준 정보 조회

SELECT GRANTEE,TABLE_NAME,GRANTOR,PRIVILEGE
FROM   USER_TAB_PRIVS_MADE


8.USER_TAB_PRIVS_RECD
  
  내가 권한을 받은 정보 조회

  SELECT OWNER,TABLE_NAME,GRANTOR,PRIVILEGE
  FROM   USER_TAB_PRIVS_RECD

연습4. DICT 테이블에서 TABLE_NAME에 ROLE이
       포함되어 있는 레코드 조회

SQL> SELECT * FROM DICT WHERE TABLE_NAME LIKE '%ROLE%';


-----------------------------------------------------------------------------

12/15

role
사용자에게 보다 효율적으로 권한을 부여할 수 있도록 
여러개의 권한을 묶어 놓은 것

사전 정의 롤     : DB 설치 시 기본 제공
  1. CONNECT                  
    사용자가 데이터베이스에 접속 할 수 있도록 묶어놓은 기본적인
    시스템 권한 8가지
    
    CREATE CLUSTER
    CREATE DATABASE LINK
    CREATE SEQUENCE
    CREATE SESSION
    CREATE SYNONYM
    CREATE TABLE 
    CREATE VIEW
    ALTER SESSION

  2.RESOURCE
    사용자가 객체(테이블,뷰,인덱스 등)를 생성할 수 있도록
    하기 위해 묶어 놓은 시스템 권한

    CREATE CLUSTER
    CREATE PROCEDURE
    CREATE SEQUENCE
    CREATE TABLE
    CREATE TRIGGER
  
  3.DBA
    사용자들이 소유한 데이터베이스 객체를 관리하고
    사용자 생성/변경/제거할 수 있도록 하는 모든 권한 보유
  

    
사용자 정의 롤   : 사용자가 직접 롤 정의
  롤 생성   ->   롤에 권한 부여       -> 롤 부여
   DBA         DBA/권한있는 사용자       DBA


CREATE ROLE 롤이름;
GRANT 권한이름 TO 롤이름; 롤에다가 권한을 부여


연습1. 시스템 관리자 계정으로 로그인하여
       아이디는 USER4, 비밀번호는 1111로 계정을 생성한 후
       CONNECT와 RESOURCE 권한 부여

       SQL> CONN / AS sysdba
            CREATE USER USER4 IDENTIFIED BY 1111;


연습2. 시스템 관리자 계정으로 로그인하여
       THE_ROLE이라는 이름의 롤을 생성하고,
       EMPLOYEES 테이블의 조회 권한을 부여한 후
       생성된 롤을 USER4에게 부여

SQL>
     CONN / AS sysdba
     SELCT OWNER,TABLE_NAME FROM ALL_TABLES WHERE TABLE_NAME ='EMPLOYEES'; (USER_TABLES는 안됨,DBA_TABLES는 된다)
     GRANT SELECT ON HR.EMPLOYEES TO THE_ROLE;
     GRANT THE_ROLE TO USER4;


     USER4에게 있는 롤 정보 조회
     SELECT * FROM USER_ROLE_PRIVS;

연습3. THE_ROLE2라는 이름의 롤을 생성하고, 데이터베이스 접속/테이블 및 뷰 생성 권한을 부여한 후,
       아이디는 USER5, 비밀번호는 1111로 새로 생성한 사용자에게 생성된 롤 부여

 SQL> CONN / AS sysdba
      CREATE ROLE THE_ROLE2;
      CRANT CONNECT,RESOURCE TO THE_ROLE2;
      CREATE USER USER5 IDENTIFIED BY 1111;
      GRANT THE_ROLE2 TO USER5;

---TABLE SPACE에 저장 공간 설정을 하지 않았기에 TABLE생성이 되지 않는다.
CON / AS sysdba
ALTER USER USER5 QUOTA 100M ON SYSTEM;
---- QUOTA UNLIMITED (무제한)
     QUOTA 0M 해당 테이블스페이스는 테이블만 생성 가능


디폴트 롤 생성 및 사용
롤에 시스템 권한과 객체 권한을 부여한 후
롤을 사용자에게 부여 

연습4. BASIC_ROLE이라는 이름의 롤을 생성하고,
       데이터베이스 접근 권한을 부여한 후,
       EMPLOYEES 테이블을 수정/삭제/조회(UPDATE,DELETE,SELECT) 가능한 권한도 부여

       아이디가 TESTER1~3, 비밀번호가 1111인 사용자 3을 추가한 후,
       모두에게 위에서 생성한 롤 부여

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

롤 회수하기

REVOKE 롤이름 FROM 사용자;


연습5. USER5에게 부여된 롤을 확인한 후 
      부여된 롤을 회수
SQL>  
      CONN / AS SYSDBA; 
      SELECT * FROM DBA_ROLE_PRIVS WHERE GRANTEE = 'USER5';
      REVOKE THE_ROLE2 FROM USER5;

롤 제거

DROP ROLE 롤이름

FROM DICT --- ROLE정보 TABLE
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




연습6. USER5에게 부여되었던 롤의 권한을 확인    
      데이터 딕셔너리에 해당 롤의 소유자를 확인 한 후
      롤 제거
  SQL> SELECT S.ROLE,S.PRIVILEGE,T.TABLE_NAME
       FROM ROLE_SYS_PRIVS S , ROLE_TAB_PRIVS T
      WHERE S.ROLE = T.ROLE(+)
      AND S.ROLE = 'THE_ROLE2'

ROLE_SYS_PRIVS -> ROLE, PRIVILEGE, ADMIN_OPTION
ROLE_TAB_PRIVS -> ROLE, OWNER, TABLE_NAME, COLUMN_NAME, PRIVILEGE, GRANTABLE


답
      SELECT ROLE, PRIVILEGE
      FROM ROLE_SYS_PRIVS
      WHERE ROLE = 'THE_ROLE2'

      SELECT ROLE, PRIVILEGE
      FROM ROLE_TAB_PRIVS
      WHERE ROLE = 'THE_ROLE2'  --- 부여된 롤의 권한 확인

      SELECT * 
      FROM DBA_ROLE_PRIVS
      WHERE GRANTED_ROLE = 'THE_ROLE2'   ----해당 롤의 소유자 확인


======================================================================  
PL/SQL

ORACLES PROCEDUAL LANGUAGE EXTENSION TO SQL의 약자  
데이터베이스 내의 데이터를 조작하기 위해서
SQL과 함께 제공


변수 정의, 조건 처리, 반복처리 등을 지원

구조  선언부           변수, 상수 선언
      실행부           로직 기술
      예외 처리부      예외 처리 기술

익명의 프로시저
형식
      DECLARE         선언부(변수나 상수 선언)
      BEGIN           실행부 시작(로직 기술) ---프로시저  삽입 가능
      END;            실행부 끝
      / ---프로시저 종료


SQL>
  SET SERVEROUTPUT ON
  begin
     DBMS_OUTPUT.PUT_LINE('HELLO WORLD!');
  END;
  /

변수
변하는 값을 저장하는 메모리 상의 공간

상수
변하지 않는 값

주석    한줄 주석     -- ~~~
        여러줄 주석    /*  ~~~
                          ~~~    */

변수 선언 : 변수이름  데이터타입(크기);
변수에 값 대입  변수이름 := 저장할 값 
  연습1.         
  EX) 원금과 이자울 및 이자를 저장할 변수 선언
         NAME    VARCHR2(20); //고객명
          WONGUM NUMBER;      //원금
         EEJAYUL NUMBER(1,3); //이자율
          EEJA   NUMBER;      // 이자



연습2. 위에서 선언한 변수에 다음의 값을 저장
      고객명: KIM ,원금 10000, 이자율: 5%,
      이름 : 원금 X 이자율      
      NAME :='KIM';
      WONGUM :=10000 ;
      EEJAYUL :=0.05;
      EEJA :=WONGUM * EEJAYUL;

연습3. 연습1과 2를 메모장 파일에 기술하여
       원금과 이자율 및 이자를 화면으로 출력

SQL>
DECLARE NAME VARCHAR2(20);
         WONGUM NUMBER;
         EEJAYUL NUMBER(1,2); 
         EEJA   NUMBER;    
BEGIN   NAME :='KIM';
      WONGUM :=10000 ;
      EEJAYUL :=0.05;
      EEJA :=WONGUM * EEJAYUL;
      DBMS_OUTPUT.PUT_LINE('고객명 :' || NAME || '원금 :' || WONGUM ||  '이자율 : '  || EEJAYUL || '이자 : ' || EEJA  );
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
        DBMS_OUTPUT.PUT_LINE( NAME || '고객님의 원금은' || WONGUM ||  '원 이고 이자율은 '  || EEJAYUL || '이고 이자는' || EEJA ||'입니다.' );
END;
/

-----------------------------------------------------------------------------
저장 프로시저

PL/SQL을 저장해 놓고 필요한 경우 여러 번 호출하여 사용 가능

형식  CREATE [OR REPLACE] PROCEDURE 프로시저이름
     [(매개변수1 IN|OUT|INOUT 데이터타입,
       매개변수2 IN|OUT|INOUT 데이터타입,
       ...)]
     IS                                  --IN 넘겨받을 데이터
       [변수 선언]                        --OUT 넘겨줄 데이터
    BEGIN                                --INOUT 둘 다
       처리할 내용1,
       처리할 내용2,
       ...
    END;
    /

실행  
  SQL>   EXECUTE 프로시저이름
         EXECUTE 프로시저이름(매개변수 값)



연습4. DEV 사용자의 EMP 테이블의 모든 레코드를 복사하여
      EMP1 테이블을 생성하고,
      EMP1 테이블의 모든 레코드를 삭제하는 
      DEL_EMP1 프로시저 작성

CREATE OR REPLACE PROCEDURE DEL_EMP1
IS
BEGIN
DELETE EMP1;


END;
/

@ C:\DATA\PLSQL

SQL>EXCUTE DEL_EMP1;

* SQL>SHOW ERRORS  에러 출력

ROLLBACK; ---되돌리기

COMMIT; ---최종실행


연습5. 임의의 변수에 생년월일 정보 8자를 저장하고
       ~~~~년 ~~월 ~~일의 형태로 출력하는 
       BIRTH_INFO 프로시저 작성

CREATE OR REPLACE PROCEDURE BIRTH_INFO
(BIRTH VARCHAR2(8));
IS
BEGIN
BIRTH :='~~~~~~~~'; 
DBMS_OUTPUT.PUT_LINE(SUBSTR(BIRTH,1,4)||'년' ||SUBSTR(BIRTH,5,2)||' 월'||SUBSTR(BIRTH,7,2)||' 일' );
END;
/


  
CREATE OR REPLACE PROCEDURE BIRTH_INFO

IS
   BIRTH VARCHAR2(20) :='19991111';
BEGIN
   BIRTH :=SUBSTR(BIRTH,1,4)||'년'||
           SUBSTR(BIRTH,5,2)||'월'||
           SUBSTR(BIRTH,7)||'일';
DBMS_OUTPUT.PUT_LINE('생년월일'||BIRTH);
END;
/  


연습6.. 생년월일을 8자리의 숫자(19991111)로 입력받아
       1999년 11월 11일의 형태로 출력하는 
       BIRTH_INFO2 프로시저 작성

CREATE OR REPLACE PROCEDURE BIRTH_INFO2
(BIRTH_DATA IN VARCHAR2)
IS
   BIRTH VARCHAR2(20) := BIRTH_DATA;
BEGIN
  
   BIRTH :=SUBSTR(BIRTH,1,4)||'년'||
           SUBSTR(BIRTH,5,2)||'월'||
           SUBSTR(BIRTH,7)||'일';
DBMS_OUTPUT.PUT_LINE('생년월일 :'||BIRTH);
END;
/  



연습7. 임의의 변수에 전화번호 8자리(12345678)를 저장한 후
       010-1234-5678 의 형태로 출력하는
       TEL_INFO 프로시저 작성
       단, 전화번호는 실행 시 마다 변경 가능

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
저장함수

저장 프로시저와 달리 실행 결과를 넘겨줄 수 있음
넘겨줄 데이터의 타입과 값을 명시해 줘야 함

형식  CREATE [OR REPLACE] FUNCTION 함수이름
     [(매개변수1 IN|OUT|INOUT 데이터타입,
       매개변수2 IN|OUT|INOUT 데이터타입,
       ...)]
     
     RETURN 반환데이터타입                --주의! 타입이다.
     IS                                  --IN 넘겨받을 데이터
       [변수 선언]                        --OUT 넘겨줄 데이터
    BEGIN                                --INOUT 둘 다
       처리할 내용1,
       처리할 내용2,
       ...
       
       RETURN 반환데이터값                
    END;
    /

실행 
     VARIABLE 변수이름 데이터타입(크기); ---변수이름 한글도 가능
     EXECUTE :변수이름 := 함수이름
     EXECUTE :변수이름 := 함수이름[(매개변수들)]

변수 값 출력 PRINT 변수이름;

연습8. 임의의 변수에 생년월일 정보 8자를 저장하고
       ~~~~년 ~~월 ~~일의 형태로 출력하는 
       BIRTH_INFO 프로시저를 함수BIRTH_INFO_F로 작성



CREATE OR REPLACE FUNCTION BIRTH_INFO_F
RETURN VARCHAR2
IS
   BIRTH VARCHAR2(20) :='19991111';
BEGIN
   BIRTH :=SUBSTR(BIRTH,1,4)||'년'||
           SUBSTR(BIRTH,5,2)||'월'||
           SUBSTR(BIRTH,7)||'일';

RETURN BIRTH;
END;
/  

SQL>  VARIABLE BIRTH_OUT VARCHAR2(20);
      EXECUTE : BIRTH_OUT := BIRTH_INFO_F
      PRINT BIRTH_OUT;


연습9. BIRTH_INFO2 프로시저를 BIRTH_INFO2_F 함수로 변경

CREATE OR REPLACE FUNCTION BIRTH_INFO2_F
(BIRTH_DATA IN VARCHAR2)
RETURN VARCHAR2
IS
   BIRTH VARCHAR2(20) := BIRTH_DATA;
BEGIN
  
   BIRTH :='생년월일 :'||SUBSTR(BIRTH,1,4)||'년'||
           SUBSTR(BIRTH,5,2)||'월'||
           SUBSTR(BIRTH,7)||'일';
RETURN BIRTH;
END;
/  

SQL> @ 파일명
     VARIABLE BIRTH_OUT2 VARCHAR2(50);
     EXECUTE:BIRTH_OUT2 :=BIRTH_INFO2_F(19991111) ----입력할때 띄어쓰기 주의할것!
     PRINT BIRTH_OUT2


*연습10. TEL_INFO 프로시저를 TEL_INFO_F 함수로 변경


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

SQL> @ 파일명
     VARIABLE TEL_OUT VARCHAR2(30);
     EXECUTE:TEL_OUT :=TEL_INFO_F(12345678)
     PRINT TEL_OUT


*연습11. 익명의 프로시저를 작성하여
        BIRTH_INFO를 실행

 
BEGIN 
BIRTH_INFO;
END;
/

USER_SOURCE  --- 만든 프로시저 , 트리거를 확인 할수 있다.

---------------------------------------------------------------------

오라클 계층형 쿼리 - 트리구조

START WITH 조건1
     루트노드 식별
     조건1을 만족하는 행들은 모드 루트노드가 됨
     START WITH 절을 생략할 경우 모든 행들을 루트 노드로 간주
     조건1에 서브쿼리도 사용 가능
     

CONNECT BY 조건2
     부모와 자식 노드들 간의 관계 명시
     글번호 = 부모노드 번호
     조건2에는 반드시 PRIOR 연산자를 포함시켜야 함
     ==> PRIOR 연산자를 이용하여 부모 노드의 컬럼 식별
     조건2에는 서브쿼리 사용 불가



PRIOR 연산자
  계층형 쿼리에서만 사용
  CONNECT BY 절에서 =과 동등한 레벨로 사용되는 연산자
  CONNECT BY 절에서 해당 컬럼의 부모 해 식별

      

LEVEL PSEUDO COLUMN
레벨의사컬럼
  ROWNUM,ROWID와 같이 실제로 테이블에 
  저장되어 있지는 않지만 있는 컬럼처럼 사용가능
  계층형 정보를 표현할 때 레벨 표시
  일반적인 컬럼처럼 SELECT, WHERE, ORDER BY 절에서
  사용 가능

  루트노드가 레벨1, 루트의 자식 노드가 레벨2, 그 자식노드가 
  레벨3이 됨
  계층형 데이터가 아닐 경우 모두 같은 레벨


1. T_BOARD 테이블 생성

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

2. T_BOARD 테이블에 레코드 추가

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

3.T_BOARD 리스트 - 전체 댓글 포함
   글번호    제목                 작성일자
   ---------------------------------------------------------
   1        FIRST               12/16/2016
   2          FFF               12/16/2016
   5            AAA             12/16/2016
   3          TTT               12/16/2016
   4        SECOND              12/16/2016


SELECT MEMO_NO 글번호 ,PMEMO_NO , LPAD('-----',2*(LEVEL-1))||TITLE 제목 , REG_DATE 작성일자, LEVEL
FROM T_BOARD
START WITH PMEMO_NO = 0
CONNECT BY PRIOR MEMO_NO = PMEMO_NO



4.T_BOARD 리스트 - 루트 노드만 
   글번호    제목                 작성일자
   ---------------------------------------------------------
   1        FIRST[]             12/16/2016
   4        SECOND              12/16/2016

SELECT A.MEMO_NO "글번호" , A.TITLE ||'['|| 
NVL((SELECT COUNT(B.PMEMO_NO)
   FROM T_BOARD B
   WHERE A.MEMO_NO = B.PMEMO_NO
   GROUP BY A.MEMO_NO),0)  || ']' "제목", 
   REG_DATE "작성일자"
FROM T_BOARD A
WHERE LEVEL =1
START WITH PMEMO_NO =0
CONNECT BY PRIOR MEMO_NO = PMEMO_NO



5. T_BOARD 상세보기
   글번호    :1
   제목      :FIRST          
   작성일자  :~~~~
   내용      :
   ---------------------------------------------------------
    댓글 내용                      작성일자
     FFF                           ~~~
       AAA                         ~~~
     TTT                           ~~~

SELECT MEMO_NO "글번호" , TITLE "제목" , REG_DATE "작성일자" , CONTENTS "내용" 
FROM T_BOARD

SELECT LPAD('-----',2*(LEVEL-1))||TITLE "제목"  , REG_DATE "작성일자" 
FROM T_BOARD
WHERE CONNECT_BY_ROOT MEMO_NO =1   ---- ROOT 번호가 1인 것만 거르기
AND PMEMO_NO <>0  --- ROOT번호 0 제외
START WITH PMEMO_NO = 0
CONNECT BY PRIOR MEMO_NO = PMEMO_NO





6.글쓰기

INSERT INTO 


7.댓글 달기

---부모번호 필요


8.PAGING -한 페이지에 5개씩 출력  --- 날짜 정렬

번호         제목       
1          FIRST[2]     ---- 알아야 하는 값
2          SECOND
3          SECONDD
4          SECONDDD
5          SECONDDDD    ---- 알아야 하는 값
-----------------------------------------------
            1 [2] [3] [4] [5]


SELECT *
FROM (SELECT ROWNUM RNUM , MEMO_NO "글번호" , TITLE || '[' || ((SELECT COUNT(*)
                                                                FROM T_BOARD 
                                                                WHERE  T1.MEMO_NO = CONNECT_BY_ROOT MEMO_NO
                                                                START WITH PMEMO_NO = 0
                                                                CONNECT BY PRIOR MEMO_NO = PMEMO_NO)-1) ||']' AS 제목,
                                                                REG_DATE AS 작성일
FROM (SELECT MEMO_NO,
             TITLE,
             REG_DATE
      FROM T_BOARD
      WHERE PMEMO_NO = 0
      ORDER BY MEMO_NO DESC) T1
)
WHERE RNUM BETWEEN 1 AND 5                                                             



ㄱ + 한자 1번 -> 공백 문자로 인식할 때 



===============================================================================


Eclipse IDE for Java EE Developers 다운 

java se - window x64 다운


static web project(사용자마다 똑같은 화면) - htmls(context root)

web content -> new -> html file

window -> preferences -> general -> appearance -> colors and font (글꼴은 변경하지 말것)

preferences -> general -> enc -> web -> css, html , jsp file -> encoding -> iso 10646/unicode(utf-8)

--html은 head /head(닫기)와 body /body(닫기)로 나뉜다.

head 에는 meta와 title로 나뉜다.

open web Browser -> 주소 붙여넣기 -> Run



