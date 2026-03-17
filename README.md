# Healthcare Insurance Dashboard Project

![Dashboard](docs/17.03.2026_10.50.39_REC.png)

## Overview
This project is a **Healthcare Insurance Cost Analysis Dashboard** built with **Power BI** and **MySQL**.

The goal of this project is to:
- Analyze insurance charges based on patient data (age, BMI, smoking status, region)
- Build an interactive dashboard for data visualization
- Demonstrate a complete data workflow (Python → SQL → Power BI)

---
```
## Project Structure

Healthcare-Dashboard/
├─ powerbi/
│ └─ Healthcare_Dashboard.pbix
├─ sql/
│ ├─ healthcare_setup.sql
│ └─ analysis_queries.sql
├─ data/
│ └─ patients_sample.csv
├─ python/
│ └─ exploration.ipynb
├─ docs/
│ └─ dashboard_screenshots
└─ README.md

```
---

## Challenges & Lessons Learned

### 1. Connecting Mac → Windows (Major Challenge)
- MySQL database was running on **Mac**
- Power BI was only available on **Windows**
- Needed to connect both devices over **Wi-Fi**

Solution:
- Created user:
```sql
CREATE USER 'powerbi'@'%' IDENTIFIED BY '1234';
GRANT ALL PRIVILEGES ON healthcare.* TO 'powerbi'@'%';
FLUSH PRIVILEGES;

----
-Used Mac local IP (e.g., 192.168.x.x)

-Disabled firewall and verified connection with ping

----

2. MySQL Data Issues

Table not showing → fixed by refresh

Error 1175 → solved with :
SET SQL_SAFE_UPDATES = 0
Duplicate table issue → solved with:
DROP TABLE IF EXISTS patients;

----

3. Data Cleaning

-Created new columns:

.age_group

.cost_per_child

.smoker_numeric

-Used Python (Jupyter Notebook) for:

Data exploration

.Checking distributions

.Initial cleaning

4. Power BI Issues

.Error: "Single value for column cannot be determined"
→ solved by creating calculated columns

-Chart issues:

.Wrong axis placement

.Aggregation problems

.Missing legend/color

-Technologies Used

.MySQL → Database

.Power BI → Dashboard & Visualization

.Python (Jupyter Notebook) → Data exploration

.GitHub → Project hosting

Key Insights

.Smokers have significantly higher insurance charges

.Higher BMI leads to higher costs

.Older age groups pay more

.Region affects distribution of patients

-How to Run

Run sql/healthcare_setup.sql in MySQL

Import your dataset into patients table

Open pbix/Healthcare_Dashboard.pbix

Connect Power BI to MySQL using:

Server: Mac IP address

User: powerbi

Password: 1234

Explore the dashboard

Screenshots & Documentation

All dashboard images are stored in:
docs/dashboard_screenshots/


Conclusion

This project demonstrates a complete data pipeline:

Data → Cleaning → SQL → Visualization (Power BI)

It also highlights real-world challenges such as:

Cross-platform connection (Mac → Windows)

Data cleaning and transformation

Building interactive dashboards
