-- Users Table
CREATE TABLE Users (
    UserID INT PRIMARY KEY AUTO_INCREMENT,
    Username VARCHAR(50) NOT NULL,
    Password VARCHAR(255) NOT NULL,
    Email VARCHAR(100) NOT NULL,
    PhoneNumber VARCHAR(15),
    Address VARCHAR(10000),
    DateOfBirth DATE,
    DateRegistered TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Spas Table
CREATE TABLE Spas (
    SpaID INT PRIMARY KEY AUTO_INCREMENT,
    SpaName VARCHAR(100) NOT NULL,
    Location VARCHAR(255),
    PhoneNumber VARCHAR(15),
    Email VARCHAR(100),
    ManagerID INT,
    FOREIGN KEY (ManagerID) REFERENCES Users(UserID)
);

-- Roles Table
CREATE TABLE Roles (
    RoleID INT PRIMARY KEY AUTO_INCREMENT,
    RoleName VARCHAR(50) NOT NULL
);

-- Permissions Table
CREATE TABLE Permissions (
    PermissionID INT PRIMARY KEY AUTO_INCREMENT,
    PermissionName VARCHAR(100) NOT NULL
);

-- RolePermissions Table
CREATE TABLE RolePermissions (
    RolePermissionID INT PRIMARY KEY AUTO_INCREMENT,
    RoleID INT,
    PermissionID INT,
    FOREIGN KEY (RoleID) REFERENCES Roles(RoleID),
    FOREIGN KEY (PermissionID) REFERENCES Permissions(PermissionID)
);

-- UserRoles Table
CREATE TABLE UserRoles (
    UserRoleID INT PRIMARY KEY AUTO_INCREMENT,
    UserID INT,
    SpaID INT,
    RoleID INT,
    FOREIGN KEY (UserID) REFERENCES Users(UserID),
    FOREIGN KEY (SpaID) REFERENCES Spas(SpaID),
    FOREIGN KEY (RoleID) REFERENCES Roles(RoleID)
);

-- Services Table
CREATE TABLE Services (
    ServiceID INT PRIMARY KEY AUTO_INCREMENT,
    SpaID INT,
    ServiceName VARCHAR(100),
    Description TEXT,
    Price DECIMAL(10, 2),
    FOREIGN KEY (SpaID) REFERENCES Spas(SpaID)
);

-- Appointments Table
CREATE TABLE Appointments (
    AppointmentID INT PRIMARY KEY AUTO_INCREMENT,
    SpaID INT,
    CustomerID INT,
    EmployeeID INT,
    ServiceID INT,
    AppointmentDate DATE,
    AppointmentTime TIME,
    Status VARCHAR(50),
    FOREIGN KEY (SpaID) REFERENCES Spas(SpaID),
    FOREIGN KEY (CustomerID) REFERENCES Users(UserID),
    FOREIGN KEY (EmployeeID) REFERENCES Users(UserID),
    FOREIGN KEY (ServiceID) REFERENCES Services(ServiceID)
);

-- Customers Table
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FullName VARCHAR(100) NOT NULL,
    PhoneNumber VARCHAR(15),
    Email VARCHAR(100),
    Address VARCHAR(255),
    DateOfBirth DATE,
    FOREIGN KEY (CustomerID) REFERENCES Users(UserID)
);

-- Employees Table
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    SpaID INT,
    FullName VARCHAR(100) NOT NULL,
    PhoneNumber VARCHAR(15),
    Email VARCHAR(100),
    Position VARCHAR(50),
    IDCardNumber VARCHAR(50),
    Salary DECIMAL(10, 2),
    FOREIGN KEY (EmployeeID) REFERENCES Users(UserID),
    FOREIGN KEY (SpaID) REFERENCES Spas(SpaID)
);

-- ServiceCards Table
CREATE TABLE ServiceCards (
    ServiceCardID INT PRIMARY KEY AUTO_INCREMENT,
    SpaID INT,
    ServiceID INT,
    TotalTreatment INT,
    CustomerID INT,
    Price DECIMAL(10, 2),
    Discount,
    PaymentCode INT,
    ExpiryDate DATE,
    Status VARCHAR(50),
    FOREIGN KEY (SpaID) REFERENCES Spas(SpaID),
    FOREIGN KEY (ServiceID) REFERENCES Services(ServiceID),
    FOREIGN KEY (CustomerID) REFERENCES Users(UserID),
    FOREIGN KEY (PaymentCode) REFERENCES Transactions(TransactionID)
);

-- Sales Table
CREATE TABLE Sales (
    SaleID INT PRIMARY KEY AUTO_INCREMENT,
    SpaID INT,
    CustomerID INT,
    SaleDate DATE,
    TotalAmount DECIMAL(10, 2),
    PaymentStatus VARCHAR(50),
    FOREIGN KEY (SpaID) REFERENCES Spas(SpaID),
    FOREIGN KEY (CustomerID) REFERENCES Users(UserID)
);

-- Products Table
CREATE TABLE Products (
    ProductID INT PRIMARY KEY AUTO_INCREMENT,
    SpaID INT,
    ProductName VARCHAR(100),
    Description TEXT,
    Price DECIMAL(10, 2),
    QuantityInStock INT,
    FOREIGN KEY (SpaID) REFERENCES Spas(SpaID)
);

