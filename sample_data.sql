# populates tables with sample data to run views/queries against 
INSERT INTO 
	PERSON
VALUES
	('1', '4321 Highland Rd', '1234 Highland Rd', 'Dallas', 'TX', '75084', '1231231234', 'Hellen', 'Cole', '30', 'F');

INSERT INTO 
	POTENTIAL_EMPLOYEE
VALUES
	('1','77', '3');

INSERT INTO 
	PERSON
VALUES
	('2', '6565 University Dr', '5656 University Rd', 'Richardson', 'TX', '75082', '453434534', 'Ron', 'Jobs', '35', 'M');
    
INSERT INTO 
	PERSON
VALUES
	('3', '6335 University Dr', '5116 University Rd', 'Richardson', 'TX', '75082', '453434534', 'John', 'Hires', '33', 'M');
    
INSERT INTO 
	JOBPOSITION
VALUES
	('11111', 'entry', '2023-06-03', '60000', '80000', 2);

INSERT INTO 
	DEPARTMENT 
VALUES
	('2', 'Accounting');

INSERT INTO 
	DEPARTMENT
VALUES
	('1', 'Marketing');

INSERT INTO 
	JOBPOSITION
VALUES
	('11231', 'entry', '2011-01-03', '50000', '70000', 1),
	('11241', 'junior', '2011-01-04', '70000', '80000', 1),
	('11251', 'senior', '2011-01-05', '80000', '90000', 1);
        
INSERT INTO
	EMPLOYEE
VALUES
	('2','2010-04-03','associate','recruiter','3'),
	('3','2005-04-03','principle','recruiter',NULL);
    
INSERT INTO 
	SITE
VALUES
	('321', 'site1', 'washington'),
	('322', 'site2', 'texas');

INSERT INTO 
	PART
VALUES
	('555', '764345', '9', '39.99', 'machine', '3322'),
	('777', '72315', '4', '29.99', 'machine', '3311');

INSERT INTO 
	VENDOR
VALUES
	('764345', 'partsdotcom', '5412 Parkway Way', 'http://wwww.parts.com', '19122', '800'),
	('72315', 'premiumparts', '3122 Dallas Rd', 'http://wwww.premparts.com', '112312', '750');

INSERT INTO 
	PRODUCT
VALUES
	('3322', 'bigmachine', '99999', '88888', '12','442','metallic'),
	('3311', 'bigmachine', '11999', '9182', '21','332','matte');

INSERT INTO 
	JOBPOSITION
VALUES
	('55121','director','2023-07-08', '99999','99999', '2');

INSERT INTO 
	PART
VALUES
	('808', '72315', '2', '388', 'mechanical', '3001');

INSERT INTO 
	PRODUCT
VALUES
	('3001', 'biggmach', '1211', '88', '42','1111','solid');

INSERT INTO 
	PRODUCT
VALUES
	('30', 'small', '111', '20', '21','3','paper');

INSERT INTO 
	salesHistory
VALUES
	('1141', '22', '922', '3001', '2023-01-01', '321') ;

INSERT INTO 
	PERSON
VALUES
	('11', '1312 Renner Rd', '9122 Renner Rd', 'Richardson', 'TX', '75082', '453111534', 'Joe', 'Saels', '25', 'M'),
	('22', '1212 North Star Rd', '5555 North Star Rd', 'Richardson', 'TX', '75082', '452215534', 'Mike', 'Grand', '28', 'M');

INSERT INTO 
	EMPLOYEE
VALUES
	('11','2015-08-23','senior','sales','22'),
	('22','2013-05-11','director','sales',NULL);

INSERT INTO 
	PERSON 
VALUES
	('922', '1212 Service Rd', '4141 Service Rd', 'Redmond', 'WA', '41232', '81283014', 'Mary', 'Bais', '38', 'F');

INSERT INTO 
	CUSTOMER 
VALUES
	('922', '22', 'VIP');

INSERT INTO 
	DEPARTMENT 
VALUES
	('3', 'Human Resources');

INSERT INTO 
	DEPARTMENT 
VALUES
	('4', 'Waste Management');

INSERT INTO 
	JOBPOSITION
VALUES
	('52221','associate','2011-01-08', '88999','99999', '1'),
	('51231','associate','2011-01-22', '66000','99000', '2');

INSERT INTO 
	JOBPOSITION
VALUES
	('12345','principle','2023-01-08', '88999','99999', '1');

INSERT INTO 
	INTERVIEW 
VALUES
	('11223', '11', '3', '2023-08-06', '12345', '1');

INSERT INTO 
	EMPLOYEE
VALUES
	('2','2010-04-03','associate','recruiter','3','1');

SELECT * 
FROM 
	PERSON;

INSERT INTO 
	PERSON
VALUES
	('331', 'maryjane@gmail.com', '7542 Joy Rd', 'Austin', 'TX', '09781', '8121029', 'Mary', 'Ja ne', '28', 'F');

INSERT INTO 
	POTENTIAL_EMPLOYEE
VALUES
	('331', '88', '6');

INSERT INTO 
	WORKSFOR
VALUES
	('2', '2018-08-01', '2019-08-01', '1'),
	('2', '2018-08-01', '2019-08-01', '2'),
	('2', '2018-08-01', '2019-08-01', '3'),
	('2', '2018-08-01', '2019-08-01', '4');

SELECT *
FROM 
	EMPLOYEE;

INSERT INTO 
	SALARY
VALUES
	('1231', '2023-05-01', '5000', '2'),
	('1232', '2023-05-01', '6000', '3'),
	('1233', '2023-05-01', '7000', '11'),
	('1234', '2023-05-01', '8000', '22'),
	('1331', '2023-05-01', '6000', '2'),
	('1332', '2023-05-01', '7000', '3'),
	('1333', '2023-05-01', '8000', '11'),
	('1334', '2023-05-01', '9000', '22');

INSERT INTO 
	PRODUCT
VALUES
	('226', 'cup', '9.99', '2.50', '4', '3', 'small');

INSERT INTO
	PART
VALUES
	('1112', '764345', '12', '2.99', 'cup', '226'),
	('1551', '72315', '10', '1.99', 'cup', '226');
    
INSERT INTO 
	INTERVIEW
VALUES
	('3111', '1', '2', '2023-01-26', '11111', '0');

SELECT *
FROM
	POTENTIAL_EMPLOYEE;
    
INSERT INTO 
	salesHistory
VALUES
	(000,NULL,NULL,NULL,'2011-03-03','322'),
	(0001,NULL,NULL,NULL,'2011-03-03','321');
commit;
    