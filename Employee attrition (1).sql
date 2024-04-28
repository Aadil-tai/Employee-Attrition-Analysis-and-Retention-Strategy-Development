-- Databricks notebook source
-- MAGIC %md
-- MAGIC # 🚀 Employee Attrition Analysis Project
-- MAGIC
-- MAGIC
-- MAGIC 👥 Employees are the backbone of any organization. The performance of an organization is heavily dependent on the quality and dedication of its employees. However, employee attrition poses significant challenges to organizations, including:
-- MAGIC
-- MAGIC - 💰 **Cost Implications:** Employee attrition is expensive in terms of both time and money, as hiring and training new employees require significant resources.
-- MAGIC
-- MAGIC - 📚 **Loss of Experience:** When experienced employees leave, organizations lose valuable knowledge and skills that are often difficult to replace.
-- MAGIC
-- MAGIC - 📉 **Productivity Impact:** Attrition can lead to a temporary dip in productivity as new employees adjust to their roles and responsibilities.
-- MAGIC
-- MAGIC - 💸 **Impact on Profits:** Ultimately, high attrition rates can negatively affect an organization's profitability, as it disrupts operations and increases hiring and training costs.
-- MAGIC
-- MAGIC ## 💼 Business Questions to Address
-- MAGIC
-- MAGIC To address the employee attrition problem, it's important to consider the following business questions:
-- MAGIC
-- MAGIC 1. 🕵️‍♂️ **Contributing Factors:** What are the key factors that contribute most to employee attrition within the organization? Identifying these factors is crucial for developing effective retention strategies.
-- MAGIC
-- MAGIC 2. 🚀 **Retention Measures:** What measures can the company implement to retain employees and reduce attrition rates? Developing strategies to enhance employee satisfaction and engagement is essential.
-- MAGIC
-- MAGIC By addressing these questions, organizations can mitigate the challenges posed by employee attrition and create a more stable and productive work environment.
-- MAGIC

-- COMMAND ----------

-- DBTITLE 0,Select all Data from Employee attrition database
select * from employee_attrition;

-- COMMAND ----------

DESCRIBE employee_attrition;


-- COMMAND ----------

-- MAGIC %md
-- MAGIC # <span style="color: #FF5733">📊 Dataset Description</span>
-- MAGIC
-- MAGIC The "employee_attrition" dataset is a comprehensive collection of data that provides insights into the employee dynamics within an organization. It serves as the foundation for conducting an in-depth analysis of employee attrition, which refers to the phenomenon of employees leaving the organization voluntarily or involuntarily. This dataset is a valuable resource for understanding the underlying factors contributing to employee attrition and for developing strategies to mitigate its impact.
-- MAGIC
-- MAGIC ## <span style="color: #FF5733">🔑 Key Attributes</span>
-- MAGIC
-- MAGIC The dataset includes a wide range of attributes and features related to employees, covering various aspects of their employment and personal information. These attributes typically encompass:
-- MAGIC
-- MAGIC - <span style="color: #33FFB5">🧑‍💼 **Employee Information**</span>: Details such as employee ID, name, age, gender, and marital status.
-- MAGIC
-- MAGIC - <span style="color: #33FFB5">💼 **Job-Related Information**</span>: Data on the employee's job role, department, job level, and job satisfaction.
-- MAGIC
-- MAGIC - <span style="color: #33FFB5">🏢 **Work Environment**</span>: Insights into factors like work environment satisfaction, work-life balance, and the number of years the employee has been with the company (tenure).
-- MAGIC
-- MAGIC - <span style="color: #33FFB5">💰 **Compensation and Benefits**</span>: Information on salary, hourly rate, and overtime.
-- MAGIC
-- MAGIC - <span style="color: #33FFB5">✈️ **Travel and Commute**</span>: Data related to business travel, daily commute, and distance from home to work.
-- MAGIC
-- MAGIC - <span style="color: #33FFB5">📈 **Promotion History**</span>: Details regarding the number of promotions the employee has received during their tenure.
-- MAGIC
-- MAGIC - <span style="color: #33FFB5">📚 **Education and Training**</span>: Employee education levels, major, and training undergone.
-- MAGIC
-- MAGIC - <span style="color: #33FFB5">⭐ **Employee Performance**</span>: Employee performance ratings and their relationship to attrition.
-- MAGIC
-- MAGIC - <span style="color: #33FFB5">⚖️ **Attrition Status**</span>: A binary indicator (yes/no) of whether the employee has experienced attrition or not.
-- MAGIC
-- MAGIC This dataset offers valuable insights for organizations looking to make data-driven decisions to improve employee satisfaction, engagement, and retention. By analyzing the dataset, businesses can identify the factors contributing to attrition and develop strategies to create a more stable and productive work environment.
-- MAGIC
-- MAGIC

-- COMMAND ----------

select sum(EmployeeCount) from employee_attrition;

-- COMMAND ----------

-- MAGIC %md
-- MAGIC # <span style="color: #FF5733">📊 Insights to Extract and Visualize</span>
-- MAGIC
-- MAGIC In this Employee Attrition Analysis project, we will leverage SQL queries to extract valuable insights from the "employee_attrition" dataset. These insights will help us better understand the dynamics of employee attrition within the organization and support data-driven decision-making. We plan to visualize these insights for clarity and actionable intelligence.
-- MAGIC
-- MAGIC ## <span style="color: #FF5733">1. Attrition by Education Level</span>
-- MAGIC
-- MAGIC We will use SQL queries to analyze attrition rates based on employees' education levels. Visualizing this data can reveal whether there is a correlation between education and attrition, which can inform recruitment and retention strategies.
-- MAGIC
-- MAGIC ## <span style="color: #FF5733">2. Attrition by Environment Satisfaction</span>
-- MAGIC
-- MAGIC By examining attrition against employees' reported environment satisfaction levels, we can gauge the impact of workplace satisfaction on retention. Visualization will help illustrate how satisfaction levels relate to attrition.
-- MAGIC
-- MAGIC ## <span style="color: #FF5733">3. Attrition by Business Travel</span>
-- MAGIC
-- MAGIC We will analyze attrition in relation to different types of business travel. This can help organizations understand if frequent business travel contributes to attrition. Visualizing the data can provide insights into this aspect.
-- MAGIC
-- MAGIC ## <span style="color: #FF5733">4. Attrition by Education and Salary</span>
-- MAGIC
-- MAGIC A combination of education and salary can be influential factors. We'll use SQL queries to explore how attrition varies based on these two factors. Visualization will provide a clear picture of this relationship.
-- MAGIC
-- MAGIC ## <span style="color: #FF5733">5. Attrition by Tenure</span>
-- MAGIC
-- MAGIC Employee tenure often plays a role in attrition. We'll investigate how attrition rates change with increasing tenure. Visualizing this trend can be essential for retention strategies.
-- MAGIC
-- MAGIC ## <span style="color: #FF5733">6. Attrition by Work-Life Balance</span>
-- MAGIC
-- MAGIC Work-life balance is a critical aspect of job satisfaction. We'll use SQL to analyze attrition based on reported work-life balance. Visualization will highlight the connection between work-life balance and attrition.
-- MAGIC
-- MAGIC ## <span style="color: #FF5733">7. Attrition by Promotion History</span>
-- MAGIC
-- MAGIC We will explore how the history of promotions relates to attrition. SQL queries will help uncover patterns, and visualization can reveal the impact of promotions on retention.
-- MAGIC
-- MAGIC ## <span style="color: #FF5733">8. Employee Attrition Analysis</span>
-- MAGIC
-- MAGIC An overarching analysis of overall employee attrition trends using SQL and visualizing these trends will provide a comprehensive view of attrition within the organization.
-- MAGIC
-- MAGIC ## <span style="color: #FF5733">9. Attrition by Overtime 🕒</span>
-- MAGIC
-- MAGIC Examining the impact of overtime on attrition is crucial. We'll analyze overtime-related attrition trends using SQL and visualize these insights.
-- MAGIC
-- MAGIC ## <span style="color: #FF5733">10. Insights from Attrition by Job Role</span>
-- MAGIC
-- MAGIC Analyzing attrition patterns by job roles is essential. We'll use SQL to identify which roles are more susceptible to attrition and visualize this information.
-- MAGIC
-- MAGIC These insights will empower organizations to make informed decisions, implement retention strategies, and foster a stable and productive work environment.
-- MAGIC

