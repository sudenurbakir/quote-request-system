-- =============================================
-- B2B Quote Request System
-- Database Schema
-- =============================================

-- =============================================
-- 1. Users
-- =============================================

CREATE TABLE Users (
    UserId INT PRIMARY KEY,
    FirstName VARCHAR(100) NOT NULL,
    LastName VARCHAR(100) NOT NULL,
    Email VARCHAR(255) NOT NULL UNIQUE,
    Phone VARCHAR(20),
    Role VARCHAR(50) NOT NULL
);


-- =============================================
-- 2. Companies
-- =============================================

CREATE TABLE Companies (
    CompanyId INT PRIMARY KEY,
    CompanyName VARCHAR(200) NOT NULL,
    TaxNumber VARCHAR(20) NOT NULL UNIQUE,
    Address VARCHAR(500)
);


-- =============================================
-- 3. Products
-- =============================================

CREATE TABLE Products (
    ProductId INT PRIMARY KEY,
    ProductName VARCHAR(200) NOT NULL,
    Price DECIMAL(10,2) NOT NULL,
    Stock INT NOT NULL,
    CorporateSaleEnabled BOOLEAN NOT NULL DEFAULT FALSE
);


-- =============================================
-- 4. Quote Requests
-- =============================================

CREATE TABLE QuoteRequests (
    QuoteRequestId INT PRIMARY KEY,
    QuoteNumber VARCHAR(50) NOT NULL UNIQUE,
    UserId INT NOT NULL,
    CompanyId INT NOT NULL,
    Status VARCHAR(50) NOT NULL DEFAULT 'New',
    CreatedDate DATETIME NOT NULL,

    CONSTRAINT FK_QuoteRequests_Users
        FOREIGN KEY (UserId)
        REFERENCES Users(UserId),

    CONSTRAINT FK_QuoteRequests_Companies
        FOREIGN KEY (CompanyId)
        REFERENCES Companies(CompanyId)
);


-- =============================================
-- 5. Quote Request Items
-- =============================================

CREATE TABLE QuoteRequestItems (
    QuoteRequestItemId INT PRIMARY KEY,
    QuoteRequestId INT NOT NULL,
    ProductId INT NOT NULL,
    Quantity INT NOT NULL,

    CONSTRAINT FK_QuoteRequestItems_QuoteRequests
        FOREIGN KEY (QuoteRequestId)
        REFERENCES QuoteRequests(QuoteRequestId),

    CONSTRAINT FK_QuoteRequestItems_Products
        FOREIGN KEY (ProductId)
        REFERENCES Products(ProductId)
);
