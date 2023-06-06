-- Create the database
CREATE DATABASE ClothingDB;
GO

-- Use the ClothingDB database
USE ClothingDB;
GO

-- Create the "clothing" table
CREATE TABLE clothing (
  item VARCHAR(50) PRIMARY KEY,
  cost DECIMAL(10, 2),
  colour VARCHAR(20),
  brand VARCHAR(50),
  type VARCHAR(50),
  picture VARCHAR(100),
  status VARCHAR(20),
  care_instruction VARCHAR(100)
);
GO

-- Create the "outfit" table
CREATE TABLE outfit (
  item VARCHAR(50) PRIMARY KEY,
  dressCode VARCHAR(50),
  weather INT,
  notes VARCHAR(100)
);
GO

-- Perform a LEFT JOIN between "clothing" and "outfit" tables on the "item" column
SELECT c.item, c.cost, c.colour, c.brand, c.type, c.picture, c.status, c.care_instruction, o.dressCode, o.weather, o.notes
FROM clothing c
LEFT JOIN outfit o ON c.item = o.item;