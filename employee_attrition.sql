create database employee_attritiondbs;
use employee_attritiondbs;
select * from employee_attrition;
select count(*) from employee_attrition;

/* Department level attrition count */
select department,count(*) as employees,sum(case when attrition='yes' then 1  else 0 end) as attrition_count from employee_attrition group by department;

/* Baseline wellbeing averages */
SELECT AVG(burnout_score), AVG(engagement_score), AVG(work_life_balance_score) FROM employee_attrition;

/* Null/missing value check */
SELECT monthly_income,age FROM employee_attrition WHERE monthly_income IS NULL OR age IS NULL;

/* Workload comparison by work mode*/
SELECT work_mode, AVG(overtime_hours_per_week) FROM employee_attrition GROUP BY work_mode;

SELECT *
FROM employee_attrition
LIMIT 10;
