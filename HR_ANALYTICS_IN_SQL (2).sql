CREATE DATABASE HR_ANALYTICS;
USE HR_ANALYTICS;



-- 1. EMPLOYEE COUNT AS PER AGE_GROUP


select `AgeGroup`,COUNT(`EmpID`)
FROM`analytics_data`
group by AgeGroup
ORDER BY COUNT(`EmpID`) DESC;


-- 2. EMPLOYEE COUNT AS PER Department

select Department,COUNT(`EmpID`)
FROM`analytics_data`
group by Department
ORDER BY COUNT(`EmpID`) DESC;


-- 3. EMPLOYEE COUNT AS PER DistanceFromHome_SLABWISE

select DistanceFromHome_SLABWISE,COUNT(`EmpID`)
FROM`analytics_data`
group by DistanceFromHome_SLABWISE
ORDER BY COUNT(`EmpID`) DESC;


-- 4. EMPLOYEE COUNT AS PER EducationField

select EducationField, COUNT(`EmpID`)
FROM`analytics_data`
group by EducationField
ORDER BY COUNT(`EmpID`) DESC;

-- 5. EMPLOYEE COUNT AS PER GENDER

select Gender, COUNT(`EmpID`)
FROM`analytics_data`
group by Gender
ORDER BY COUNT(`EmpID`) DESC;

-- 6. EMPLOYEE ATTRIION AS PER AGE_GROUP
       
	    select `AgeGroup`,COUNT(`EmpID`) as total_employees_this_section,sum(`ATTRITION_STATUS`) as employees_left
        FROM`analytics_data`
        group by AgeGroup
        ORDER BY COUNT(`ATTRITION_STATUS`) DESC;
       

-- 7. EMPLOYEE ATTRITION AS PER Department

select Department,COUNT(`EmpID`) as total_employees_this_section,sum(`ATTRITION_STATUS`) as employees_left
FROM`analytics_data`
group by Department
ORDER BY COUNT(`EmpID`) DESC;

-- 8. EMPLOYEE ATTRITION AS PER DistanceFromHome_SLABWISE

select DistanceFromHome_SLABWISE,COUNT(`EmpID`) as total_employees_this_section,sum(`ATTRITION_STATUS`) as employees_left
FROM`analytics_data`
group by DistanceFromHome_SLABWISE
ORDER BY COUNT(`EmpID`) DESC;

-- 9. EMPLOYEE ATTRITION AS PER EducationField

select EducationField, COUNT(`EmpID`) as total_employees_this_section,sum(`ATTRITION_STATUS`) as employees_left
FROM`analytics_data`
group by EducationField
ORDER BY COUNT(`EmpID`) DESC;

-- 10. EMPLOYEE ATTRITION AS PER GENDER

select Gender, COUNT(`EmpID`) as total_employees_this_section,sum(`ATTRITION_STATUS`) as employees_left
FROM`analytics_data`
group by Gender
ORDER BY COUNT(`EmpID`) DESC;


-- 11. EMPLOYEE ATTRITION AS PER EnvironmentSatisfaction


select EnvironmentSatisfaction, COUNT(`EmpID`) as total_employees_this_section,sum(`ATTRITION_STATUS`) as employees_left
FROM`analytics_data`
group by EnvironmentSatisfaction
ORDER BY COUNT(`EmpID`) DESC;


-- 12. EMPLOYEE ATTRITION AS PER EnvironmentSatisfaction


select JobInvolvement, COUNT(`EmpID`) as total_employees_this_section,sum(`ATTRITION_STATUS`) as employees_left
FROM`analytics_data`
group by JobInvolvement
ORDER BY COUNT(`EmpID`) DESC;

-- 13. EMPLOYEE ATTRITION AS PER PerformanceRating


select PerformanceRating, COUNT(`EmpID`) as total_employees_this_section,sum(`ATTRITION_STATUS`) as employees_left
FROM`analytics_data`
group by PerformanceRating
ORDER BY COUNT(`EmpID`) DESC;

-- 14. EMPLOYEE ATTRITION AS PER YearsAtCompany_SLABWISE

select YearsAtCompany_SLABWISE, COUNT(`EmpID`) as total_employees_this_section,sum(`ATTRITION_STATUS`) as employees_left
FROM`analytics_data`
group by YearsAtCompany_SLABWISE
ORDER BY sum(`ATTRITION_STATUS`) DESC;


-- 15. EMPLOYEE ATTRITION AS PER WorkLifeBalance


select WorkLifeBalance, COUNT(`EmpID`) as total_employees_this_section,sum(`ATTRITION_STATUS`) as employees_left
FROM`analytics_data`
group by WorkLifeBalance
ORDER BY COUNT(`EmpID`) DESC;