-- COMMAND ----------

select sum(EmployeeCount),Attrition   from employee_attrition
group by 2;

-- COMMAND ----------

select sum(EmployeeCount) , age from employee_attrition
where Attrition = 'Yes'
group by age

-- COMMAND ----------

select sum(EmployeeCount) ,
case when age between 20 and 25 then '20-25' when age between 26 and 32 then'26-32' when age between 33 and 40 then '33-40' else '40+' end age_group 
from employee_attrition
where Attrition = 'Yes'
group by 2

-- COMMAND ----------

select sum(EmployeeCount) ,
case when age between 20 and 25 then '20-25' when age between 26 and 32 then'26-32' when age between 33 and 40 then '33-40' else '40+' end age_group 
from employee_attrition
where Attrition = 'Yes'
group by 2

-- COMMAND ----------

select sum(EmployeeCount) , Department from employee_attrition
where Attrition = 'Yes'
group by Department

-- COMMAND ----------

select sum(EmployeeCount) , Department from employee_attrition
where Attrition = 'Yes'
group by Department

-- COMMAND ----------

select sum(EmployeeCount) , Education from employee_attrition
where Attrition = 'Yes'
group by Education

-- COMMAND ----------

-- DBTITLE 1,Attrition by Education Level
select sum(EmployeeCount) , 
case 
 when Education = 1 then 'below college'
 when Education = 2 then 'college'
 when Education = 3 then 'bachelor' 
 when Education = 4 then 'master'
else 'doctor'
end Education_group
from employee_attrition
where Attrition = 'Yes'
group by 2;

-- COMMAND ----------

-- DBTITLE 1,Attrition by Education Level
SELECT
  SUM(EmployeeCount),
  CASE
    WHEN Education = 1 THEN 'below college'
    WHEN Education = 2 THEN 'college'
    WHEN Education = 3 THEN 'bachelor'
    WHEN Education = 4 THEN 'master'
    ELSE 'doctor'
  END AS Education_group
FROM employee_attrition
WHERE Attrition = 'Yes'
GROUP BY 2;


-- COMMAND ----------

-- DBTITLE 1,Attrition by Environment Satisfaction
SELECT
  SUM(EmployeeCount),
  CASE
    WHEN EnvironmentSatisfaction = 1 THEN 'Low'
    WHEN EnvironmentSatisfaction = 2 THEN 'Medium'
    WHEN EnvironmentSatisfaction = 3 THEN 'High'
    WHEN EnvironmentSatisfaction = 4 THEN 'Highly Satisfied'
    ELSE 'Not Found'
  END AS EnvironmentSatisfactiongroup
FROM employee_attrition
WHERE Attrition = 'Yes'
GROUP BY 2;


-- COMMAND ----------

-- DBTITLE 1,Attrition by Environment Satisfaction
SELECT
  SUM(EmployeeCount),
  CASE
    WHEN EnvironmentSatisfaction = 1 THEN 'Low'
    WHEN EnvironmentSatisfaction = 2 THEN 'Medium'
    WHEN EnvironmentSatisfaction = 3 THEN 'High'
    WHEN EnvironmentSatisfaction = 4 THEN 'Highly Satisfied'
    ELSE 'Not Found'
  END AS EnvironmentSatisfactiongroup
FROM employee_attrition
WHERE Attrition = 'Yes'
GROUP BY 2;


-- COMMAND ----------

select sum(EmployeeCount),
BusinessTravel
from employee_attrition
where attrition = 'Yes'
group by 2;

-- COMMAND ----------

-- DBTITLE 1,Attrition by Business Travel
select sum(EmployeeCount),
BusinessTravel
from employee_attrition
where attrition = 'Yes'
group by 2;

-- COMMAND ----------

-- MAGIC %md
-- MAGIC <div align="center"><h1 style="color:#2E64FE;">Attrition by Business Travel</h1></div>
-- MAGIC
-- MAGIC <h2 align="center">🔍 Insights:</h2>
-- MAGIC
-- MAGIC - **Frequent Travel** 🌎: Employees who have to travel frequently for business purposes have a higher attrition rate. The stress and time away from home may contribute to this. The organization should consider more flexible travel policies and support for these employees.
-- MAGIC
-- MAGIC - **Non-Travel** 🏡: Employees who do not need to travel have a lower attrition rate. They may appreciate a stable and local work environment. The organization should continue to provide a comfortable work environment for them.
-- MAGIC
-- MAGIC - **Travel Rarely** 🌟: Employees who travel rarely for business have a moderate attrition rate. The organization should ensure that these employees have the necessary resources and support during their occasional business trips.
-- MAGIC
-- MAGIC <h2 align="center">🚀 Actions for the Organization:</h2>
-- MAGIC
-- MAGIC After performing this analysis, the organization can take the following actions:
-- MAGIC
-- MAGIC 1. **Flexible Travel Policies** 🛠️: Implement more flexible travel policies to reduce stress and improve work-life balance for employees who need to travel frequently.
-- MAGIC
-- MAGIC 2. **Stable Work Environment** 🌱: Maintain a stable and local work environment for employees who do not need to travel. Focus on creating a comfortable and convenient workplace.
-- MAGIC
-- MAGIC 3. **Support for Occasional Travel** 📚: Provide necessary resources and support for employees who travel rarely for business to ensure a smooth experience during their trips.
-- MAGIC 4. **Implement Flexible Work Options** 🛠️: Introduce a flexible work schedule, such as 2 days remote and 3 days in the office, for employees who need to travel frequently. This approach can enhance work-life balance and reduce the impact of frequent travel on attrition.
-- MAGIC
-- MAGIC By offering flexible work options, the organization can address the challenges of frequent travel and improve retention for employees in this category.
-- MAGIC
-- MAGIC This analysis helps the organization understand the impact of business travel on attrition and offers strategies to improve retention for different travel categories.
-- MAGIC
-- MAGIC

-- COMMAND ----------

