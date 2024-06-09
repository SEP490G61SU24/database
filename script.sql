create database SpaProject
GO
use SpaProject
GO
-- Users Table
CREATE TABLE Users (
    UserID INT PRIMARY KEY IDENTITY(1,1),
    Username NVARCHAR(50) NOT NULL,
    Password NVARCHAR(255) NOT NULL,
    Email NVARCHAR(100) NOT NULL,
    PhoneNumber NVARCHAR(15),
    Address NVARCHAR(1000),
    DateOfBirth DATE,
    DateRegistered DATETIME DEFAULT GETDATE()
);
GO

-- Spas Table
CREATE TABLE Spas (
    SpaID INT PRIMARY KEY IDENTITY(1,1),
    SpaName NVARCHAR(100) NOT NULL,
    Location NVARCHAR(255),
    PhoneNumber NVARCHAR(15),
    Email NVARCHAR(100),
    ManagerID INT,
    FOREIGN KEY (ManagerID) REFERENCES Users(UserID)
);
GO
-- Rooms Table
CREATE TABLE Rooms (
    RoomID INT PRIMARY KEY IDENTITY(1,1),
    SpaID INT,
    RoomName NVARCHAR(100),
    Status NVARCHAR(50),
    FOREIGN KEY (SpaID) REFERENCES Spas(SpaID)
);
GO
-- Roles Table
CREATE TABLE Roles (
    RoleID INT PRIMARY KEY IDENTITY(1,1),
    RoleName NVARCHAR(50) NOT NULL
);
GO

-- Permissions Table
CREATE TABLE Permissions (
    PermissionID INT PRIMARY KEY IDENTITY(1,1),
    PermissionName NVARCHAR(100) NOT NULL
);
GO

-- RolePermissions Table
CREATE TABLE RolePermissions (
    RolePermissionID INT PRIMARY KEY IDENTITY(1,1),
    RoleID INT,
    PermissionID INT,
    FOREIGN KEY (RoleID) REFERENCES Roles(RoleID),
    FOREIGN KEY (PermissionID) REFERENCES Permissions(PermissionID)
);
GO

-- UserRoles Table
CREATE TABLE UserRoles (
    UserRoleID INT PRIMARY KEY IDENTITY(1,1),
    UserID INT,
    SpaID INT,
    RoleID INT,
    FOREIGN KEY (UserID) REFERENCES Users(UserID),
    FOREIGN KEY (SpaID) REFERENCES Spas(SpaID),
    FOREIGN KEY (RoleID) REFERENCES Roles(RoleID)
);
GO

-- Services Table
CREATE TABLE Services (
    ServiceID INT PRIMARY KEY IDENTITY(1,1),
    SpaID INT,
    ServiceName NVARCHAR(100),
    Description NVARCHAR(MAX),
    Price DECIMAL(10, 2),
    Duration INT,
    FOREIGN KEY (SpaID) REFERENCES Spas(SpaID)
);
GO

-- Appointments Table
CREATE TABLE Appointments (
    AppointmentID INT PRIMARY KEY,
    SpaID INT,
	RoomID INT, 
    CustomerID INT,
    EmployeeID INT,
    ServiceID INT,
    AppointmentDate DATE,
    AppointmentTime TIME,
    Status VARCHAR(50),
    FOREIGN KEY (SpaID) REFERENCES Spas(SpaID),
	FOREIGN KEY (RoomID) REFERENCES Rooms(RoomID), 
    FOREIGN KEY (CustomerID) REFERENCES Users(UserID),
    FOREIGN KEY (EmployeeID) REFERENCES Users(UserID),
    FOREIGN KEY (ServiceID) REFERENCES Services(ServiceID)
);
GO

-- Customers Table
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FullName NVARCHAR(100) NOT NULL,
    PhoneNumber NVARCHAR(15),
    Email NVARCHAR(100),
    Address NVARCHAR(255),
    DateOfBirth DATE,
    FOREIGN KEY (CustomerID) REFERENCES Users(UserID)
);
GO

-- Employees Table
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    SpaID INT,
    FullName NVARCHAR(100) NOT NULL,
    PhoneNumber NVARCHAR(15),
    Email NVARCHAR(100),
    Position NVARCHAR(50),
    Salary DECIMAL(10, 2),
    FOREIGN KEY (EmployeeID) REFERENCES Users(UserID),
    FOREIGN KEY (SpaID) REFERENCES Spas(SpaID)
);
GO

-- ServiceCards Table
CREATE TABLE ServiceCards (
    ServiceCardID INT PRIMARY KEY IDENTITY(1,1),
    SpaID INT,
    ServiceID INT,
    CustomerID INT,
    PurchaseDate DATE,
    ExpiryDate DATE,
    Status NVARCHAR(50),
    FOREIGN KEY (SpaID) REFERENCES Spas(SpaID),
    FOREIGN KEY (ServiceID) REFERENCES Services(ServiceID),
    FOREIGN KEY (CustomerID) REFERENCES Users(UserID)
);
GO

-- Sales Table
CREATE TABLE Sales (
    SaleID INT PRIMARY KEY IDENTITY(1,1),
    SpaID INT,
    CustomerID INT,
    SaleDate DATE,
    TotalAmount DECIMAL(10, 2),
    PaymentStatus NVARCHAR(50),
    FOREIGN KEY (SpaID) REFERENCES Spas(SpaID),
    FOREIGN KEY (CustomerID) REFERENCES Users(UserID)
);
GO

-- Products Table
CREATE TABLE Products (
    ProductID INT PRIMARY KEY IDENTITY(1,1),
    SpaID INT,
    ProductName NVARCHAR(100),
    Description NVARCHAR(MAX),
    Price DECIMAL(10, 2),
    QuantityInStock INT,
    FOREIGN KEY (SpaID) REFERENCES Spas(SpaID)
);
GO

