CREATE DATABASE AdvDB1;

USE AdvDB1;

CREATE TABLE Category
(
	CategoryID INT PRIMARY KEY,
	CategoryName VARCHAR(50) NOT NULL,
	Description VARCHAR(150) NOT NULL
);

CREATE TABLE Supplier
(
	SupplierID INT PRIMARY KEY,
	SupplierName VARCHAR(50) NOT NULL,
	ContactName VARCHAR(50) NOT NULL
);

CREATE TABLE Product
(
	ProductID INT AUTO_INCREMENT PRIMARY KEY,
	ProductName VARCHAR(150) NOT NULL,
	SupplierID INT,
	CategoryID INT NOT NULL,
	Quantity INT,
	Price decimal(18,2),
	FOREIGN KEY(SupplierID) References SUPPLIER(SupplierID),
	FOREIGN KEY(CategoryID) References CATEGORY(CategoryID)
);

INSERT INTO CATEGORY(CategoryID, CategoryName, Description)
VALUES(1, 'Beverages', 'Soft drinks, coffees, teas, beers, and ales'), 
(2, 'Condiments', 'Sweet and savory sauces, relishes, spreads, and seasonings'), 
(3, 'Confections', 'Desserts, candies, and sweet breads'), 
(4, 'Dairy Products', 'Cheeses'), 
(5, 'Grains/Cereals', 'Breads, crackers, pasta, and cereal'), 
(6, 'Meat/Poultry', 'Prepared meats'),
(7, 'Produce', 'Dried fruit and bean curd'),
(8, 'Seafood', 'Seaweed and fish');

INSERT INTO Supplier(SupplierID, SupplierName, ContactName)
VALUES (1, 'New Cajun Delights', 'Shelley Burke'),
(2, 'Grandma Kelly', 'Regina Murphy'),
(3, 'Tokyo Traders ', 'Yoshi Nagase'),
(4, 'Specialty Biscuits', 'Peter Wilson'),
(5, 'Bigfoot Breweries', 'Cheryl Saylor'),
(6, 'New England Seafood Canner', 'Robb Merchant'),
(7, 'Leka Trading', 'Chandra Leka'),
(27, 'Escargots Nouveaux', 'Marie Delamare'),
(28, 'Gai paturage', 'Eliane Noz'),
(29, 'Forets derables ', 'Chantal Goulet');

INSERT INTO Product(ProductName, SupplierID, CategoryID, Quantity, Price)
VALUES ('Cajun Seasoning',1, 2, 48, 447.7),
('Gumbo Mix', 1, 2, 36, 434.47),
('Boysenberry Spread', 2, 2, 12, 508.75),
('Organic Dried Pears', 2, 7, 12, 610.5),
('Northwoods Cranberry Sauce', 2, 2, 12, 814),
('Mishi Kobe Niku', 3, 6, 18, 1973.95),
('Ikura', 3, 8, 12, 630.85),
('Teatime Chocolate Biscuits', 4, 3, 10, 187.22),
('Marmalade', 4, 3, 30, 1851.85),
('Scones', 4, 3, 24, 203.5),
('Sasquatch Ale', 5, 1, 12, 284.9),
('Steeleye Stout', 5, 1, 24, 366.3),
('Boston Crab Meat', 6, 8, 24, 374.44),
('New England Clam Chowder', 6, 8, 12, 196.37),
('Singaporean Hokkien Fried Mee', 7, 5, 32, 284.9),
('Ipoh Coffee', 7, 1, 16, 936.1),
('Gula Malacca', 7, 2, 20, 395.80),
('Escargots de Bourgogne', null, 8, 24, 273.70),
('Sirop derable', null, 2, 24, 579.97),
('Tarte au sucre', null, 3, 48, 1003.25),
('Louisiana Fiery Hot Pepper Sauce', 1, 2, 32, 428.36),
('Louisiana Hot Spiced Okra', 1, 2, 24, 345.95),
('Laughing Lumberjack Lager', 5, 1, 24, 284.9),
('Scottish Longbreads', null, 3, 10, 254.37),
('Longlife Tofu', 3, 7, 5, 203.5);


Select * from Category;
Select * from Supplier;
Select * from Product;