# Pewlett-Hackard-Analysis
## Overview
The purpose of this project is to help Pewlett-Hackard prepare for the possibility of a wave of retirements, called the "silver tsunami". This analysis:
- Helps determine the number of retiring employees by their title
- Identifies employees who are eligible to participate in a mentorship program 
- Determines other creative ways to analyze the data to provide more insight

## Results
This project produced the following two analysis deliverables:
1) [Retiring Titles](/Data/retiring_titles.csv): Summarizes the total number of employees, of retirement age, by title. 
   
2) [Mentorship Eligibility](/Data/mentorship_eligibility.csv): Contains a list of employees, born between January 1 and December 31, 1965, who are eligible for Pewlett-Hackard's mentorship program.

The takeaway from these two deliverables include four major points:
- The total number of possible retirees is 90,398 employees. These are employees born between January 1, 1952 and December 31, 1955. 
-  ![Retiring Tiles Summary](/Data/retiring_titles.png)  
- 90,398 possible retirees make up a little under 1/3 of Hewlett-Packard's current workforce, which has 300,024 employees total.
  - Reference [Hewlett Packard's Current Employee List](/Data/employees.csv)
- The number of senior engineers and senior staff employees who are of retirement age, are both more than double the amount of engineers and staff.
-  ![Retiring Tiles Observation](/Data/retiring_titles_double.png) 
- There are 1549 employees eligible for Hewlett Packard's mentorship program
-  ![Mentorship Eligible](/Data/mentorship_rows.png)  

## Summary
In summary, the outcome of this analysis provides answers to the following questions:

1) How many roles will need to be filled as the "silver tsunami" begins to make an impact?
   - Hewlett-Packard needs to fill more than 90,000 positions to reduce the impact of the 'silver tsunami'. 

2) Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?
   - While there are 1549 retirement-ready employees eligible by age for the mentorship program, several hundred of them aren't in senior positions themselves. This creates an additional challenge to Hewlett-Packard to first help several hundred retirement-ready employees become qualified enough to help the next generation of employees.

In addition, the follow queries and output provide even more insight:
-  **Additional Query #1**: Group Eligible Mentors by Title
     - This shows the current titles of employees eligible for the mentorship program which highlights an issue that several hundred employees eligible for mentorship are not qualified to be mentors based on their title. 
     - ![Mentorship Eligible By Title](/Data/additional_query_01.png)  
-  **Additional Query #2**: Change Mentorship Eligibility Filter to start in 1964 vs 1965
     - By expanding our filter to look at employees born one year earlier, in 1964 versus 1965, we can increase the potential pool of mentors from 1,549 to **19,905**. Having a larger pool of mentors to participate can greatly help Hewlett-Packard reduce the impact of the 'silver tsunami'. 
     - ![Mentorship Eligible By Title](/Data/additional_query_02.png)  

