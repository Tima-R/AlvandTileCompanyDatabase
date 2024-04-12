# AlvandTileCompanyDatabase
A MySQL database project for managing operations of the Alvand Tile manufacturing company, including production, personnel, and environmental data.

## Overview
This repository contains the SQL scripts and documentation for a database designed for managing operations of a Tile manufacturing company named Alvand Tile & Ceramic Industries. The project encompasses the creation of a MySQL database to store operational details, production capacities, employee management, and environmental impact assessments of different factory locations.

## Getting Started

### Prerequisites

- MySQL Server (Version 5.7 or newer recommended)
- MySQL Workbench or any SQL client that supports MySQL

### Installation

1. **Clone the repository**:
    ```
    git clone https://github.com/Tima-R/AlvandTileCompanyDatabase.git
    ```

2. **Create the database** by running the `schema.sql` script in MySQL Workbench. This script will create the `AlvandTileCompanyDatabase` database along with all required tables.

3. **Populate the database** with initial test data by executing the `insert_data.sql` script.

### Directory Structure

- `/sql` - Contains SQL scripts for creating the database schema (`schema.sql`) and inserting test data (`insert_data.sql`).
- `/docs` - Contains the project documentation, including the Entity-Relationship Diagram (ERD) and other relevant documentation.

## Usage

After setting up the database, to start querying the data or inserting new records. Here are some example operations to perform:

### Querying the Database

```sql
-- Read (select)
SELECT * FROM OperationalDetails;
SELECT FactoryID, DailyProductionCapacity FROM CapacityAndProduction;

-- Create (Insert)
INSERT INTO OperationalDetails (FactoryCode, Location, YearEstablished, OperationalStatus, Shifts, TechnologyLevel, EnergySource) 
VALUES ('ATC002', 'Qazvin', 2006, 'Active', 'Triple', 'Moderate', 'Electricity');

-- Update
-- Update the TechnologyLevel of a specific factory
UPDATE OperationalDetails
SET TechnologyLevel = 'Moderate'
WHERE FactoryCode = 'ATC003';

-- Delete
-- Delete a record from the OperationalDetails table
DELETE FROM OperationalDetails
WHERE FactoryCode = 'ATC003';

--- Quick Start Query
-- Quickly get the production capacity of all factories
SELECT FactoryCode, Location, DailyProductionCapacity 
FROM OperationalDetails
JOIN CapacityAndProduction ON OperationalDetails.FactoryID = CapacityAndProduction.FactoryID;

-- Specific Operations
-- Generate a detailed report of each factory including operational details and environmental scores
SELECT 
    OperationalDetails.FactoryCode, 
    OperationalDetails.Location, 
    OperationalDetails.Shifts, 
    CapacityAndProduction.DailyProductionCapacity, 
    EnvironmentalImpactScore.EnvironmentalImpactScore
FROM OperationalDetails
JOIN CapacityAndProduction ON OperationalDetails.FactoryID = CapacityAndProduction.FactoryID
JOIN EnvironmentalImpactScore ON OperationalDetails.FactoryID = EnvironmentalImpactScore.FactoryID;

-- Update Production Capacity Based on Environmental Score
-- Increase the production capacity for factories with an environmental score above 80
UPDATE CapacityAndProduction
SET DailyProductionCapacity = DailyProductionCapacity * 1.1
WHERE FactoryID IN (
    SELECT FactoryID 
    FROM EnvironmentalImpactScore
    WHERE EnvironmentalImpactScore > 80
);

-- Find Factories Needing Review
-- Find factories that have not been reviewed in over a year
SELECT FactoryCode, Location, YearEstablished 
FROM OperationalDetails
WHERE YEAR(CURDATE()) - YearEstablished > 1 AND OperationalStatus = 'Active';





