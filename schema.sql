

-- Create the AlvandTileCompanyDatabase database
CREATE DATABASE AlvandTileCompanyDatabase;
USE AlvandTileCompanyDatabase;


-- Create OperationalDetails Table
CREATE TABLE OperationalDetails (
    FactoryID INT AUTO_INCREMENT PRIMARY KEY,
    FactoryCode VARCHAR(50) NOT NULL UNIQUE,
    Location VARCHAR(255),
    YearEstablished YEAR,
    OperationalStatus ENUM('Active', 'Maintenance', 'Closed') NOT NULL,
    Shifts ENUM('Single', 'Double', 'Continuous') NOT NULL,
    TechnologyLevel VARCHAR(255),
    EnergySource VARCHAR(255)
);


-- Create CapacityAndProduction Table
CREATE TABLE CapacityAndProduction (
    CapacityID INT AUTO_INCREMENT PRIMARY KEY,
    FactoryID INT,
    DailyProductionCapacity INT,
    MaxStorageCapacity INT,
    NumberOfWorkers INT,
    ExportPercentage FLOAT,
    FOREIGN KEY (FactoryID) REFERENCES OperationalDetails(FactoryID) ON DELETE CASCADE ON UPDATE CASCADE
);


-- Create ManagementAndPersonnel Table
CREATE TABLE ManagementAndPersonnel (
    ManagementID INT AUTO_INCREMENT PRIMARY KEY,
    FactoryID INT,
    ManagerID INT,
    QualityControlID INT,
    SafetyRating VARCHAR(50),
    QualityControlStandards VARCHAR(255),
    FOREIGN KEY (FactoryID) REFERENCES OperationalDetails(FactoryID) ON DELETE CASCADE ON UPDATE CASCADE
);


-- Create EnvironmentalImpactScore Table
CREATE TABLE EnvironmentalImpactScore (
    FinancialID INT AUTO_INCREMENT PRIMARY KEY,
    FactoryID INT,
    RnDInvestmentMT FLOAT,
    EnvironmentalImpactScore FLOAT,
    FOREIGN KEY (FactoryID) REFERENCES OperationalDetails(FactoryID) ON DELETE CASCADE ON UPDATE CASCADE
);
