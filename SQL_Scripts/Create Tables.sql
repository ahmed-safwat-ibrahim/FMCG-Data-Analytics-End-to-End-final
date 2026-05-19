-- =========================================
-- 1. Dimension Tables 
-- =========================================

CREATE TABLE Dim_Calendar (
    Date_Key DATE PRIMARY KEY,
    Year INT,
    Quarter INT,
    Month_Num INT,
    Month_Name VARCHAR(20),
    Is_Weekend BIT
);

CREATE TABLE Dim_Geography (
    Region_Key INT PRIMARY KEY,
    Province VARCHAR(50),
    City VARCHAR(50),
    Territory VARCHAR(50),
    Population_Density VARCHAR(20),
    Warehouse_Name VARCHAR(50)
);

CREATE TABLE Dim_Products (
    Product_Key INT PRIMARY KEY,
    Product_Name VARCHAR(100),
    Brand VARCHAR(50),
    Sub_Category VARCHAR(50),
    Flavor VARCHAR(50),
    Unit_Cost DECIMAL(10,2),
    Standard_Price DECIMAL(10,2),
    Capacity_Litre DECIMAL(5,2),
    Weight_Kg DECIMAL(5,2),
    Shelf_Life_Days INT
);

CREATE TABLE Dim_Stores (
    Store_Key INT PRIMARY KEY,
    Store_Name VARCHAR(100),
    Channel VARCHAR(50),
    Store_Grade VARCHAR(20),
    Region_Key INT,
    Sub_Channel VARCHAR(50),
    Payment_Term VARCHAR(50),
    Latitude DECIMAL(9,6),
    Longitude DECIMAL(9,6)
);

CREATE TABLE Dim_Salesmen (
    Salesman_Key INT PRIMARY KEY,
    Salesman_Name VARCHAR(100),
    Supervisor_Name VARCHAR(100), -- يقبل Null عادي
    Position VARCHAR(50),
    Commission_Rate DECIMAL(5,3),
    Hiring_Date DATE,
    Sales_Tool VARCHAR(50)
);

CREATE TABLE Dim_Promotions (
    Promo_Key INT PRIMARY KEY,
    Promo_Name VARCHAR(100),
    Discount_Percentage DECIMAL(5,2),
    Promo_Budget DECIMAL(15,2),
    Min_Qty_To_Apply INT,
    Promo_Objective VARCHAR(100)
);

-- =========================================
-- 2. Fact Tables 
-- =========================================


CREATE TABLE Fact_Sales (
    Transaction_ID INT,  
    Date_Key VARCHAR(20), 
    Store_Key INT,
    Product_Key INT,
    Salesman_Key INT,
    Promo_Key INT,
    Order_Source VARCHAR(50),
    Quantity_Cases INT,
    Qty_Returned INT,
    Return_Reason VARCHAR(50),
    Gross_Sales DECIMAL(15,2),
    Discount_Amount DECIMAL(15,2),
    Net_Sales DECIMAL(15,2),
    COGS DECIMAL(15,2)
);



CREATE TABLE Fact_Targets (
    Salesman_Key INT,
    Target_Month DATE,
    Target_Amount_EGP DECIMAL(15,2)
);

CREATE TABLE Fact_Market_Share (
    Date_Key DATE,
    Region_Key INT,
    Brand_Name VARCHAR(50),
    Volume_Share_Percentage DECIMAL(10,2),
    Value_Share_Percentage DECIMAL(10,2),
    Competitor_Price DECIMAL(10,2),
    Availability_Status VARCHAR(10),
    Shelf_Space_Share DECIMAL(10,2)
);

CREATE TABLE Fact_Visits (
    Visit_ID INT PRIMARY KEY,
    Date_Key VARCHAR(20), -- مقصودة
    Store_Key INT,
    Salesman_Key INT,
    Is_Ordered BIT,
    OOS_Items_Count INT,
    Visit_Duration_Minutes INT,
    GPS_Distance_Check_Meters INT,
    Visit_Type VARCHAR(50)
);