-- DBTITLE 1,Attrition by Education and Salary
SELECT
  SUM(EmployeeCount) AS TotalEmployees,
  CASE
    WHEN Education = 1 THEN 'Below College'
    WHEN Education = 2 THEN 'College'
    WHEN Education = 3 THEN 'Bachelor'
    WHEN Education = 4 THEN 'Masters'
    ELSE 'Doctorate'
  END AS Education_group,
  CASE
    WHEN MonthlyIncome < (SELECT AVG(MonthlyIncome) FROM employee_attrition WHERE Attrition = 'Yes') THEN 'Low Salary'
    ELSE 'High Salary'
  END AS Salary_group
FROM employee_attrition
WHERE Attrition = 'Yes'
GROUP BY 2 , 3;


-- COMMAND ----------

SELECT
  SUM(EmployeeCount) AS TotalEmployees,
  CASE
    WHEN Education = 1 THEN 'Below College'
    WHEN Education = 2 THEN 'College'
    WHEN Education = 3 THEN 'Bachelor'
    WHEN Education = 4 THEN 'Masters'
    ELSE 'Doctorate'
  END AS Education_group,
  CASE
    WHEN MonthlyIncome < (SELECT AVG(MonthlyIncome) FROM employee_attrition WHERE Attrition = 'Yes') THEN 'Low Salary'
    ELSE 'High Salary'
  END AS Salary_group
FROM employee_attrition
WHERE Attrition = 'Yes'
GROUP BY 2 , 3;


-- COMMAND ----------

-- MAGIC %md
-- MAGIC <div align="center"><h1 style="color:#2E64FE;">Attrition by Education and Salary</h1></div>
-- MAGIC
-- MAGIC <h2 align="center">🔍 Insights:</h2>
-- MAGIC
-- MAGIC - **Below College Education with Low Salary** 📚: Employees with education below college level and low salaries are more likely to experience attrition. The organization should focus on skill development and providing opportunities for career advancement for this group.
-- MAGIC
-- MAGIC - **College Education with Low Salary** 🏫: Employees with college-level education and low salaries also have a relatively high attrition rate. Providing additional training and offering pathways for career growth can help retain this group.
-- MAGIC
-- MAGIC - **Bachelor's Education with Low Salary** 🌟: Employees with bachelor's education and low salaries have a moderate attrition rate. The organization should ensure that career advancement opportunities and skill development are available to them.
-- MAGIC
-- MAGIC - **Master's Education with Low Salary** 🎓: Employees with master's education and low salaries experience lower attrition. Recognize their qualifications and provide opportunities for career progression.
-- MAGIC
-- MAGIC - **Doctorate Education with Low Salary** 📖: Employees with doctorate education and low salaries have the lowest attrition rate. Leverage their expertise for the organization's benefit and provide avenues for knowledge-sharing and growth.
-- MAGIC
-- MAGIC - **All Education Levels with High Salary** 💼: Regardless of education, employees with high salaries have a lower attrition rate. The organization should aim to provide competitive salaries to retain talent.
-- MAGIC
-- MAGIC <h2 align="center">🚀 Actions for the Organization:</h2>
-- MAGIC
-- MAGIC After performing this analysis, the organization can take the following actions:
-- MAGIC
-- MAGIC 1. **Skill Development for Lower Education Levels** 🛠️: Implement training programs and skill development opportunities for employees with education levels below college to enhance their qualifications and job satisfaction.
-- MAGIC
-- MAGIC 2. **Career Growth Pathways** 🌱: Create clear career pathways and promote career advancement for employees with various education levels and low salaries to improve retention.
-- MAGIC
-- MAGIC 3. **Recognizing Advanced Education** 🌟: Acknowledge the qualifications of employees with bachelor's, master's, and doctorate education levels. Provide opportunities for them to contribute their expertise and knowledge within the organization.
-- MAGIC
-- MAGIC 4. **Competitive Salaries** 📊: Ensure that employees are compensated competitively, especially for those with higher education levels, to attract and retain top talent.
-- MAGIC
-- MAGIC This analysis highlights the relationship between education, salary, and attrition, offering actionable insights to improve employee retention.
-- MAGIC

-- COMMAND ----------

-- DBTITLE 1,Attrition by Tenure
SELECT
  Tenure_group,
  COUNT(*) AS TotalEmployees,
  SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS AttritionCount,
  SUM(CASE WHEN Attrition = 'No' THEN 1 ELSE 0 END) AS RetentionCount,
  (SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) / COUNT(*)) * 100 AS AttritionRate
FROM (
  SELECT
    CASE
      WHEN YearsAtCompany < 2 THEN 'Less than 2 years'
      WHEN YearsAtCompany < 5 THEN '2-4 years'
      WHEN YearsAtCompany < 10 THEN '5-9 years'
      ELSE '10 or more years'
    END AS Tenure_group,
    Attrition
  FROM employee_attrition
) AS TenureData
GROUP BY Tenure_group;


-- COMMAND ----------

-- MAGIC %md
-- MAGIC <div align="center"><h1 style="color:#2E64FE;">Attrition by Tenure</h1></div>
-- MAGIC
-- MAGIC <h2 align="center">🔍 Insights:</h2>
-- MAGIC
-- MAGIC - **Less than 2 years** 📊: Employees with less than 2 years of tenure have a relatively high attrition rate. The organization should focus on effective onboarding, job satisfaction, and career growth opportunities for this group to improve retention.
-- MAGIC
-- MAGIC - **2-4 years** 🌟: Employees with 2-4 years of tenure have a moderate attrition rate. The organization should ensure that these employees continue to feel engaged and satisfied in their roles.
-- MAGIC
-- MAGIC - **5-9 years** 😃: Employees with 5-9 years of tenure experience lower attrition. The organization should recognize and reward their loyalty and provide opportunities for career growth.
-- MAGIC
-- MAGIC - **10 or more years** 🏆: Employees with 10 or more years of tenure have the lowest attrition rate. The organization should foster an environment that retains experienced employees and benefits from their knowledge.
-- MAGIC
-- MAGIC <h2 align="center">🚀 Actions for the Organization:</h2>
-- MAGIC
-- MAGIC After performing this analysis, the organization can take the following actions:
-- MAGIC
-- MAGIC 1. **Onboarding and Engagement** 🛠️: Improve onboarding processes and early career engagement for employees with less than 2 years of tenure. Provide clear career paths, mentorship, and opportunities for skill development.
-- MAGIC
-- MAGIC 2. **Retention Strategies** 🌱: Develop retention strategies for employees with 2-4 years of tenure. Ensure that job satisfaction is maintained and provide opportunities for growth within the organization.
-- MAGIC
-- MAGIC 3. **Recognition and Growth** 📚: Recognize and reward the loyalty of employees with 5-9 years of tenure. Provide opportunities for career growth, leadership roles, and knowledge-sharing.
-- MAGIC
-- MAGIC 4. **Retaining Experience** 📊: Create an environment that values and retains employees with 10 or more years of tenure. Leverage their experience to mentor others and drive organizational success.
-- MAGIC
-- MAGIC This analysis provides insights into attrition based on tenure, helping the organization tailor strategies to improve retention for different tenure groups.
-- MAGIC

-- COMMAND ----------

