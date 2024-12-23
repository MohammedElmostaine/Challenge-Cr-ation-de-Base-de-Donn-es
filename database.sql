use  saleorderquiz;
create table clients (
	CustomerID int NOT NULL primary key,
	CustomerFirstName  VARCHAR(50) NOT null,
	CustomerLastName  VARCHAR(50) NOT null,
	CustomerAddress  VARCHAR(50) NOT null,
	CustomerCity  VARCHAR(50) NOT null,
	CustomerPostCode  CHAR(4) null,
	CustomerPhoneNumber  CHAR(12) null
),


INSERT INTO clients ( CustomerFirstName, CustomerLastName, CustomerAddress, CustomerCity, CustomerPostCode, CustomerPhoneNumber)
values ("Med", "Elmostaine", "rabat, maroc", "rabat", "1000","624989179" );
INSERT INTO clients ( CustomerFirstName, CustomerLastName, CustomerAddress, CustomerCity, CustomerPostCode, CustomerPhoneNumber)
VALUES
( 'Sara', 'Benomar', 'Casablanca, Morocco', 'Casablanca', '2000', '621234567'),
( 'Youssef', 'ElFassi', 'Tanger, Morocco', 'Tanger', '9000', '625678901'),
( 'Fatima', 'Zahra', 'Marrakech, Morocco', 'Marrakech', '4000', '628765432');




create table inventaire (
InventoryID  TINYINT NOT NULL primary key,
InventoryName VARCHAR(50) NOT null,
InventoryDescription  VARCHAR(255) null
)


INSERT INTO inventaire ( InventoryName, InventoryDescription)
VALUES
( 'Laptop', 'Portable computer with 16GB RAM and 512GB SSD'),
( 'Smartphone', 'Android smartphone with 128GB storage'),
( 'Tablet', '10-inch screen tablet with stylus support');

create table employe (
EmployeeID  TINYINT NOT NULL primary key,
EmployeeFirstName  VARCHAR(50) NOT null,
EmployeeLastName  VARCHAR(50) NOT null,
EmployeeExtension  CHAR(4) NULL
)

INSERT INTO employe ( EmployeeFirstName, EmployeeLastName, EmployeeExtension)
VALUES
( 'Ahmed', 'Bennani', '1010'),
( 'Khadija', 'ElMansouri', '1020'),
( 'Mourad', 'ElAmrani', '1030');


CREATE TABLE vente (
    SaleID TINYINT NOT NULL PRIMARY KEY,
    CustomerID INT NOT NULL,
    InventoryID TINYINT NOT NULL,
    EmployeeID TINYINT NOT NULL,
    SaleDate DATE NOT NULL,
    SaleQuantity INT NOT NULL,
    SaleUnitPrice DECIMAL(10, 4) NOT NULL,
    CONSTRAINT fk_customer FOREIGN KEY (CustomerID) REFERENCES clients(CustomerID),
    CONSTRAINT fk_inventory FOREIGN KEY (InventoryID) REFERENCES inventaire(InventoryID),
    CONSTRAINT fk_employee FOREIGN KEY (EmployeeID) REFERENCES employe(EmployeeID)
);

INSERT INTO vente (CustomerID, InventoryID, EmployeeID, SaleDate, SaleQuantity, SaleUnitPrice)
VALUES
( 1, 1, 1, '2024-12-01', 2, 1200.5000),
( 2, 2, 2, '2024-12-02', 1, 800.7500),
( 3, 3, 3, '2024-12-03', 3, 400.2500);










