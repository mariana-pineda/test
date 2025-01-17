-- Add lastdate column to Employees table
ALTER TABLE dbo.[Employees]
ADD [lastdate] DATETIME DEFAULT GETDATE();

-- Update existing records to have the default lastdate
UPDATE dbo.[Employees]
SET [lastdate] = GETDATE()
WHERE [lastdate] IS NULL;

-- Add categoryGroup column to Customers table
ALTER TABLE dbo.[Customers]
ADD [categoryGroup] NVARCHAR(255) CHECK ([categoryGroup] IN ('Retail', 'Wholesale', 'Online', 'Corporate', 'VIP', 'Regular', 'New', 'Uncategorized')) DEFAULT 'Uncategorized';

-- Update existing records to have the default categoryGroup
UPDATE dbo.[Customers]
SET [categoryGroup] = 'Uncategorized'
WHERE [categoryGroup] IS NULL;