-- Category Table
CREATE TABLE Category (
    CategoryID INT PRIMARY KEY IDENTITY(1,1),
    CategoryName NVARCHAR(100) NOT NULL
);
GO

-- ProductCategories Table
CREATE TABLE ProductCategories (
    ProductID INT,
    CategoryID INT,
    PRIMARY KEY (ProductID, CategoryID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID),
    FOREIGN KEY (CategoryID) REFERENCES Category(CategoryID)
);
GO

-- SaleItems Table
CREATE TABLE SaleItems (
    SaleItemID INT PRIMARY KEY IDENTITY(1,1),
    SaleID INT,
    ProductID INT,
    Quantity INT,
    UnitPrice DECIMAL(10, 2),
    TotalPrice DECIMAL(10, 2),
    FOREIGN KEY (SaleID) REFERENCES Sales(SaleID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);
GO

-- Salaries Table
CREATE TABLE Salaries (
    SalaryID INT PRIMARY KEY IDENTITY(1,1),
    EmployeeID INT,
    BaseSalary DECIMAL(10, 2),
    OvertimeHours INT,
    TotalSalary DECIMAL(10, 2),
    SalaryMonth INT,
    SalaryYear INT,
    FOREIGN KEY (EmployeeID) REFERENCES Users(UserID)
);
GO

-- WorkSchedules Table
CREATE TABLE WorkSchedules (
    WorkScheduleID INT PRIMARY KEY IDENTITY(1,1),
    EmployeeID INT,
    StartDate DATE,
    EndDate DATE,
    DayOfWeek NVARCHAR(20),
    StartTime TIME,
    EndTime TIME,
    FOREIGN KEY (EmployeeID) REFERENCES Users(UserID)
);
GO

-- Transactions Table
CREATE TABLE Transactions (
    TransactionID INT PRIMARY KEY IDENTITY(1,1),
    SpaID INT,
    CustomerID INT,
    TransactionDate DATE,
    Amount DECIMAL(10, 2),
    TransactionType NVARCHAR(50),
    Description NVARCHAR(MAX),
    FOREIGN KEY (SpaID) REFERENCES Spas(SpaID),
    FOREIGN KEY (CustomerID) REFERENCES Users(UserID)
);
GO

-- Promotions Table
CREATE TABLE Promotions (
    PromotionID INT PRIMARY KEY IDENTITY(1,1),
    SpaID INT,
    PromotionName NVARCHAR(100),
    StartDate DATE,
    EndDate DATE,
    Description NVARCHAR(MAX),
    DiscountPercentage DECIMAL(5, 2),
    FOREIGN KEY (SpaID) REFERENCES Spas(SpaID)
);
GO

-- Assets Table
CREATE TABLE Assets (
    AssetID INT PRIMARY KEY IDENTITY(1,1),
    SpaID INT,
    AssetName NVARCHAR(100),
    PurchaseDate DATE,
    Value DECIMAL(10, 2),
    Status NVARCHAR(50),
    Description NVARCHAR(MAX),
    FOREIGN KEY (SpaID) REFERENCES Spas(SpaID)
);
GO

-- Reviews Table
CREATE TABLE Reviews (
    ReviewID INT PRIMARY KEY IDENTITY(1,1),
    CustomerID INT,
    ServiceID INT,
    Rating INT CHECK (Rating BETWEEN 1 AND 5),
    Comment NVARCHAR(MAX),
    ReviewDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES Users(UserID),
    FOREIGN KEY (ServiceID) REFERENCES Services(ServiceID)
);
GO

-- Notifications Table
CREATE TABLE Notifications (
    NotificationID INT PRIMARY KEY IDENTITY(1,1),
    UserID INT,
    Message NVARCHAR(MAX),
    IsRead BIT,
    NotificationDate DATETIME DEFAULT GETDATE(),
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);
GO


-- Beds Table
CREATE TABLE Beds (
    BedID INT PRIMARY KEY IDENTITY(1,1),
    RoomID INT,
    BedName NVARCHAR(100),
    Status NVARCHAR(50),
    MaintenanceDate DATE,
    FOREIGN KEY (RoomID) REFERENCES Rooms(RoomID)
);
GO

-- Bulletins Table
CREATE TABLE Bulletins (
    BulletinID INT PRIMARY KEY IDENTITY(1,1),
    SpaID INT,
    Title NVARCHAR(100),
    Content NVARCHAR(MAX),
    PostedDate DATE,
    IsImportant BIT,
    FOREIGN KEY (SpaID) REFERENCES Spas(SpaID)
);
GO

-- RewardPoints Table
CREATE TABLE RewardPoints (
    RewardID INT PRIMARY KEY IDENTITY(1,1),
    CustomerID INT,
    Points INT,
    DateEarned DATE,
    DateRedeemed DATE,
    FOREIGN KEY (CustomerID) REFERENCES Users(UserID)
);
GO
-- CustomerSegmentation Table
CREATE TABLE CustomerSegmentation (
    SegmentID INT PRIMARY KEY IDENTITY(1,1),
    SpaID INT,
    SegmentName NVARCHAR(100),
    Criteria NVARCHAR(MAX),
    Benefits NVARCHAR(MAX),
    FOREIGN KEY (SpaID) REFERENCES Spas(SpaID)
);
GO

-- SystemSettings Table
CREATE TABLE SystemSettings (
    SettingID INT PRIMARY KEY IDENTITY(1,1),
    SettingName NVARCHAR(100),
    SettingValue NVARCHAR(MAX)
);
GO