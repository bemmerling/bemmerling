-- Create a new table called 'agencies' in schema 'SchemaName'
-- Drop the table if it already exists
IF OBJECT_ID('dbo.agencies', 'U') IS NOT NULL
DROP TABLE QuoteDB.dbo.agencies
GO
-- Create the table in the specified schema
CREATE TABLE dbo.agencies
(
    AgencyID INT NOT NULL PRIMARY KEY, -- primary key column
    AgencyName [NVARCHAR](50) NOT NULL,
    AgencyAdd1 [NVARCHAR](50) NOT NULL,
    AgencyAdd2 [NVARCHAR](50),
    AgencyCity [NVARCHAR](50) NOT NULL,
    AgencyState [NVARCHAR](50) NOT NULL,
    AgencyZip [NVARCHAR](50) NOT NULL,
    AgencyPhone [CHAR](10) NOT NULL
);
GO

IF OBJECT_ID('dbo.agents', 'U') IS NOT NULL
DROP TABLE QuoteDB.dbo.agents
GO
-- Create the table in the specified schema
CREATE TABLE dbo.agents
(
    AgentID INT NOT NULL PRIMARY KEY, -- primary key column
    AgencyID INT NOT NULL FOREIGN KEY(AgencyID) REFERENCES agencies(AgencyID),
    AgentFirst [NVARCHAR](50) NOT NULL,
    AgentLast [NVARCHAR](50) NOT NULL,
    AgentEmail [NVARCHAR](50),
    AgentPhoneO [CHAR](10) NOT NULL,
    AgentPhoneC [CHAR](10) NOT NULL
);
GO