-- SaleItems Table
CREATE TABLE SaleItems (
    SaleItemID INT PRIMARY KEY AUTO_INCREMENT,
    SaleID INT,
    ProductID INT,
    Quantity INT,
    UnitPrice DECIMAL(10, 2),
    TotalPrice DECIMAL(10, 2),
    FOREIGN KEY (SaleID) REFERENCES Sales(SaleID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

-- Salaries Table
CREATE TABLE Salaries (
    SalaryID INT PRIMARY KEY AUTO_INCREMENT,
    EmployeeID INT,
    BaseSalary DECIMAL(10, 2),
    OvertimeHours INT,
    TotalSalary DECIMAL(10, 2),
    SalaryMonth INT,
    SalaryYear INT,
    FOREIGN KEY (EmployeeID) REFERENCES Users(UserID)
);

-- WorkSchedules Table
CREATE TABLE WorkSchedules (
    WorkScheduleID INT PRIMARY KEY AUTO_INCREMENT,
    EmployeeID INT,
    StartDate DATE,
    EndDate DATE,
    DayOfWeek VARCHAR(20),
    StartTime TIME,
    EndTime TIME,
    FOREIGN KEY (EmployeeID) REFERENCES Users(UserID)
);

-- Transactions Table
CREATE TABLE Transactions (
    TransactionID INT PRIMARY KEY AUTO_INCREMENT,
    SpaID INT,
    CustomerID INT,
    TransactionDate DATE,
    Amount DECIMAL(10, 2),
    TransactionType VARCHAR(50),
    Description TEXT,
    FOREIGN KEY (SpaID) REFERENCES Spas(SpaID),
    FOREIGN KEY (CustomerID) REFERENCES Users(UserID)
);

-- Promotions Table
CREATE TABLE Promotions (
    PromotionID INT PRIMARY KEY AUTO_INCREMENT,
    SpaID INT,
    PromotionName VARCHAR(100),
    StartDate DATE,
    EndDate DATE,
    Description TEXT,
    DiscountPercentage DECIMAL(5, 2),
    FOREIGN KEY (SpaID) REFERENCES Spas(SpaID)
);

-- Assets Table
CREATE TABLE Assets (
    AssetID INT PRIMARY KEY AUTO_INCREMENT,
    SpaID INT,
    AssetName VARCHAR(100),
    PurchaseDate DATE,
    Value DECIMAL(10, 2),
    Status VARCHAR(50),
    Description TEXT,
    FOREIGN KEY (SpaID) REFERENCES Spas(SpaID)
);

-- Reviews Table
CREATE TABLE Reviews (
    ReviewID INT PRIMARY KEY AUTO_INCREMENT,
    CustomerID INT,
    ServiceID INT,
    Rating INT CHECK (Rating BETWEEN 1 AND 5),
    Comment TEXT,
    ReviewDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES Users(UserID),
    FOREIGN KEY (ServiceID) REFERENCES Services(ServiceID)
);

-- Notifications Table
CREATE TABLE Notifications (
    NotificationID INT PRIMARY KEY AUTO_INCREMENT,
    UserID INT,
    Message TEXT,
    IsRead BOOLEAN,
    NotificationDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);

-- Rooms Table
CREATE TABLE Rooms (
    RoomID INT PRIMARY KEY AUTO_INCREMENT,
    SpaID INT,
    RoomName VARCHAR(100),
    Status VARCHAR(50),
    FOREIGN KEY (SpaID) REFERENCES Spas(SpaID)
);

-- Beds Table
CREATE TABLE Beds (
    BedID INT PRIMARY KEY AUTO_INCREMENT,
    RoomID INT,
    BedName VARCHAR(100),
    Status VARCHAR(50),
    MaintenanceDate DATE,
    FOREIGN KEY (RoomID) REFERENCES Rooms(RoomID)
);

-- Bulletins Table
CREATE TABLE Bulletins (
    BulletinID INT PRIMARY KEY AUTO_INCREMENT,
    SpaID INT,
    Title VARCHAR(100),
    Content TEXT,
    PostedDate DATE,
    IsImportant BOOLEAN,
    FOREIGN KEY (SpaID) REFERENCES Spas(SpaID)
);

-- RewardPoints Table
CREATE TABLE RewardPoints (
    RewardID INT PRIMARY KEY AUTO_INCREMENT,
    CustomerID INT,
    Points INT,
    DateEarned DATE,
    DateRedeemed DATE,
    FOREIGN KEY (CustomerID) REFERENCES Users(UserID)
);

-- CustomerSegmentation Table
CREATE TABLE CustomerSegmentation (
    SegmentID INT PRIMARY KEY AUTO_INCREMENT,
    SpaID INT,
    SegmentName VARCHAR(100),
    Criteria TEXT,
    Benefits TEXT,
    FOREIGN KEY (SpaID) REFERENCES Spas(SpaID)
);

-- SystemSettings Table
CREATE TABLE SystemSettings (
    SettingID INT PRIMARY KEY AUTO_INCREMENT,
    SettingName VARCHAR(100),
    SettingValue TEXT
);
