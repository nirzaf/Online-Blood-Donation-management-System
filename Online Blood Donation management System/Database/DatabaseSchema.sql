CREATE TABLE Countries (
    CountryID INT PRIMARY KEY IDENTITY(1,1),
    CountryName NVARCHAR(100) NOT NULL,
    CountryDesc NVARCHAR(255),
    CountryCode NVARCHAR(10) NOT NULL
);

CREATE TABLE States (
    StateID INT PRIMARY KEY IDENTITY(1,1),
    StateName NVARCHAR(100) NOT NULL,
    StateCode NVARCHAR(10) NOT NULL,
    StateDesc NVARCHAR(255),
    CountryID INT,
    FOREIGN KEY (CountryID) REFERENCES Countries(CountryID)
);

CREATE TABLE Cities (
    CityID INT PRIMARY KEY IDENTITY(1,1),
    CityName NVARCHAR(100) NOT NULL,
    CityDesc NVARCHAR(255),
    CityCode NVARCHAR(10) NOT NULL,
    StateID INT,
    FOREIGN KEY (StateID) REFERENCES States(StateID)
);

CREATE TABLE BloodGroups (
    BloodGroupID INT PRIMARY KEY IDENTITY(1,1),
    BloodGroupName NVARCHAR(50) NOT NULL,
    BloodGroupDesc NVARCHAR(255)
);

CREATE TABLE BloodTypes (
    BloodTypeID INT PRIMARY KEY IDENTITY(1,1),
    BloodTypeName NVARCHAR(50) NOT NULL,
    BloodTypeDesc NVARCHAR(255)
);

CREATE TABLE DonationFrequencies (
    FrequencyID INT PRIMARY KEY IDENTITY(1,1),
    FrequencyName NVARCHAR(50) NOT NULL,
    FrequencyDesc NVARCHAR(255)
);

CREATE TABLE Organizations (
    OrganizationID INT PRIMARY KEY IDENTITY(1,1),
    OrganizationName NVARCHAR(100) NOT NULL,
    OrganizationDesc NVARCHAR(255),
    OrganizationImage NVARCHAR(255)
);

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY IDENTITY(1,1),
    EmployeeName NVARCHAR(100) NOT NULL,
    EmployeeAddress NVARCHAR(255),
    EmployeePhone NVARCHAR(20),
    EmployeeEmail NVARCHAR(100),
    UserName NVARCHAR(50) NOT NULL,
    Password NVARCHAR(50) NOT NULL,
    RoleID INT
);

CREATE TABLE Donors (
    DonorID INT PRIMARY KEY IDENTITY(1,1),
    DonorName NVARCHAR(100) NOT NULL,
    DonorAddress NVARCHAR(255),
    DonorPhone NVARCHAR(20),
    DonorEmail NVARCHAR(100),
    BloodGroupID INT,
    BloodTypeID INT,
    FOREIGN KEY (BloodGroupID) REFERENCES BloodGroups(BloodGroupID),
    FOREIGN KEY (BloodTypeID) REFERENCES BloodTypes(BloodTypeID)
);

CREATE TABLE BloodRequests (
    RequestID INT PRIMARY KEY IDENTITY(1,1),
    DonorID INT,
    OrganizationID INT,
    RequestName NVARCHAR(100) NOT NULL,
    RequestEmail NVARCHAR(100),
    RequestPhone NVARCHAR(20),
    RequestCountry NVARCHAR(100),
    RequestState NVARCHAR(100),
    RequestCity NVARCHAR(100),
    RequestLocation NVARCHAR(255),
    RequestAddress NVARCHAR(255),
    BloodTypeID INT,
    BloodGroupID INT,
    AppointmentDate DATE,
    RequestDate DATE,
    RequestType NVARCHAR(50),
    FOREIGN KEY (DonorID) REFERENCES Donors(DonorID),
    FOREIGN KEY (OrganizationID) REFERENCES Organizations(OrganizationID),
    FOREIGN KEY (BloodTypeID) REFERENCES BloodTypes(BloodTypeID),
    FOREIGN KEY (BloodGroupID) REFERENCES BloodGroups(BloodGroupID)
);

CREATE TABLE FAQs (
    FAQID INT PRIMARY KEY IDENTITY(1,1),
    Question NVARCHAR(255) NOT NULL,
    Answer NVARCHAR(255)
);