-- DBTITLE 1,Attrition by Work-Life Balance
SELECT
  CASE
    WHEN WorkLifeBalance = 1 THEN 'Poor'
    WHEN WorkLifeBalance = 2 THEN 'Fair'
    WHEN WorkLifeBalance = 3 THEN 'Good'
    WHEN WorkLifeBalance = 4 THEN 'Excellent'
    ELSE 'Unknown'
  END AS WorkLifeBalanceLabel,
  COUNT(*) AS TotalEmployees,
  SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS AttritionCount,
  SUM(CASE WHEN Attrition = 'No' THEN 1 ELSE 0 END) AS RetentionCount,
  (SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) / COUNT(*)) * 100 AS AttritionRate
FROM employee_attrition
GROUP BY WorkLifeBalanceLabel;


-- COMMAND ----------

-- MAGIC %md
-- MAGIC <div align="center"><h1 style="color:#2E64FE;">Attrition by Work-Life Balance</h1></div>
-- MAGIC
-- MAGIC <h2 align="center">🔍 Insights:</h2>
-- MAGIC
-- MAGIC - **Poor Work-Life Balance** 😞: Employees reporting poor work-life balance are more likely to experience attrition. The organization should focus on improving work-life balance to retain talent.
-- MAGIC
-- MAGIC - **Fair Work-Life Balance** 😐: Employees with a fair work-life balance have a moderate attrition rate. The organization should ensure that fair work-life balance is maintained and improved where necessary.
-- MAGIC
-- MAGIC - **Good Work-Life Balance** 😃: Employees with a good work-life balance experience lower attrition. It's essential to sustain and promote this positive work-life balance.
-- MAGIC
-- MAGIC - **Excellent Work-Life Balance** 🌟: Employees with an excellent work-life balance have the lowest attrition rate. The organization should strive to create an environment where an excellent work-life balance is the norm.
-- MAGIC
-- MAGIC <h2 align="center">🚀 Actions for the Organization:</h2>
-- MAGIC
-- MAGIC After performing this analysis, the organization can take the following actions:
-- MAGIC
-- MAGIC 1. **Work-Life Balance Improvements** 🛠️: Implement strategies to enhance work-life balance for employees reporting "Poor" or "Fair" work-life balance. This can include flexible scheduling, stress management programs, and support for remote work.
-- MAGIC
-- MAGIC 2. **Maintain Good Work-Life Balance** 🌱: Ensure that the "Good" work-life balance is preserved and that employees continue to benefit from it. Encourage practices that support this balance.
-- MAGIC
-- MAGIC 3. **Promote Excellent Work-Life Balance** 📚: Foster a workplace culture that promotes and sustains an "Excellent" work-life balance for all employees. Recognize and reward practices that contribute to this balance.
-- MAGIC
-- MAGIC 4. **Feedback and Improvement** 📊: Continuously collect feedback from employees regarding work-life balance and make data-driven decisions to create an environment where work-life balance is a priority.
-- MAGIC
-- MAGIC This analysis can guide the organization in understanding the relationship between work-life balance and attrition, leading to actions that improve employee satisfaction and retention.
-- MAGIC

-- COMMAND ----------

-- DBTITLE 1,Attrition by Promotion History
SELECT
  PromotionHistory,
  COUNT(*) AS TotalEmployees,
  SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS AttritionCount,
  SUM(CASE WHEN Attrition = 'No' THEN 1 ELSE 0 END) AS RetentionCount,
  (SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) / COUNT(*)) * 100 AS AttritionRate
FROM (
  SELECT
    CASE
      WHEN NumCompaniesWorked > 1 THEN 'Experienced'
      WHEN YearsSinceLastPromotion = 0 THEN 'Recently Promoted'
      WHEN YearsSinceLastPromotion >= 1 THEN 'Promoted in the Past'
      ELSE 'No Promotion'
    END AS PromotionHistory,
    Attrition
  FROM employee_attrition
) AS PromotionData
GROUP BY PromotionHistory;


-- COMMAND ----------

-- MAGIC %md
-- MAGIC <div align="center"><h1 style="color:#2E64FE;">Attrition by Promotion History</h1></div>
-- MAGIC
-- MAGIC <h2 align="center">🔍 Insights:</h2>
-- MAGIC
-- MAGIC - **Experienced Employees** 🌟: Employees with a history of working at multiple companies have a higher attrition rate. This suggests that the organization should pay attention to the onboarding and integration process for experienced hires to ensure they feel connected and valued in the new environment.
-- MAGIC
-- MAGIC - **Recently Promoted** 🚀: Employees who were recently promoted also have a relatively high attrition rate. This could indicate that recent promotions may not have aligned with employees' expectations or that they face challenges in their new roles. It may be beneficial to provide additional support, mentoring, or training to recently promoted employees.
-- MAGIC
-- MAGIC - **Promoted in the Past** 📈: Employees who were promoted in the past have a moderate attrition rate. While this rate is lower than that of the "Recently Promoted" group, it is still a point of concern. The organization should explore whether employees who were promoted in the past require ongoing career development and advancement opportunities to maintain their engagement.
-- MAGIC
-- MAGIC - **No Promotion** 🏆: Employees with no promotions have the lowest attrition rate. However, this group may require opportunities for skill development and advancement to ensure that they remain engaged and satisfied in their current roles.
-- MAGIC
-- MAGIC <h2 align="center">🚀 Actions for the Organization:</h2>
-- MAGIC
-- MAGIC After performing this analysis, the organization can take the following actions:
-- MAGIC
-- MAGIC 1. **Onboarding for Experience** 🛠️: Implement a comprehensive onboarding program for employees with previous work experience at multiple companies to help them adapt to the organization's culture, values, and expectations.
-- MAGIC
-- MAGIC 2. **Support Recent Promotions** 🌱: Provide additional support, training, and mentorship for employees who have been recently promoted. This support can help them transition into their new roles more effectively and reduce attrition.
-- MAGIC
-- MAGIC 3. **Career Development** 📚: Offer ongoing career development opportunities for all employees, including those who have been promoted in the past and those who have not been promoted. This can include training, mentorship, and advancement pathways to keep employees engaged and motivated.
-- MAGIC
-- MAGIC 4. **Performance Assessments** 📊: Conduct regular performance assessments to identify potential challenges and areas for improvement within the organization. Use feedback from employees to make data-driven decisions and address issues related to promotion and attrition.
-- MAGIC

-- COMMAND ----------

SELECT OverTime,
       COUNT(*) AS AttritionCount,
       COUNT(*) AS RetentionCount,
       COUNT(*) AS TotalEmployees,
       SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS AttritionCount,
       SUM(CASE WHEN Attrition = 'No' THEN 1 ELSE 0 END) AS RetentionCount,
       (SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) / COUNT(*)) * 100 AS AttritionRate
FROM employee_attrition
GROUP BY OverTime;


-- COMMAND ----------

