-- Create the Customers table
CREATE TABLE Customers (
    CustomerID VARCHAR(20) PRIMARY KEY,
    CustomerName VARCHAR(100),
    City VARCHAR(100),
    Country VARCHAR(100),
    PostalCode VARCHAR(20),
    CountryCode VARCHAR(5)
);

-- Create the Orders table
CREATE TABLE Orders (
    OrderID VARCHAR(20) PRIMARY KEY,
    OrderDate DATE,
    DeliveryDate DATE,
    CustomerID VARCHAR(20),
    Sales DECIMAL(10,2),
    Discount DECIMAL(10,2),
    DeliveryCost DECIMAL(10,2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

-- Create the MenuItems table
CREATE TABLE MenuItems (
    MenuItemID INT AUTO_INCREMENT PRIMARY KEY,
    CourseName VARCHAR(100),
    CuisineName VARCHAR(100),
    StarterName VARCHAR(100),
    DessertName VARCHAR(100),
    Drink VARCHAR(100),
    Side VARCHAR(100)
);

-- Create the OrderDetails table
CREATE TABLE OrderDetails (
    OrderDetailID INT AUTO_INCREMENT PRIMARY KEY,
    OrderID VARCHAR(20),
    MenuItemID INT,
    Quantity INT,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (MenuItemID) REFERENCES MenuItems(MenuItemID)
);
