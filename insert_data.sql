
-- This SQL script contains test data for demonstration purposes only.
-- The actual data used during the project development are not accessible due to confidentiality constraints.


-- Inserting data for OperationalDetails
INSERT INTO OperationalDetails (FactoryCode, Location, YearEstablished, OperationalStatus, Shifts, TechnologyLevel, EnergySource) 
VALUES
('ATC002', 'Qazvin', 2006, 'Active', 'Triple', 'Moderate', 'Electricity');


-- Inserting data for CapacityAndProduction
INSERT INTO CapacityAndProduction (FactoryID, DailyProductionCapacity, MaxStorageCapacity, NumberOfWorkers, ExportPercentage)
VALUES 
(ATC001, 5000, 10000, 188, 50.0), 
(ATC003, 4500, 8500, 125, 60.5);   

-- Inserting management details, ManagerID and QualityControlID refer to real persons in a staff table
INSERT INTO ManagementAndPersonnel (FactoryID, ManagerID, QualityControlID, SafetyRating, QualityControlStandards)
VALUES 
(ATC001, PL01, QC02, 'A+', 'ISO 9001'),  
(ATC002, PL7, QC11, 'A', 'ISO 13006');  

-- Inserting environmental impact scores
INSERT INTO EnvironmentalImpactScore (FactoryID, RnDInvestmentMT, EnvironmentalImpactScore)
VALUES 
(ATC002, 200, 92.5),  
(ATC003, 600, 55.0);  
