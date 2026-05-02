use hr;
select * from hr_data;


-- Attrition overview
select attrition,count(*),
round(count(*)*100/sum(count(*)) over(),2) as attrition_rate
from hr_data
group by attrition;

-- Average Tenure of Employees
select attrition,
round(avg(no_of_years_worked_at_current_company),2) as percentage
from hr_data
group by attrition;

-- Attrition by Gender
select gender,
count(*) as total_employees,
count(case when attrition="yes" then 1 end) as employees_left,
round(count(case when attrition="yes" then 1 end) * 100/count(*),2) as attrition_rate
from hr_data
group by gender;

-- Attrition by department
select department,
count(case when attrition="yes" then 1 end) as employee_left,
count(*) as employees,
round(count(case when attrition="yes" then 1 end) * 100/count(*),2) as attrition_rate
from hr_data
group by department;

-- Attrition by Job Role
select Job_Role,
count(case when Attrition = 'Yes' then 1 end) AS Employees_Left,
count(*) AS Total_Employees,
round(count(case when Attrition = 'Yes' then 1 end) * 100.0 / count(*), 2) as Attrition_Rate
from hr_data
group by Job_Role
order by Attrition_Rate desc;

-- Average Salary of Attrition
select attrition,
round(avg(salary),2) from hr_data
group by attrition;

-- Attrition by Job satisfaction
select job_satisfaction,
count(case when Attrition = 'Yes' then 1 end) AS Employees_Left,
count(*) AS Total_Employees,
round(count(case when Attrition = 'Yes' then 1 end) * 100.0 / count(*), 2) as Attrition_Rate
from hr_data
group by job_satisfaction
order by Attrition_Rate desc;

-- Attrition by Salary hike percentage
select
case
	when Salary_Hike_in_percent <= 20 then '0-20 %'
	when Salary_Hike_in_percent between 21 AND 40 then '21-40 %'
    when Salary_Hike_in_percent between 41 AND 60 then '41-60 %'
    when Salary_Hike_in_percent between 61 AND 80 then '61-80 %'
	else '81-100%'
end as Hike_Category,
count(*) as Total,
count(case when Attrition = 'Yes' then 1 end) AS Employees_Left,
round(count(case when Attrition = 'Yes' then 1 end) * 100.0 / count(*), 2) as Attrition_Rate
from hr_data
group by Hike_Category
order by Attrition_Rate desc;

-- Attrition by Overtime
select OverTime,
count(*) as Total,
count(case when Attrition = 'Yes' then 1 end) AS Employees_Left,
round(count(case when Attrition = 'Yes' then 1 end) * 100.0 / count(*), 2) as Attrition_Rate
from hr_data
group by OverTime;

-- Attrition by overtime and years since last promotion
select OverTime,
case 
	when Years_since_last_promotion between 0 and 2 then '0-2 Years'
	when Years_since_last_promotion between 3 and 5 then '3-5 Years'
    when Years_since_last_promotion between 6 and 8 then '6-8 Years'
    else '8+ Years'
    end as Promotion_Gap,
count(*) as Total,
count(case when Attrition = 'Yes' then 1 end) AS Employees_Left,
round(count(case when Attrition = 'Yes' then 1 end) * 100.0 / count(*), 2) as Attrition_Rate
from hr_data
group by OverTime, Promotion_Gap
order by Attrition_Rate desc;

-- Attrition by Age group

select 
case
	when age < 25 then 'Under 25'
	when Age between 25 and 35 then '25-35'
	when Age between 36 and 45 then '36-45'
	else '45+'
end as Age_Group,
count(*) as Total,
count(case when Attrition = 'Yes' then 1 end) AS Employees_Left,
round(count(case when Attrition = 'Yes' then 1 end) * 100.0 / count(*), 2) as Attrition_Rate
from hr_data
group by Age_Group
order by  Attrition_Rate desc;