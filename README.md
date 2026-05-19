# 🥤 FMCG End-to-End Data Analytics Project: Shams Cola

## 📌 Project Overview
This project is a comprehensive, end-to-end Data Analytics portfolio piece designed for the Fast-Moving Consumer Goods (FMCG) industry. We simulate a real-world business scenario for "Shams Cola," addressing complex data challenges from raw data extraction to strategic business dashboarding.


## 🎯 Business Problem
FMCG companies generate massive amounts of daily data across sales, returns, and field operations. The challenge is that data is often messy, and decision-makers operate in silos. This project bridges the gap by providing actionable insights across 5 key business pillars:
1. **Financial Performance:** Revenue, COGS, and Margin analysis.
2. **Targets & Growth:** YoY growth and Sales Representatives' target achievements.
3. **Quality & Returns:** Return rates, danger zones, and promotional impact.
4. **Field Force Execution (Trade Marketing):** Out-of-Stock (OOS) incidents and Salesmen Strike Rate.
5. **Market Share & Competition:** Shelf-space analysis and competitor pricing impact.

## 🛠️ Tech Stack & Workflow
* **Database Management & EDA:** SQL Server (SSMS)
  * *Techniques used:* Data Cleansing, CTEs, Window Functions (`ROW_NUMBER`), View Creation for Query Folding.
* **Business Intelligence & Visualization:** Microsoft Power BI
  * *Techniques used:* Star Schema Data Modeling, Advanced DAX, Time Intelligence, Conditional Formatting, Data Storytelling.

## 📂 Repository Structure
* `/Data`: Contains the raw datasets (Sales, Targets, Visits, Market Share, Dimensions).
* `/SQL_Scripts`: Includes the initial EDA scripts and the script used to create the cleaned `vw_Fact_Sales_Clean` view.
* `/PowerBI`: Contains the final `.pbix` file (to be uploaded).
* `/Screenshots`: Dashboard previews.

## 🚀 How to Use (For Students & Learners)
1. Download the raw data from the `/Data` folder.
2. Run the SQL scripts in SSMS to clean the anomalies and create the View.
3. Import the clean View and Dimension tables into Power BI.


## 📊 Dashboard Sneak Peek

---
**👨‍🏫 Created by:** [Ahmed Safwat]
**🔗 LinkedIn:** (https://www.linkedin.com/in/ahmed-safwat-041129199/)
