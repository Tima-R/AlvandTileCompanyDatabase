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

After setting up the database, you can start querying the data or inserting new records. Here are some example operations you can perform:

### Querying the Database

```sql
SELECT * FROM OperationalDetails;
SELECT FactoryID, DailyProductionCapacity FROM CapacityAndProduction;

INSERT INTO OperationalDetails (FactoryCode, Location, YearEstablished, OperationalStatus, Shifts, TechnologyLevel, EnergySource) 
VALUES ('ATC002', 'Qazvin', 2006, 'Active', 'Triple', 'Moderate', 'Electricity');

