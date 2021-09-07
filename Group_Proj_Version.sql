CREATE SCHEMA retail_stores;
USE retail_stores;
CREATE TABLE 	EMPLOYEE(
EmployeeID       INT		    NOT NULL,
First_Name	     VARCHAR(50)	NOT NULL,
Last_Name		 VARCHAR(50)	NOT NULL,	
Title	         VARCHAR(50)    NOT NULL,
Gender	         CHAR(1)	    NOT NULL,
Location	     VARCHAR(50)	NOT NULL,
Email		 	 VARCHAR(35)	NOT NULL,
Phone_Number	 VARCHAR(20)	NOT NULL,
CONSTRAINT EmployeeIDCheck  CHECK ((EmployeeID > 0 )  AND EmployeeID < 1000000000),
CONSTRAINT First_NameCheck  CHECK   (First_Name NOT LIKE '%[^A-Z]%'),
CONSTRAINT Last_NameCheck   CHECK   (Last_Name NOT LIKE '%[^A-Z]%'),
CONSTRAINT GenderCheck      CHECK (Gender = 'M' OR Gender = 'F' OR Gender = 'O'),
CONSTRAINT TitleCheck       CHECK (Title NOT LIKE '%[^A-Z]%'),
CONSTRAINT EmployeeIDPK PRIMARY KEY (EmployeeID)
);

CREATE TABLE 	BRANCH(
BranchID         INT		    NOT NULL,
Branch_Name	     VARCHAR(50)	NOT NULL,
Location	     VARCHAR(50)	NOT NULL,
Employee_Qty	 TINYINT	    NOT NULL,
Branch_Mgr       INT		    NOT NULL,
CONSTRAINT BranchIDCheck        CHECK   ((BranchID > 0 )      AND BranchID < 1000000000),
CONSTRAINT Branch_NameCheck     CHECK   (Branch_Name NOT LIKE '%[^A-Z]%'),
CONSTRAINT Employee_QtyCheck    CHECK   ((Employee_Qty > 0 )  AND Employee_Qty < 100),
CONSTRAINT Branch_MgrCheck     CHECK   ((Branch_Mgr > 0 )    AND Branch_Mgr < 1000000000),
CONSTRAINT BranchIDPK           PRIMARY KEY (BranchID),
CONSTRAINT Branch_MgrFK        FOREIGN KEY (Branch_Mgr)
REFERENCES EMPLOYEE(EmployeeID)
        ON UPDATE NO ACTION  
        ON DELETE NO ACTION
);

CREATE TABLE 	DEPARTMENT(
Department_Name  VARCHAR(50)  		    NOT NULL,
Department_Mgr	 INT		            NOT NULL,
CONSTRAINT Department_NameCheck     CHECK   (Department_Name NOT LIKE '%[^A-Z]%'),
CONSTRAINT Department_MgrCheck     	CHECK   ((Department_Mgr > 0 )  AND Department_Mgr < 1000000000),
CONSTRAINT Department_NamePK       	PRIMARY KEY (Department_Name),
CONSTRAINT Department_MgrFK        	FOREIGN KEY (Department_Mgr)
REFERENCES EMPLOYEE(EmployeeID)
        ON UPDATE NO ACTION  
        ON DELETE NO ACTION
);

CREATE TABLE 	DISTRIBUTOR(
DistributorID        INT		    	NOT NULL,
Distributor_Name	 VARCHAR(50)		NOT NULL,
Location	     	 VARCHAR(50)		NOT NULL,
Product_Qty	         INT		    	NOT NULL,
Phone_Number	 	 VARCHAR(20)		NOT NULL,
CONSTRAINT DistributorIDCheck        CHECK   ((DistributorID > 0 )  AND DistributorID < 1000000000),
CONSTRAINT Distributor_NameCheck     CHECK   (Distributor_Name NOT LIKE '%[^A-Z]%'),
CONSTRAINT DistributorIDPK       	PRIMARY KEY (DistributorID)
);


CREATE TABLE 	WAREHOUSE(
WareHouseID          INT		    	NOT NULL,
Location	     	 VARCHAR(50)		NOT NULL,
Product_Qty	         INT		    	NOT NULL,
WareHouse_Mgr        INT		    	NOT NULL,
CONSTRAINT WAREHOUSEIDCheck             CHECK   ((WAREHOUSEID > 0 )    AND WAREHOUSEID < 1000000000),
CONSTRAINT WareHouse_MgrCheck           CHECK   ((WareHouse_Mgr > 0 )     AND WareHouse_Mgr < 1000000000),
CONSTRAINT WareHouseIDPK       	        PRIMARY KEY (WareHouseID), 
CONSTRAINT WareHouse_MgrFK4        	    FOREIGN KEY (WareHouse_Mgr)
REFERENCES EMPLOYEE(EmployeeID)
        ON UPDATE NO ACTION  
        ON DELETE NO ACTION
);

CREATE TABLE 	OPERATIONS(
BranchID             INT		    NOT NULL,
DistributorID        INT		    	NOT NULL,
WareHouseID          INT		    	NOT NULL,
CONSTRAINT           PrimaryPK1        PRIMARY KEY (BranchID, DistributorID, WareHouseID),
CONSTRAINT BranchIDFK        	        FOREIGN KEY (BranchID)
REFERENCES BRANCH(BranchID)
        ON UPDATE NO ACTION  
        ON DELETE NO ACTION,
CONSTRAINT DistributorIDFK        	    FOREIGN KEY (DistributorID)
REFERENCES DISTRIBUTOR(DistributorID)
        ON UPDATE NO ACTION  
        ON DELETE NO ACTION,
CONSTRAINT WareHouseIDFK                FOREIGN KEY (WareHouseID)
REFERENCES WAREHOUSE(WareHouseID)
		ON UPDATE NO ACTION  
        ON DELETE NO ACTION
);


CREATE VIEW EMPLOYEE_END_USER AS
SELECT EmployeeID, First_Name, Last_Name, Title, Gender
FROM EMPLOYEE;

CREATE INDEX NAME_INDEX ON EMPLOYEE
(First_Name);

