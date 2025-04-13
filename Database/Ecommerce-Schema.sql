-- Categories
CREATE TABLE Categories (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(100) NOT NULL,
    Description NVARCHAR(500)
);

-- Products
CREATE TABLE Products (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(200) NOT NULL,
    Description NVARCHAR(MAX),
    Price DECIMAL(18,2),
    Stock INT,
    CategoryId INT,
    CreatedAt DATETIME DEFAULT GETDATE(),
    FOREIGN KEY (CategoryId) REFERENCES Categories(Id)
);

-- ProductImages
CREATE TABLE ProductImages (
    Id INT PRIMARY KEY IDENTITY(1,1),
    ProductId INT,
    ImageUrl NVARCHAR(500),
    FOREIGN KEY (ProductId) REFERENCES Products(Id)
);

-- Orders
CREATE TABLE Orders (
    Id INT PRIMARY KEY IDENTITY(1,1),
    UserId NVARCHAR(450),
    OrderDate DATETIME DEFAULT GETDATE(),
    TotalAmount DECIMAL(18,2),
    PaymentStatus NVARCHAR(50),
    ShippingStatus NVARCHAR(50)
);

-- OrderItems
CREATE TABLE OrderItems (
    Id INT PRIMARY KEY IDENTITY(1,1),
    OrderId INT,
    ProductId INT,
    Quantity INT,
    UnitPrice DECIMAL(18,2),
    FOREIGN KEY (OrderId) REFERENCES Orders(Id),
    FOREIGN KEY (ProductId) REFERENCES Products(Id)
);

-- Payments
CREATE TABLE Payments (
    Id INT PRIMARY KEY IDENTITY(1,1),
    OrderId INT,
    PaymentDate DATETIME DEFAULT GETDATE(),
    PaymentMethod NVARCHAR(100),
    PaymentReference NVARCHAR(200),
    FOREIGN KEY (OrderId) REFERENCES Orders(Id)
);

-- ShippingAddresses
CREATE TABLE ShippingAddresses (
    Id INT PRIMARY KEY IDENTITY(1,1),
    UserId NVARCHAR(450),
    FullName NVARCHAR(200),
    AddressLine1 NVARCHAR(200),
    AddressLine2 NVARCHAR(200),
    City NVARCHAR(100),
    State NVARCHAR(100),
    ZipCode NVARCHAR(20),
    Country NVARCHAR(100),
    Phone NVARCHAR(20)
);

-- Wishlists
CREATE TABLE Wishlists (
    Id INT PRIMARY KEY IDENTITY(1,1),
    UserId NVARCHAR(450),
    ProductId INT,
    FOREIGN KEY (ProductId) REFERENCES Products(Id)
);

-- Blogs
CREATE TABLE Blogs (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Title NVARCHAR(200),
    Slug NVARCHAR(200),
    Content NVARCHAR(MAX),
    AuthorName NVARCHAR(100),
    PublishedAt DATETIME
);

-- ContactMessages
CREATE TABLE ContactMessages (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(100),
    Email NVARCHAR(100),
    Subject NVARCHAR(150),
    Message NVARCHAR(MAX),
    CreatedAt DATETIME DEFAULT GETDATE()
);

-- StaticPages
CREATE TABLE StaticPages (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Title NVARCHAR(150),
    Slug NVARCHAR(100),
    Content NVARCHAR(MAX),
    LastUpdated DATETIME DEFAULT GETDATE()
);
