# Creates tables in accordance to the Diagrams provided
create TABLE PERSON
(
	Personal_ID					INT PRIMARY KEY,
    Address_1					varchar(38),
    Address_2					varchar(38),
    City						varchar(20),
    State						varchar(2),
    Zipcode						int,
    Phone_number				int(10),
    Fname						varchar(20) NOT NULL,
    Lname						varchar(20) NOT NULL,
    Age							INT,
    Gender						char(1)
);
    
create table CUSTOMER
(
    Customer_ID					int PRIMARY KEY,
    Preferred_salesman_ID		INT,
    Customer_Desc				varchar(20),
    FOREIGN KEY (Customer_ID) references Person(Personal_ID),
    FOREIGN KEY (Preferred_Salesman_ID) references EMPLOYEE(Employee_ID)
);
    
create table EMPLOYEE 
(
    Employee_ID					int PRIMARY KEY,
    Date_Hired					date,
	`Rank` 						varchar(10),
    Title						varchar(10),
    Supervisor_ID				int,
    Dno							int,
    FOREIGN KEY (Employee_ID) references PERSON(Personal_ID),
    FOREIGN KEY (Dno) references DEPARTMENT(Department_ID)
);
    
create table SALARY
(
    Transaction_No				INT PRIMARY KEY,
    Pay_Date					date,
    Amount						decimal(5),
    Employee_ID					INT,
    FOREIGN KEY (Employee_ID) references EMPLOYEE(Employee_ID)
);
    
create table POTENTIAL_EMPLOYEE
(
    Potential_Employee_ID		INT PRIMARY KEY,
    Interview_Grade				int,
	Completed_Interviews		int(1),
    FOREIGN KEY (Potential_Employee_ID) references PERSON(Personal_ID)
);
    
create table WORKSFOR
(
    Employee_ID					INT PRIMARY KEY,
    Start_time					datetime,
    End_Time					datetime,
    FOREIGN KEY (Employee_ID) references EMPLOYEE(Employee_ID)
);
    
create table JOBPOSITION
(
    Job_ID						INT PRIMARY KEY,
    Job_Description				varchar(30),
    Posted_Date					date,
    Min_Salary					decimal(10),
    Max_Salary					decimal(10),
    Department_ID				INT,
    FOREIGN KEY (Department_ID) references Department(Department_ID)
);
    
create table DEPARTMENT 
(
	Department_ID 				INT PRIMARY KEY,
    Department_Name				varchar(20)
);
    
create table INTERVIEW
(
    Interview_ID				INT PRIMARY KEY,
    Candidate_ID				INT,
    Interviewer_ID				INT,
    Interview_time				date,
    Job_ID						int,
    IS_Employee					int,
    foreign key (Job_ID) references JOBPOSITION(Job_ID),
    foreign key (Candidate_ID) references person(Personal_ID),
    foreign key (Interviewer_ID) references employee(Employee_ID)
);
create table PRODUCT 
(
    Product_ID					INT PRIMARY KEY,
    Product_Yype				varchar(10),
    List_Price					decimal(5),
    Manufacutre_Cost			decimal(5),
    Size						decimal(5),
    Weight						decimal(5),
    Style						varchar(10)
);
    
create table VENDOR 
(
    Vendor_ID					INT PRIMARY KEY,
    Name						varchar(15),
    Address						varchar(38),
	Purchasing_URL				varchar(38),
    Account_No					INT,
    Credit_Rating				INT
);
    
create table PART
(
	Part_ID						INT PRIMARY KEY,
    Vendor_ID					INT,
    Quantity					INT,
    Price						decimal(5),
    Part_Type					varchar(38),
    Product_ID					INT,
    foreign key (Vendor_ID) references VENDOR(Vendor_ID),
    foreign key (Product_ID) references PRODUCT(Product_ID)
);
    
create table site
(
    Site_ID						INT PRIMARY KEY,
    Site_Name					varchar(38),
    Site_Location				varchar(38)
);
    
create table salesHistory
(
    Sale_ID						INT PRIMARY KEY,
    Salesman_ID					INT,
    Customer_ID					INT,
    Product_ID					INT,	
    Sale_time					datetime,
    Site_ID						int,
    foreign key (Salesman_ID) references EMPLOYEE(Employee_ID),
	foreign key (Customer_ID) references CUSTOMER(Customer_ID),
	foreign key (Product_ID) references PRODUCT(Product_ID),
	foreign key (Site_ID) references SITE(Site_ID)
);

commit;
    
