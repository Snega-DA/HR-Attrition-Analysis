# HR Attrition Analysis
## Overview
This project focuses on analyzing employee attrition to identify key factors influencing workforce turnover. Using SQL for data analysis and Power BI for visualization, the project uncovers actionable insights that can help organizations improve employee retention and optimize HR strategies.

## Objective
Analyze employee data to understand attrition patterns                                                
Identify key drivers such as salary, overtime, promotions, and job roles                                  
Build an interactive dashboard for HR decision-making                                                  

## Tools & Technologies
SQL – Data cleaning, transformation, and analysis                                                                                              
Power BI – Interactive dashboard and data visualization

## Dataset
The dataset includes employee-level information such as:                                     
Demographics (Age, Gender, Education)                                                                                        
Job details (Department, Job Role, Years in Role)                                                                                      
Compensation (Monthly Income, Salary Hike %)                                                                                                            
Performance & engagement (Job Satisfaction, Work-Life Balance)                                                                                            
Attrition status                                                                           

## Data Processing (SQL)                                   
Cleaned and validated raw data                                  
Created derived fields:                                                                                                     
        - Salary Slabs                                                                                                          
        - Promotion Gap categories                                                                                                                  
        - Salary Hike groups                                                                                                                           
Performed aggregations using:                                                            
        - GROUP BY                                                                                      
        - CASE WHEN                                                                              
        - Conditional calculations for attrition rate                                                                                                  
Extracted insights across multiple dimensions:                                                                                  
        - Department, Job Role                                                                                            
        - Overtime                                                                                                                      
        - Salary & Salary Hike                                                                                                  
        - Years since last promotion  
        
## Dashboard Features (Power BI)
### KPI Metrics                                                                              
Total Employees, Attrition Count, Active Employees, Attrition Rate, Average Age
### Visual Insights
Attrition by Years in Current Role                                                                    
Overtime vs Attrition                                                                                                  
Attrition by Job Role & Job Satisfaction                                                                                                       
Attrition by Business Travel                                                                                                
Attrition by Department                                                                                                
Attrition by Salary Hike %                                                                                              
Attrition by Years Since Last Promotion                                                                                  
Attrition by Salary Slab                                                                                            

## Key Insights
Employees working overtime show significantly higher attrition                                              
Lower salary slabs and smaller salary hikes are linked to higher turnover                                                                                         
Employees with long gaps since last promotion are more likely to leave                                                                          
Certain job roles and departments consistently show higher attrition rates                                                                            
Business travel frequency also impacts attrition behavior                                                                                  

## Business Impact
This analysis helps HR teams to:                                                                    
Improve compensation and benefits strategy                                                                        
Identify high-risk employee segments                                                                                    
Enhance employee engagement and satisfaction                                                                          
Design better promotion and retention policies                                                                                

## How to Use                                                                                                                        
Clone the repository                                                                                  
Open SQL scripts to view data analysis queries                                                              
Open the .pbix file in Power BI Desktop                                                          
Interact with filters and visuals to explore insights                                                                        