-- MAGIC %md
-- MAGIC <div align="center"><h1 style="color:#2E64FE;"># Employee Attrition Analysis</h1></div>
-- MAGIC
-- MAGIC ## Attrition by Overtime 🕒
-- MAGIC
-- MAGIC 🔍 **Insights:**
-- MAGIC
-- MAGIC - Employees working overtime have a higher attrition rate of 30.53%, while those not working overtime have a lower attrition rate of 10.44%.
-- MAGIC - The majority of employees (1054) do not work overtime, while a smaller group (416) works overtime.
-- MAGIC - Retention is higher for employees without overtime (944) compared to those working overtime (289).
-- MAGIC
-- MAGIC 💡 **Actions for the Organization:**
-- MAGIC
-- MAGIC 1. 💼 **Promote Work-Life Balance:** To address the higher attrition rate among employees working overtime, the organization should emphasize the importance of work-life balance. Encouraging employees to maintain a healthy work-life balance can help reduce stress and burnout.
-- MAGIC
-- MAGIC 2. 🌟 **Manage Work-Related Stress:** The organization should identify sources of stress related to overtime work and implement strategies to manage it. Providing stress-relief programs, counseling, and support can help employees cope with the demands of their roles.
-- MAGIC
-- MAGIC 3. ⏰ **Flexible Work Hours:** Consider offering flexible working hours to employees working overtime. This can help them balance their work responsibilities with personal life, reducing the strain associated with extended working hours.
-- MAGIC
-- MAGIC 4. 🚀 **Hiring Additional Staff:** If feasible, the organization can explore hiring additional staff to share the workload with employees working overtime. This can alleviate their burden and improve overall job satisfaction.
-- MAGIC
-- MAGIC By implementing these actions, the organization can work to reduce attrition among employees working overtime and create a more balanced and supportive work environment.
-- MAGIC

-- COMMAND ----------

SELECT
  SUM(EmployeeCount) AS TotalEmployees,
  CASE
    WHEN Education = 1 THEN 'Below College'
    WHEN Education = 2 THEN 'College'
    WHEN Education = 3 THEN 'Bachelor'
    WHEN Education = 4 THEN 'Masters'
    ELSE 'Doctorate'
  END AS Education_group,
  CASE
    WHEN MonthlyIncome < (SELECT AVG(MonthlyIncome) FROM employee_attrition WHERE Attrition = 'Yes') THEN 'Low Salary'
    ELSE 'High Salary'
  END AS Salary_group
FROM employee_attrition
WHERE Attrition = 'Yes'
GROUP BY 2, 3;


-- COMMAND ----------

SELECT
  MaritalStatus,
  COUNT(*) AS TotalEmployees,
  SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS AttritionCount,
  SUM(CASE WHEN Attrition = 'No' THEN 1 ELSE 0 END) AS RetentionCount
FROM employee_attrition
GROUP BY MaritalStatus;


-- COMMAND ----------

SELECT
  JobRole,
  COUNT(*) AS TotalEmployees,
  SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS AttritionCount,
  SUM(CASE WHEN Attrition = 'No' THEN 1 ELSE 0 END) AS RetentionCount
FROM employee_attrition
GROUP BY JobRole;


-- COMMAND ----------

-- MAGIC %md
-- MAGIC # Insights from Attrition by Job Role 🕵️‍♂️
-- MAGIC
-- MAGIC Below are insights gained from analyzing attrition by job roles in the organization:
-- MAGIC
-- MAGIC ### High Attrition Job Roles 📈
-- MAGIC
-- MAGIC 1. **Sales Representatives:** 🚀 The highest attrition rate among job roles, with 33 out of 83 employees leaving. The organization should focus on improving working conditions, offering incentives, and providing opportunities for career growth in this role.
-- MAGIC
-- MAGIC 2. **Laboratory Technicians:** 🔬 Also experience a high attrition rate, with 62 out of 259 leaving. The organization should assess factors contributing to attrition among lab technicians, such as work-related stress, and implement strategies to address these concerns.
-- MAGIC
-- MAGIC ### Moderate Attrition Job Role 📊
-- MAGIC
-- MAGIC 3. **Research Scientists:** 🧪 Face a moderate attrition rate, with 47 out of 292 leaving. To improve retention, the organization can offer opportunities for professional development and ensure that their contributions are recognized.
-- MAGIC
-- MAGIC ### Low Attrition Job Roles 📉
-- MAGIC
-- MAGIC 4. **Managers:** 👨‍💼 Have a relatively low attrition rate, with only 5 out of 102 leaving. The organization should continue to support and provide growth opportunities for managers to maintain this positive trend.
-- MAGIC
-- MAGIC 5. **Research Directors:** 👩‍🔬 Have the lowest attrition rate, with only 2 out of 80 leaving. The organization should maintain a focus on professional development and recognition for employees in this role.
-- MAGIC
-- MAGIC # Actions for the Organization 🚀
-- MAGIC
-- MAGIC To address the attrition findings, the organization can take the following actions:
-- MAGIC
-- MAGIC - Implement retention strategies for **Sales Representatives** and **Laboratory Technicians**, including improved working conditions, incentives, and clear career paths.
-- MAGIC
-- MAGIC - Provide opportunities for professional development and recognition for **Research Scientists** to reduce attrition.
-- MAGIC
-- MAGIC - Continue supporting and providing growth opportunities for **Managers** and **Research Directors** to maintain low attrition rates.
-- MAGIC
-- MAGIC These insights and actions can help the organization effectively address attrition concerns.
-- MAGIC

-- COMMAND ----------

