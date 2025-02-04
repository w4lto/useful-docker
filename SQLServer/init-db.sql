IF NOT EXISTS (SELECT * FROM sys.databases WHERE name = 'TestDB')
BEGIN
    CREATE DATABASE TestDB;
END
GO

USE TestDB;
GO

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'Users')
BEGIN
    CREATE TABLE Users (
        UserId INT PRIMARY KEY,
        UserName NVARCHAR(50) NOT NULL,
        UserEmail NVARCHAR(50) NOT NULL UNIQUE
);
END
GO