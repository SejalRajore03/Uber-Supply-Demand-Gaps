Uber Supply-Demand Gap Analysis :

A complete end-to-end analysis of Uber’s supply–demand gap using SQL, Python, Excel Dashboard.

This projects analyse Uber ride request data from July 11-16,2016 using:
The analysis involved:
✅ Python (Pandas, Seaborn) for EDA
✅ Excel for KPI & trend dashboards
✅ Business recommendations to reduce gap by 30%

🔍 Key Findings
Based on the SQL queries here are the insights uncovered:

1. Trip Volumes Over Time
   A large number of trips clustered during peak hours.
   High frequency of requests on specific dates.

2. Top Pickup Locations
   Requests were heavily concentrated at certain pickup points (City or Airport).
   Some Request IDs had significantly more occurrences (likely duplicates or aggregation errors needing further validation).

3. Ride Status Distribution
   A notable proportion of requests were either:
      - Cancelled by customers
      - Not fulfilled due to unavailability of cars

4. Data Quality Issues
   There were records with missing Request id and Status, which had to be deleted.
   Timestamps required standardization to DATETIME format.

📁 Files Included

- SQL Queries & PDF Report
- Python EDA (Jupyter Notebook)
- Excel Dashboard