-- MAGIC %md
-- MAGIC # <span style="color:#3498db;">As Comclusion</span>
-- MAGIC
-- MAGIC # <span style="color:#3498db;">Employee Attrition Analysis Insights</span>
-- MAGIC
-- MAGIC This project aimed to provide insights into employee attrition based on a dataset of employee information. Here are the key insights obtained from the analysis:
-- MAGIC
-- MAGIC ## <span style="color:#e74c3c;">1) Attrition by Education Level (📚)</span>
-- MAGIC
-- MAGIC - Employees with education levels below college experience higher attrition.
-- MAGIC - <span style="color:#27ae60;">Suggested Actions:</span>
-- MAGIC   - Focus on Skill Development for Lower Education Levels
-- MAGIC   - Provide Career Growth Pathways
-- MAGIC   - Recognize Advanced Education
-- MAGIC   - Ensure Competitive Salaries
-- MAGIC
-- MAGIC ## <span style="color:#e74c3c;">2) Attrition by Environment Satisfaction (😊)</span>
-- MAGIC
-- MAGIC - Employees with lower environment satisfaction are more likely to leave.
-- MAGIC - <span style="color:#27ae60;">Suggested Actions:</span>
-- MAGIC   - Improve Workplace Satisfaction
-- MAGIC   - Address Environmental Concerns
-- MAGIC   - Foster a Positive Work Atmosphere
-- MAGIC
-- MAGIC ## <span style="color:#e74c3c;">3) Attrition by Business Travel (🌍)</span>
-- MAGIC
-- MAGIC - Frequent business travelers experience higher attrition.
-- MAGIC - <span style="color:#27ae60;">Suggested Actions:</span>
-- MAGIC   - Reduce Travel Frequency
-- MAGIC   - Provide Support for Business Travelers
-- MAGIC   - Explore Remote Work Options
-- MAGIC
-- MAGIC ## <span style="color:#e74c3c;">4) Attrition by Education and Salary (📚💰)</span>
-- MAGIC
-- MAGIC - Below College Education with Low Salary leads to higher attrition.
-- MAGIC - <span style="color:#27ae60;">Suggested Actions:</span>
-- MAGIC   - Focus on Skill Development for Lower Education Levels
-- MAGIC   - Provide Career Growth Pathways
-- MAGIC   - Recognize Advanced Education
-- MAGIC   - Ensure Competitive Salaries
-- MAGIC
-- MAGIC ## <span style="color:#e74c3c;">5) Attrition by Tenure (🔒)</span>
-- MAGIC
-- MAGIC - Employees with less than 2 years of tenure have higher attrition rates.
-- MAGIC - <span style="color:#27ae60;">Suggested Actions:</span>
-- MAGIC   - Improve Onboarding and Engagement for New Hires
-- MAGIC   - Develop Retention Strategies for 2-4 Years of Tenure
-- MAGIC   - Recognize and Reward Loyalty for 5-9 Years of Tenure
-- MAGIC   - Foster an Environment that Retains Experienced Employees (10+ Years)
-- MAGIC
-- MAGIC ## <span style="color:#e74c3c;">6) Attrition by Work-Life Balance (🌟)</span>
-- MAGIC
-- MAGIC - Poor Work-Life Balance leads to higher attrition.
-- MAGIC - <span style="color:#27ae60;">Suggested Actions:</span>
-- MAGIC   - Improve Work-Life Balance for Employees Reporting "Poor" or "Fair" Balance
-- MAGIC   - Maintain "Good" Work-Life Balance
-- MAGIC   - Promote "Excellent" Work-Life Balance
-- MAGIC   - Collect Feedback and Make Data-Driven Decisions
-- MAGIC
-- MAGIC ## <span style="color:#e74c3c;">7) Attrition by Promotion History (🚀)</span>
-- MAGIC
-- MAGIC - Experienced employees have higher attrition.
-- MAGIC - <span style="color:#27ae60;">Suggested Actions:</span>
-- MAGIC   - Provide Comprehensive Onboarding for Experienced Hires
-- MAGIC   - Offer Support, Training, and Mentoring for Recent Promotions
-- MAGIC   - Focus on Career Development for Employees Promoted in the Past
-- MAGIC   - Provide Skill Development and Advancement Opportunities for Those with No Promotions
-- MAGIC
-- MAGIC ## <span style="color:#e74c3c;">8) Attrition by Overtime (🕒)</span>
-- MAGIC
-- MAGIC - Employees working overtime have a higher attrition rate.
-- MAGIC - <span style="color:#27ae60;">Suggested Actions:</span>
-- MAGIC   - Promote Work-Life Balance
-- MAGIC   - Manage Work-Related Stress
-- MAGIC   - Offer Flexible Work Hours
-- MAGIC   - Consider Hiring Additional Staff
-- MAGIC
-- MAGIC ## <span style="color:#e74c3c;">9) Insights from Attrition by Job Role (👥)</span>
-- MAGIC
-- MAGIC - Job roles have varying attrition rates.
-- MAGIC - <span style="color:#27ae60;">Suggested Actions:</span>
-- MAGIC   - Tailor retention strategies based on specific job roles to address attrition.
-- MAGIC
-- MAGIC **In conclusion,** understanding and addressing the factors influencing employee attrition are crucial for maintaining a stable and productive workforce. The insights gathered from this analysis can serve as a foundation for implementing effective retention strategies and promoting a healthier work environment.
-- MAGIC

-- COMMAND ----------

-- MAGIC %md
-- MAGIC # <span style="color:#3498db;">Employee Attrition Analysis Insights</span>
-- MAGIC
-- MAGIC This project aimed to provide insights into employee attrition based on a dataset of employee information. Here are the key insights obtained from the analysis:
-- MAGIC
-- MAGIC ## <span style="color:#e74c3c;">1) Attrition by Education Level (📚)</span>
-- MAGIC
-- MAGIC - Employees with education levels below college experience higher attrition.
-- MAGIC - <span style="color:#c0392b;">Suggested Actions:</span>
-- MAGIC   - <span style="color:#d35400;">Focus on Skill Development for Lower Education Levels</span>
-- MAGIC   - <span style="color:#f39c12;">Provide Career Growth Pathways</span>
-- MAGIC   - <span style="color:#27ae60;">Recognize Advanced Education</span>
-- MAGIC   - <span style="color:#2980b9;">Ensure Competitive Salaries</span>
-- MAGIC
-- MAGIC ## <span style="color:#e74c3c;">2) Attrition by Environment Satisfaction (😊)</span>
-- MAGIC
-- MAGIC - Employees with lower environment satisfaction are more likely to leave.
-- MAGIC - <span style="color:#c0392b;">Suggested Actions:</span>
-- MAGIC   - <span style="color:#d35400;">Improve Workplace Satisfaction</span>
-- MAGIC   - <span style="color:#f39c12;">Address Environmental Concerns</span>
-- MAGIC   - <span style="color:#27ae60;">Foster a Positive Work Atmosphere</span>
-- MAGIC
-- MAGIC ## <span style="color:#e74c3c;">3) Attrition by Business Travel (🌍)</span>
-- MAGIC
-- MAGIC - Frequent business travelers experience higher attrition.
-- MAGIC - <span style="color:#c0392b;">Suggested Actions:</span>
-- MAGIC   - <span style="color:#d35400;">Reduce Travel Frequency</span>
-- MAGIC   - <span style="color:#f39c12;">Provide Support for Business Travelers</span>
-- MAGIC   - <span style="color:#27ae60;">Explore Remote Work Options</span>
-- MAGIC
-- MAGIC ## <span style="color:#e74c3c;">4) Attrition by Education and Salary (📚💰)</span>
-- MAGIC
-- MAGIC - Below College Education with Low Salary leads to higher attrition.
-- MAGIC - <span style="color:#c0392b;">Suggested Actions:</span>
-- MAGIC   - <span style="color:#d35400;">Focus on Skill Development for Lower Education Levels</span>
-- MAGIC   - <span style="color:#f39c12;">Provide Career Growth Pathways</span>
-- MAGIC   - <span style="color:#27ae60;">Recognize Advanced Education</span>
-- MAGIC   - <span style="color:#2980b9;">Ensure Competitive Salaries</span>
-- MAGIC
-- MAGIC ## <span style="color:#e74c3c;">5) Attrition by Tenure (🔒)</span>
-- MAGIC
-- MAGIC - Employees with less than 2 years of tenure have higher attrition rates.
-- MAGIC - <span style="color:#c0392b;">Suggested Actions:</span>
-- MAGIC   - <span style="color:#d35400;">Improve Onboarding and Engagement for New Hires</span>
-- MAGIC   - <span style="color:#f39c12;">Develop Retention Strategies for 2-4 Years of Tenure</span>
-- MAGIC   - <span style="color:#27ae60;">Recognize and Reward Loyalty for 5-9 Years of Tenure</span>
-- MAGIC   - <span style="color:#2980b9;">Foster an Environment that Retains Experienced Employees (10+ Years)</span>
-- MAGIC
-- MAGIC ## <span style="color:#e74c3c;">6) Attrition by Work-Life Balance (🌟)</span>
-- MAGIC
-- MAGIC - Poor Work-Life Balance leads to higher attrition.
-- MAGIC - <span style="color:#c0392b;">Suggested Actions:</span>
-- MAGIC   - <span style="color:#d35400;">Improve Work-Life Balance for Employees Reporting "Poor" or "Fair" Balance</span>
-- MAGIC   - <span style="color:#f39c12;">Maintain "Good" Work-Life Balance</span>
-- MAGIC   - <span style="color:#27ae60;">Promote "Excellent" Work-Life Balance</span>
-- MAGIC   - <span style="color:#2980b9;">Collect Feedback and Make Data-Driven Decisions</span>
-- MAGIC
-- MAGIC ## <span style="color:#e74c3c;">7) Attrition by Promotion History (🚀)</span>
-- MAGIC
-- MAGIC - Experienced employees have higher attrition.
-- MAGIC - <span style="color:#c0392b;">Suggested Actions:</span>
-- MAGIC   - <span style="color:#d35400;">Provide Comprehensive Onboarding for Experienced Hires</span>
-- MAGIC   - <span style="color:#f39c12;">Offer Support, Training, and Mentoring for Recent Promotions</span>
-- MAGIC   - <span style="color:#27ae60;">Focus on Career Development for Employees Promoted in the Past</span>
-- MAGIC   - <span style="color:#2980b9;">Provide Skill Development and Advancement Opportunities for Those with No Promotions</span>
-- MAGIC
-- MAGIC ## <span style="color:#e74c3c;">8) Employee Attrition Analysis</span>
-- MAGIC
-- MAGIC - Provide an overview of the analysis.
-- MAGIC
-- MAGIC ## <span style="color:#e74c3c;">9) Attrition by Overtime (🕒)</span>
-- MAGIC
-- MAGIC - Employees working overtime have a higher attrition rate.
-- MAGIC - <span style="color:#c0392b;">Suggested Actions:</span>
-- MAGIC   - <span style="color:#d35400;">Promote Work-Life Balance</span>
-- MAGIC   - <span style="color:#f39c12;">Manage Work-Related Stress</span>
-- MAGIC   - <span style="color:#27ae60;">Offer Flexible Work Hours</span>
-- MAGIC   - <span style="color:#2980b9;">Consider Hiring Additional Staff</span>
-- MAGIC
-- MAGIC ## <span style="color:#e74c3c;">10) Insights from Attrition by Job Role (👥)</span>
-- MAGIC
-- MAGIC - Job roles have varying attrition rates.
-- MAGIC - <span style="color:#c0392b;">Suggested Actions:</span>
-- MAGIC   - <span style="color:#d35400;">Tailor retention strategies based on specific job roles to address attrition.</span>
-- MAGIC
-- MAGIC **In conclusion,** understanding and addressing the factors influencing employee attrition are crucial for maintaining a stable and productive workforce. The insights gathered from this analysis can serve as a foundation for implementing effective retention strategies and promoting a healthier work environment.
-- MAGIC

