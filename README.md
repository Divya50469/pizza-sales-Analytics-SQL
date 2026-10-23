# pizza-sales-Analytics-SQL
 A professional-grade SQL project focused on Pizza Sales Analytics using Denormalized Architecture (One Big Table).
# 🍕 Pizza Sales Analytics: SQL Engineering Project

## 📌 Project Overview
This project focuses on building a data analytics engine for a high-volume pizza delivery business. To optimize query execution times and simplify the analytical pipeline, the project utilizes the **One Big Table (OBT) / Denormalized Architecture**. This design pattern is heavily used in modern cloud data warehouses (like BigQuery and Snowflake) by major tech organizations to run high-speed business intelligence reports without heavy join overheads.

## 🛠️ Tech Stack & Architecture
- **Database Engine:** SQL (SQLite / Cloud Compatible)
- **Environment Platform:** SQLPhone / Enterprise DB Browser
- **Data Modeling Paradigm:** Denormalized Master Ledger (`pizza_master_dataset`)

---

## 📊 Standardized Master Dataset Schema
The centralized master table eliminates redundant multi-table scans, presenting a unified view of the entire transaction flow:

| Order ID | Transaction Date | Customer Name | Market City | Pizza Variant | Culinary Segment | Base Price | Order Qty | Payment Channel | Settlement Status |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| 501 | 2026-10-23 | Aman Sharma | Delhi | Margherita | Veg | ₹199.00 | 1 | UPI | 🟢 Success |
| 501 | 2026-10-23 | Aman Sharma | Delhi | Farmhouse | Veg | ₹299.00 | 1 | UPI | 🟢 Success |
| 502 | 2026-10-23 | Priya Verma | Mumbai | Chicken Pepperoni | Non-Veg | ₹449.00 | 1 | Credit Card | 🟢 Success |
| 503 | 2026-10-24 | Rahul Singh | Bangalore | Peppy Paneer | Veg | ₹349.00 | 1 | Cash | 🟡 Pending |
| 504 | 2026-10-24 | Sneha Gupta | Noida | BBQ Chicken | Non-Veg | ₹399.00 | 2 | UPI | 🟢 Success |

---

## 📈 Enterprise Analytical Queries Included
The project repository features production-ready SQL scripts designed to extract crucial operational metrics:

1. **Product Performance Analytics:** Evaluates volume velocity and gross revenue contributions per pizza variant to optimize inventory stocking strategies.
2. **Geographical Revenue Distributions:** Segments and ranks operational performance by metropolitan markets to identify top-performing business territories.
3. **Transactional Channel Health:** Tracks success rates across multiple digital and cash payment nodes to flag systemic payment gateway failures.
4. **Segment Contribution Modeling:** Monitors the balance between Vegetarian and Non-Vegetarian revenue pools to steer seasonal menu engineering.

---
*Maintained and architected by a Data Engineering Enthusiast.*
