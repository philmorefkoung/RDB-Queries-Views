# Retreive output from all Views 
SELECT * 
FROM 
	View1;

SELECT * 
FROM 
	View2;

SELECT * 
FROM 
	View3;

SELECT * 
FROM 
	View4;

# Return the ID and Name of INTERVIEWers who PARTicipate in INTERVIEWs where the Interviewee’s Name is “Hellen Cole” arranged for job “11111"
SELECT 
	i.Interviewer_ID, p.FName, p.LName
FROM 
	INTERVIEW as i
JOIN 
	PERSON p 
    ON 
		i.Interviewer_ID = p.Personal_ID
JOIN 
	PERSON Interviewee
    ON 
		i.Candidate_ID = Interviewee.Personal_ID
WHERE 
	Interviewee.FName = 'Hellen' 
    AND 
		Interviewee.LName = 'Cole' 
    AND 
		i.Job_ID = '11111';
# Return the ID of all jobs which are posted by DEPARTMENT “Marketing” in January 2011
SELECT 
	Job_ID 
FROM 
	JOBPOSITION, DEPARTMENT 
WHERE 
	Department_Name = 'Marketing' 
    AND 
		MONTH(Posted_Date) = 1 
    AND 
		YEAR(Posted_Date) = 2011;

# Return the ID and Name of the EMPLOYEEs having no supervisees
SELECT 
	p.FName, p.LName, e.Employee_ID 
FROM 
	EMPLOYEE e
JOIN
	PERSON p 
    ON 
		e.Employee_ID = p.Personal_ID
WHERE 
	e.Supervisor_ID IS NULL;

# Return the ID and Location of the marketing sites which have no sale records during March, 2011
SELECT 
	s.Site_ID, s.Site_Location
FROM 
	SITE s
JOIN 
	salesHistory sh 
    ON 
		s.Site_ID = sh.Site_ID
WHERE 
	sh.Product_ID IS NULL 
    AND 
		MONTH(sh.Sale_Time) = 3 
	AND 
		YEAR(sh.Sale_Time) = 2011;

# Return the job’s ID and description which does not hire a suitable PERSON one month after it is posted
SELECT 
	Job_ID, Job_Description
FROM 
	JOBPOSITION
WHERE Job_ID NOT IN 
			(
			SELECT 
				j.Job_ID
            FROM 
				JOBPOSITION j
            JOIN 
				INTERVIEW i ON j.Job_ID = i.Job_ID
            WHERE 
				i.Candidate_ID IS NOT NULL 
            AND 
				i.Interview_Time >= j.Posted_Date + INTERVAL 1 MONTH
            );
            
# Return the ID and Name of the salesmen who have sold all PRODUCT type whose price is above $200
SELECT 
	s.Salesman_ID, p.FName, p.LName
FROM 
	salesHistory s
JOIN 
	PERSON p ON s.Salesman_ID = p.Personal_ID 
JOIN 
	PRODUCT pr ON s.Product_ID = pr.Product_ID
WHERE 
	List_Price > 200
GROUP BY 
	s.Salesman_ID;

# Return the DEPARTMENT’s ID and Name which has no job post during 1/1/2011 and 2/1/2011
SELECT 
	d.DePARTment_ID 
FROM 
	DEPARTMENT d
JOIN 
	JOBPOSITION jp ON d.DePARTment_ID = jp.DePARTment_ID
WHERE 
	jp.Posted_Date != '2011-01-01' AND jp.Posted_Date  < '2011-02-01'
GROUP BY 
	d.DePARTment_ID;

# Return the ID, Name, and DEPARTMENT ID of the existing EMPLOYEEs who apply job “12345”
SELECT 
	p.Personal_ID, p.FName, p.LName, e.Dno 
FROM 
	EMPLOYEE e
JOIN 
	PERSON p ON e.Employee_ID = p.Personal_ID
JOIN 
	INTERVIEW i on e.Employee_ID = i.Candidate_ID
WHERE 
	Job_ID = '12345';

# Return the best seller’s type in the company (sold the most items)
SELECT 
	Product_ID, COUNT(Product_ID)
FROM 
	salesHistory
GROUP BY 
	Product_ID
ORDER BY 
	COUNT(Product_ID) DESC
LIMIT 1;

# Return the PRODUCT type whose net profit is highest in the company (money earned minus the PART cost)
SELECT 
	(p.List_Price * v3.Num_Sold) - (v4.PART_Cost * v3.Num_Sold)
FROM
	PRODUCT p
JOIN 
	View3 v3 ON p.Product_ID = v3.Product_ID
JOIN 
	View4 v4 ON p.Product_ID = v4.Product_ID
ORDER BY 
	v4.Product_Type;

# Return the Name and ID of the EMPLOYEEs who has worked in all DEPARTMENTs after hired by the company
SELECT 
	p.FName, p.LName, e.Employee_ID, w.Dno
FROM 
	EMPLOYEE e
JOIN 
	PERSON p ON e.Employee_ID = p.Personal_ID
JOIN 
	WORKSFOR w ON e.Employee_ID = w.Employee_ID
where 
	w.Dno = 1 OR w.Dno = 2 OR w.Dno = 3 OR w.Dno = 4;
    
# Return the Name and email address of the Interviewee who is selected 
SELECT 
	p.FName, p.LName, p.Address_1
FROM
	PERSON p
JOIN 
	POTENTIAL_EMPLOYEE pe ON p.Personal_ID = pe.Potential_Employee_ID
WHERE 
	INTERVIEW_Grade > 70 AND Completed_INTERVIEWs <= 5;

# ) Retrieve the Name, phone number, email address of the Interviewees selected for all the jobs they apply
SELECT 
	p.FName, p.LName, p.Phone_Number, p.Address_1
FROM 
	PERSON p
JOIN 
	POTENTIAL_EMPLOYEE pe ON p.Personal_ID = pe.Potential_Employee_ID
WHERE 
	INTERVIEW_Grade > 70 AND Completed_INTERVIEWs <= 5;

# Return the EMPLOYEE’s Name and ID whose average monthly salary is highest in the company.
SELECT 
	v.Employee_ID, v.Average_Salary, p.FName, p.LName
FROM 
	View1 as v
JOIN 
	PERSON p ON v.Employee_ID = p.Personal_ID
ORDER BY 
	v.Average_Salary DESC
LIMIT 1;

# Return the ID and Name of the VENDOR who supply PART whose Name is “Cup” and Weight is smaller than 4 pound and the price is lowest among all VENDORs
SELECT 
	v.Vendor_ID, v.Name
from 
	VENDOR v
JOIN 
	PART p ON v.Vendor_ID = p.Vendor_ID
JOIN 
	PRODUCT pr ON p.Product_ID = pr.Product_ID
WHERE 
	p.Part_Type = 'cup' and pr.Weight < 4
ORDER BY 
	pr.List_Price ASC
LIMIT 1;


commit;

