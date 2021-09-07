USE retail_stores;

INSERT INTO EMPLOYEE
(EmployeeID, First_Name, Last_Name, Title, Gender, Location, Email, Phone_Number)
VALUES (001000001, 'John', 'Smith', 'Accountant', 'M', 'Sydney, Australia', 'johnsmith@gmail.com', '+61 813 278 909');

INSERT INTO EMPLOYEE
(EmployeeID, First_Name, Last_Name, Title, Gender, Location, Email, Phone_Number)
VALUES (001000002, 'Jane', 'Miller', 'Cashier', 'F', 'Melbourne, Australia', 'millerz09@icloud.com', '+61 283 920 312'); 

INSERT INTO EMPLOYEE
(EmployeeID, First_Name, Last_Name, Title, Gender, Location, Email, Phone_Number)
VALUES (001000003, 'Dolly', 'Kramer', 'Stacker', 'F', 'Punggol, Singapore', 'dollydolly29@hotmail.com', '+65 231 342 997'); 
 
INSERT INTO EMPLOYEE
(EmployeeID, First_Name, Last_Name, Title, Gender, Location, Email, Phone_Number)
VALUES (001000004, 'Charlie', 'Storm', 'Customer Helper', 'M', 'California, USA', 'thorlightning@gmail.com', '+1 902 238 772'); 

INSERT INTO EMPLOYEE
(EmployeeID, First_Name, Last_Name, Title, Gender, Location, Email, Phone_Number)
VALUES (001000005, 'Hillary', 'Brown', 'Sales Representative', 'F', 'Montreal, Canada', 'hbrown@icloud.com', '+1 908 324 528'); 

INSERT INTO DEPARTMENT 
(Department_Name, Department_Mgr)  
VALUES ('Accounting', 001000001);

INSERT INTO DEPARTMENT 
(Department_Name, Department_Mgr) 
VALUES ('Customer Service', 001000002);

INSERT INTO DEPARTMENT 
(Department_Name, Department_Mgr) 
VALUES ('Human Resources', 001000003);

INSERT INTO DEPARTMENT 
(Department_Name, Department_Mgr) 
VALUES ( 'Marketing', 001000004);

INSERT INTO DEPARTMENT 
(Department_Name, Department_Mgr) 
VALUES ( 'Security', 001000005);

INSERT INTO  BRANCH
(BranchID, Branch_Name, Location, Employee_Qty, Branch_Mgr)
VALUES (110101023, 'Secaucus', 'Teterboro NJ', 29, 001000001);

INSERT INTO  BRANCH
(BranchID, Branch_Name, Location, Employee_Qty, Branch_Mgr)
VALUES (110101024, 'Bayonne' ,'Queens NY', 36, 001000002);

INSERT INTO  BRANCH
(BranchID, Branch_Name, Location, Employee_Qty, Branch_Mgr)
VALUES (110101025, 'North Bergen', 'Manhattan NY', 41, 001000003);

INSERT INTO  BRANCH
(BranchID, Branch_Name, Location, Employee_Qty, Branch_Mgr)
VALUES (110101026, 'Kearny', 'Edison NJ', 35, 001000004);

INSERT INTO  BRANCH
(BranchID, Branch_Name, Location, Employee_Qty, Branch_Mgr)
VALUES (110101027, 'Teterboro', 'Long Island NY', 29, 001000005);

INSERT INTO DISTRIBUTOR 
( DistributorID, Distributor_Name, Location, Product_Qty, Phone_Number)
VALUES (101010101, 'Whole Order', 'Buffalo, NY', 7767, '+1 347 200 970');

INSERT INTO DISTRIBUTOR 
( DistributorID, Distributor_Name, Location, Product_Qty, Phone_Number)
VALUES (101010102, 'Order Pros', 'Boston, MA', 9030, '+1 567 200 875');

INSERT INTO DISTRIBUTOR 
( DistributorID, Distributor_Name, Location, Product_Qty, Phone_Number)
VALUES (101010103, 'Order Pros', 'Bangor, ME', 1530, '+1 579 254 776');

INSERT INTO DISTRIBUTOR 
( DistributorID, Distributor_Name, Location, Product_Qty, Phone_Number)
VALUES (101010104, 'Strict Supply', 'Manchester, NH', 3637, '+1 123 298 805');

INSERT INTO DISTRIBUTOR 
( DistributorID, Distributor_Name, Location, Product_Qty, Phone_Number)
VALUES (101010105, 'Strict Supply', 'Barre, VT', 1265, '+1 321 982 058');

INSERT INTO DISTRIBUTOR 
( DistributorID, Distributor_Name, Location, Product_Qty, Phone_Number)
VALUES (101010106, 'Happy Distributers', 'Columbus, IN', 2356, '+1 568 685 560');

INSERT INTO DISTRIBUTOR 
( DistributorID, Distributor_Name, Location, Product_Qty, Phone_Number)
VALUES (101010107, 'Inventory Wholesale', 'Chicago, IL', 2300, '+1 230 021 000');

INSERT INTO DISTRIBUTOR 
( DistributorID, Distributor_Name, Location, Product_Qty, Phone_Number)
VALUES (101010108, 'Bulk Demand', 'Chihuahua, Chihuahua', 5300, '+52 888 690 4146');

INSERT INTO DISTRIBUTOR 
( DistributorID, Distributor_Name, Location, Product_Qty, Phone_Number)
VALUES (101010109, 'You To Retail', 'Austin, TX', 5300, '+1 512 000 728');

INSERT INTO DISTRIBUTOR 
( DistributorID, Distributor_Name, Location, Product_Qty, Phone_Number)
VALUES (101010110, 'Glorious Goods', 'Orlando, FL', 7268, '+1 912 726 828');

INSERT INTO WAREHOUSE 
(WarehouseID,  Location,  Product_Qty, Warehouse_Mgr)
VALUES(001001001, 'Orlando, FL', 7260, 001000001);

INSERT INTO WAREHOUSE 
(WarehouseID,  Location,  Product_Qty,  Warehouse_Mgr)
VALUES(001001002, 'Austin, TX', 5320, 001000002);

INSERT INTO WAREHOUSE 
(WarehouseID,  Location,  Product_Qty,  Warehouse_Mgr)
VALUES(001001003, 'Chihuahua, Chihuahua', 4820, 001000003); 

INSERT INTO WAREHOUSE 
(WarehouseID,  Location,  Product_Qty,  Warehouse_Mgr)
VALUES(001001004, 'Chicago, IL', 2350, 001000004);

INSERT INTO WAREHOUSE 
(WarehouseID,  Location,  Product_Qty, Warehouse_Mgr)
VALUES(001001005, 'Columbus, IN', 2356, 001000005);

INSERT INTO OPERATIONS
(BranchID, DistributorID, WarehouseID)
VALUES (110101023, 101010101, 001001001);

INSERT INTO OPERATIONS
(BranchID, DistributorID, WarehouseID)
VALUES (110101024, 101010102, 001001002);

INSERT INTO OPERATIONS
(BranchID, DistributorID, WarehouseID)
VALUES (110101025, 101010103, 001001003); 

INSERT INTO OPERATIONS
(BranchID, DistributorID, WarehouseID)
VALUES (110101026, 101010104, 001001004); 

INSERT INTO OPERATIONS
(BranchID, DistributorID, WarehouseID)
VALUES (110101027, 101010105, 001001005); 
