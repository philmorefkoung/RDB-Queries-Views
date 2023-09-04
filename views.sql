# returns the average salary each employee has earned from the company monthly after the person becomes an employee in the company
CREATE VIEW 
	View1 
AS 
SELECT 
	e.Employee_ID, AVG(Amount) as Average_Salary
FROM 
	EMPLOYEE as e, salary as s
WHERE 
	e.Employee_ID = s.Employee_ID
GROUP BY 
	Employee_ID;

# returns the number of interviews rounds each interviewee pass for each job position
CREATE VIEW 
	View2 
AS 
SELECT 
	pe.Completed_Interviews, pe.Potential_Employee_ID, p.Lname, p.Fname
FROM 
	PERSON as p, POTENTIAL_EMPLOYEE as pe
WHERE 
	pe.Potential_Employee_ID = p.Personal_ID
GROUP BY 
	Potential_Employee_ID;

# returns the number of items of each product type sold
CREATE VIEW 
	View3 
AS 
SELECT 
	COUNT(Sale_ID) AS Num_Sold, Product_ID
FROM 
	salesHistory
GROUP BY 
	Product_ID;

# returns the part purchase cost for each product
CREATE VIEW 
	View4 
AS 
SELECT 
	p.Product_ID, p.Product_Type, pa.Quantity * pa.Price AS Part_Cost
FROM 
	PRODUCT AS p, PART AS pa
WHERE 	
	pa.Product_ID = p.Product_ID;
commit;