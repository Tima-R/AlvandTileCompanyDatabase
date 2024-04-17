
### OperationalDetails Table
- **FactoryID**: Integer (Primary Key) - A unique identifier for each factory.
- **FactoryCode**: String - A unique code for each factory location.
- **Location**: String - The physical location of the factory.
- **YearEstablished**: Year - The year the factory was established.
- **OperationalStatus**: Enum('Active', 'Maintenance', 'Closed') - Current operational status of the factory.
- **Shifts**: Enum('Single', 'Double', 'Triple', 'Day Shift') - Types of shifts that operate in the factory.
- **TechnologyLevel**: String - Description of the technology level in the factory.
- **EnergySource**: String - Primary energy source used by the factory.


### CapacityAndProduction Table
- **CapacityID**: INT (Primary Key, Auto-Increment) - Unique identifier for each record.
- **FactoryID**: INT (Foreign Key) - Links to FactoryID in OperationalDetails to denote which factory this record pertains to.
- **DailyProductionCapacity**: INT - The maximum number of square meters of tile the factory can produce in a day.
- **MaxStorageCapacity**: INT - The maximum storage capacity of the factory, measured in square meters of stored tile..
- **NumberOfWorkers**: INT - Total number of workers employed in the factory.
- **ExportPercentage**: FLOAT - Percentage of production that is exported outside.


### ManagementAndPersonnel Table
- **ManagementID**: INT (Primary Key, Auto-Increment) - Unique identifier for each management record.
- **FactoryID**: INT (Foreign Key) - Associates the record with a specific factory in OperationalDetails.
- **ManagerID**: INT - Identifier for the manager responsible for the shift.
- **TechnicalLeadID**: INT - Identifier for the quality control expert for the shift.
- **SafetyRating**: VARCHAR(50) - Safety rating of the factory (e.g., "A", "A+", "B").
- **QualityControlStandards**: VARCHAR(255) - Standards or certifications the factory adheres to (e.g., "ISO 9001", "ISO 13006").


### EnvironmentalImpactScore Table
- **FinancialID**: INT (Primary Key, Auto-Increment) - Unique identifier for each environmental impact record.
- **FactoryID**: INT (Foreign Key) - Links to FactoryID in OperationalDetails indicating which factory this environmental data is associated with.
- **RnDInvestmentMT**: FLOAT - Amount invested in research and development for environmental improvements at the factory measured by Million Tuman.
- **EnvironmentalImpactScore**: FLOAT - A numerical score representing the environmental impact of the factory, potentially affecting sustainability ratings.
