#######Creation of Bookstore DB#######
CREATE DATABASE Bookstore;
USE Bookstore;

#######Customer Table#######
CREATE TABLE Customer (
	ID INT NOT NULL AUTO_INCREMENT,
    PasswordHash BINARY(60),
    Username NVARCHAR(255) NOT NULL,
    FirstName NVARCHAR(255) NOT NULL,
    LastName NVARCHAR(255) NOT NULL,
    PhoneNum NVARCHAR(15),
    Email NVARCHAR(255) NOT NULL,
    DefaultAddressId INT,
    DefaultPaymentId INT, 
    PRIMARY KEY (ID) 
);
    
#######Payment Options Table#######
CREATE TABLE PaymentOption (
	ID INT NOT NULL AUTO_INCREMENT,
    CustomerId INT NOT NULL,
    CardNumber BLOB NOT NULL,
    NameOnCard BLOB NOT NULL,
    ExpirationDate BLOB NOT NULL,
    CardType VARCHAR(255) NOT NULL,
    BillingAddressId INT NOT NULL,
    PRIMARY KEY (ID),
    FOREIGN KEY (CustomerId) REFERENCES Customer(ID)
);

#######Coupon Code Table#######
CREATE TABLE CouponCode (
	ID INT NOT NULL AUTO_INCREMENT,
    IsPercentOff BOOLEAN NOT NULL,
    ValueOff DECIMAL (14,4) NOT NULL,
    Description NVARCHAR(255),
    ExpirationDate TIMESTAMP NOT NULL,
    IssueDate TIMESTAMP NOT NULL,
    PRIMARY KEY (ID)
);
    
#######Customer Order Table#######
CREATE TABLE CustomerOrder (
	ID INT NOT NULL AUTO_INCREMENT,
    CustomerId INT NOT NULL,
    PaymentId INT NOT NULL,
    ShippingAddressId INT NOT NULL,
    SalesTax DECIMAL(14,4),
    OrderDateTime TIMESTAMP,
    CouponCodeId INT,
    ShippingCarrier NVARCHAR(255),
    PRIMARY KEY (ID),
    FOREIGN KEY (CustomerId) REFERENCES Customer(ID),
    FOREIGN KEY (PaymentId) REFERENCES PaymentOption(ID),
    FOREIGN KEY (CouponCodeId) REFERENCES CouponCode(ID)
);

#######Book Table#######
CREATE TABLE Book (
	ID INT NOT NULL AUTO_INCREMENT,
    ISBN VARCHAR(13) NOT NULL,
    Title NVARCHAR(255) NOT NULL,
    Author NVARCHAR(255),
    Publisher NVARCHAR(255),
    Edition NVARCHAR(255),
    Summary NVARCHAR(5000),
    ListPrice DECIMAL(14,4) NOT NULL,
    QuantityInStock INT NOT NULL,
    Dimensions_Width DOUBLE,
    Dimensions_Height DOUBLE,
    Dimensions_Lenght DOUBLE,
    Weight DOUBLE,
    PRIMARY KEY (ID)
);

#######Order Item Table#######
CREATE TABLE OrderItem (
	BookId INT NOT NULL,
    CustomerOrderId INT NOT NULL,
    Quantity INT NOT NULL,
    FOREIGN KEY (BookId) REFERENCES Book(ID),
    FOREIGN KEY (CustomerOrderId) REFERENCES CustomerOrder(ID)
);

#######Wish List Table#######
CREATE TABLE WishList (
	ID INT NOT NULL AUTO_INCREMENT,
    CustomerId INT NOT NULL,
    NameOfList NVARCHAR(30) NOT NULL,
    PRIMARY KEY (ID),
    FOREIGN KEY (CustomerId) REFERENCES Customer(ID)
);

#######Wish List Item Table#######
CREATE TABLE WishListItem (
	WishListId INT NOT NULL,
    BookId INT NOT NULL,
    FOREIGN KEY (BookId) REFERENCES Book(ID),
    FOREIGN KEY (WishListId) REFERENCES WishList(ID)
);

#######Address Table#######
CREATE TABLE Address(
	ID INT NOT NULL AUTO_INCREMENT,
	CustomerId INT NOT NULL,
    AddressLine1 NVARCHAR(255) NOT NULL,
    AddressLine2 NVARCHAR(255),
    City NVARCHAR(255) NOT NULL, 
    State NVARCHAR(255),
    Zipcode VARCHAR(16),
    Country NVARCHAR(50),
    PRIMARY KEY (ID)
);