-- COMMAND ----------

-- MAGIC
-- MAGIC %md
-- MAGIC # <span style="color:#3498db;">Enhanced Features</span>
-- MAGIC
-- MAGIC ## 📊 Hypothesis Testing and A/B Test Analytics
-- MAGIC
-- MAGIC In this section, we delve into the application of hypothesis testing and A/B test analytics to derive actionable insights related to employee attrition within the organization.
-- MAGIC
-- MAGIC ### 📈 Hypothesis Testing
-- MAGIC
-- MAGIC Hypothesis testing is a crucial statistical method used to make inferences or decisions based on data. In our analysis, we formulated hypotheses to test various factors contributing to employee attrition and employed statistical tests to validate these hypotheses.
-- MAGIC
-- MAGIC #### Example Hypothesis:
-- MAGIC
-- MAGIC - **Null Hypothesis (H0)**: There is no significant difference in employee attrition rates between different education levels.
-- MAGIC - **Alternative Hypothesis (H1)**: There is a significant difference in employee attrition rates between different education levels.
-- MAGIC
-- MAGIC ##### Statistical Test Used:
-- MAGIC
-- MAGIC - Chi-square test
-- MAGIC - t-test
-- MAGIC - ANOVA
-- MAGIC

-- COMMAND ----------

-- MAGIC %md
-- MAGIC ### Job Satisfaction and Employee Attrition
-- MAGIC

-- COMMAND ----------

-- MAGIC %python
-- MAGIC import pandas as pd
-- MAGIC from scipy import stats
-- MAGIC
-- MAGIC # Load your data (replace with your data loading method)
-- MAGIC data = pd.read_csv("HR-Employee-Attrition.csv")
-- MAGIC
-- MAGIC # Separate data for employees who left and stayed
-- MAGIC left_data = data[data["Attrition"] == "Yes"]
-- MAGIC stayed_data = data[data["Attrition"] == "No"]
-- MAGIC
-- MAGIC # Extract job satisfaction data for both groups
-- MAGIC left_job_satisfaction = left_data["JobSatisfaction"]
-- MAGIC stayed_job_satisfaction = stayed_data["JobSatisfaction"]
-- MAGIC
-- MAGIC # Perform the t-test
-- MAGIC t_statistic, p_value = stats.ttest_ind(left_job_satisfaction, stayed_job_satisfaction)
-- MAGIC
-- MAGIC # Print the results
-- MAGIC print("t-statistic:", t_statistic)
-- MAGIC print("p-value:", p_value)
-- MAGIC
-- MAGIC # Interpretation (replace with your specific logic)
-- MAGIC if p_value < 0.05:
-- MAGIC     print("We reject the null hypothesis. There's a statistically significant difference in job satisfaction between employees who left and those who stayed.")
-- MAGIC else:
-- MAGIC     print("We fail to reject the null hypothesis. There might not be enough evidence to conclude a significant difference in job satisfaction based on this test.")
-- MAGIC

-- COMMAND ----------

-- MAGIC %md
-- MAGIC **Key Insights:**
-- MAGIC
-- MAGIC 1. **Impact of Job Satisfaction**: Lower job satisfaction appears to be associated with higher attrition rates. Employees who reported lower job satisfaction were more likely to leave the company compared to those with higher job satisfaction.
-- MAGIC
-- MAGIC 2. **Significance of Addressing Job Satisfaction**: Addressing job satisfaction levels could be crucial for retention strategies. Improving job satisfaction may help reduce attrition rates and create a more engaged and productive workforce.
-- MAGIC
-- MAGIC By understanding the relationship between job satisfaction and employee attrition, organizations can develop targeted strategies to enhance job satisfaction levels and ultimately reduce attrition rates effectively.

-- COMMAND ----------

-- MAGIC %md
-- MAGIC ###Attrition Rates and Education Levels
-- MAGIC

-- COMMAND ----------

-- MAGIC %python
-- MAGIC import scipy.stats as stats
-- MAGIC import pandas as pd
-- MAGIC
-- MAGIC # Load your dataset
-- MAGIC # Assuming you have a DataFrame named 'employee_data'
-- MAGIC # employee_data = pd.read_csv('employee_attrition_data.csv')
-- MAGIC
-- MAGIC # Example: Hypothesis testing for attrition rates by education level
-- MAGIC education_groups = data.groupby('Education')['Attrition'].value_counts().unstack()
-- MAGIC chi2, p, _, _ = stats.chi2_contingency(education_groups.fillna(0))
-- MAGIC
-- MAGIC print(f"Chi-squared test statistic: {chi2}")
-- MAGIC print(f"P-value: {p}")
-- MAGIC
-- MAGIC if p < 0.05:
-- MAGIC     print("Reject the null hypothesis: There is a significant difference in attrition rates between education levels.")
-- MAGIC else:
-- MAGIC     print("Fail to reject the null hypothesis: No significant difference in attrition rates between education levels.")
-- MAGIC

-- COMMAND ----------

-- MAGIC %md
-- MAGIC #### Interpretation:
-- MAGIC
-- MAGIC The Chi-squared test results indicate a p-value of 0.5455, which is greater than the commonly used significance level of 0.05. Therefore, we fail to reject the null hypothesis, suggesting that there's no significant difference in attrition rates between different education levels.
-- MAGIC
-- MAGIC **Key Insights:**
-- MAGIC
-- MAGIC 1. **No Significant Difference in Attrition Rates**: The analysis does not provide evidence to support the notion that education levels have a significant impact on employee attrition rates within the organization.
-- MAGIC
-- MAGIC 2. **Consideration for Other Factors**: While education levels may not be a significant factor in attrition rates, it's essential to explore other potential factors that could influence employee attrition, such as job satisfaction, work-life balance, and job roles.
-- MAGIC
-- MAGIC Understanding the lack of significant correlation between education levels and attrition rates can guide organizations to focus on other critical factors when developing retention strategies.

-- COMMAND ----------

-- MAGIC %md
-- MAGIC ###Monthly Income and Employee Attrition

-- COMMAND ----------

-- MAGIC %python
-- MAGIC # Extract monthly income data for both groups
-- MAGIC left_income = left_data["MonthlyIncome"]
-- MAGIC stayed_income = stayed_data["MonthlyIncome"]
-- MAGIC
-- MAGIC # Perform the t-test
-- MAGIC t_statistic_income, p_value_income = stats.ttest_ind(left_income, stayed_income)
-- MAGIC
-- MAGIC # Print the results
-- MAGIC print("t-statistic for Monthly Income:", t_statistic_income)
-- MAGIC print("p-value for Monthly Income:", p_value_income)
-- MAGIC

-- COMMAND ----------

-- MAGIC %md
-- MAGIC #### Interpretation:
-- MAGIC
-- MAGIC The t-test results reveal a statistically significant relationship between monthly income and employee attrition. With a very low p-value (7.15e-10), we reject the null hypothesis, indicating that there is a significant difference in monthly income between employees who left the company and those who stayed.
-- MAGIC
-- MAGIC **Key Insights:**
-- MAGIC
-- MAGIC 1. **Impact of Monthly Income**: Lower monthly income appears to be associated with higher attrition rates. Employees with lower monthly income were more likely to leave the company compared to those with higher monthly income.
-- MAGIC
-- MAGIC 2. **Consideration for Compensation Strategies**: Addressing compensation and ensuring competitive salaries could be crucial for retention strategies. Offering competitive compensation packages may help reduce attrition rates and enhance employee satisfaction and loyalty.
-- MAGIC
-- MAGIC Understanding the significant impact of monthly income on employee attrition can guide organizations in developing targeted strategies to address compensation concerns and improve employee retention effectively.

-- COMMAND ----------

-- MAGIC %md
-- MAGIC ### Work-Life Balance and Employee Attrition
-- MAGIC

-- COMMAND ----------

-- MAGIC %python
-- MAGIC left_work_life_balance = left_data["WorkLifeBalance"]
-- MAGIC stayed_work_life_balance = stayed_data["WorkLifeBalance"]
-- MAGIC
-- MAGIC # Perform the t-test
-- MAGIC t_statistic_wlb, p_value_wlb = stats.ttest_ind(left_work_life_balance, stayed_work_life_balance)
-- MAGIC
-- MAGIC # Print the results
-- MAGIC print("t-statistic for Work-Life Balance:", t_statistic_wlb)
-- MAGIC print("p-value for Work-Life Balance:", p_value_wlb)
-- MAGIC

-- COMMAND ----------

-- MAGIC %md
-- MAGIC #### Interpretation:
-- MAGIC
-- MAGIC The t-test results indicate a statistically significant relationship between work-life balance and employee attrition. With a p-value of 0.0142, which is less than the commonly used significance level of 0.05, we reject the null hypothesis. This suggests that there is a significant difference in work-life balance between employees who left the company and those who stayed.
-- MAGIC
-- MAGIC **Key Insights:**
-- MAGIC
-- MAGIC 1. **Impact of Work-Life Balance**: Poor work-life balance appears to be associated with higher attrition rates. Employees reporting lower work-life balance were more likely to leave the company compared to those with better work-life balance.
-- MAGIC
-- MAGIC 2. **Consideration for Work-Life Balance Policies**: Implementing policies that promote a healthy work-life balance could be essential for retention strategies. Creating a supportive work environment that prioritizes work-life balance may help reduce attrition rates and improve overall employee well-being.
-- MAGIC
-- MAGIC Understanding the significant impact of work-life balance on employee attrition can guide organizations in developing effective strategies to enhance work-life balance and improve employee retention.

-- COMMAND ----------

-- MAGIC %md
-- MAGIC ### Monthly Income and Employee Attrition
-- MAGIC
-- MAGIC

-- COMMAND ----------

-- MAGIC %python
-- MAGIC # Extract monthly income data for both groups
-- MAGIC left_income = left_data["MonthlyIncome"]
-- MAGIC stayed_income = stayed_data["MonthlyIncome"]
-- MAGIC
-- MAGIC # Perform the t-test
-- MAGIC t_statistic_income, p_value_income = stats.ttest_ind(left_income, stayed_income)
-- MAGIC
-- MAGIC # Print the results
-- MAGIC print("t-statistic for Monthly Income:", t_statistic_income)
-- MAGIC print("p-value for Monthly Income:", p_value_income)
-- MAGIC

-- COMMAND ----------

-- MAGIC %md
-- MAGIC #### Interpretation:
-- MAGIC
-- MAGIC The t-test results reveal a statistically significant relationship between monthly income and employee attrition. With a very low p-value (7.15e-10), we reject the null hypothesis, indicating that there is a significant difference in monthly income between employees who left the company and those who stayed.
-- MAGIC
-- MAGIC **Key Insights:**
-- MAGIC
-- MAGIC 1. **Impact of Monthly Income**: Lower monthly income appears to be associated with higher attrition rates. Employees with lower monthly income were more likely to leave the company compared to those with higher monthly income.
-- MAGIC
-- MAGIC 2. **Consideration for Compensation Strategies**: Addressing compensation and ensuring competitive salaries could be crucial for retention strategies. Offering competitive compensation packages may help reduce attrition rates and enhance employee satisfaction and loyalty.
-- MAGIC
-- MAGIC Understanding the significant impact of monthly income on employee attrition can guide organizations in developing targeted strategies to address compensation concerns and improve employee retention effectively.
