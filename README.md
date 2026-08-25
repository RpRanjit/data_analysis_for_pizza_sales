# 🍕 Pizza Sales Analysis — SQL & Power BI

## 📊 Project Overview

This project analyzes one full year of pizza sales transaction data to uncover business insights related to revenue, order volume, customer purchasing patterns, pizza categories, sizes, and individual pizza performance.

The analysis uses **SQL for data querying and aggregation** and **Microsoft Power BI for interactive data visualization and dashboard development**.

The dataset contains **48,620 pizza sales line items across 21,350 orders** covering the period from **January 1, 2015 to December 31, 2015**.

---

## 🎯 Project Objectives

The main objectives of this project are to:

* Analyze overall pizza sales performance.
* Calculate important business KPIs.
* Identify daily and monthly sales trends.
* Analyze revenue by pizza category.
* Analyze revenue by pizza size.
* Identify the best and worst-performing pizzas.
* Compare pizzas based on revenue, quantity sold, and number of orders.
* Provide actionable business recommendations based on the analysis.

---

## 🛠️ Tools & Technologies

* **SQL / MySQL** — Data querying, aggregation, and analysis
* **Microsoft Power BI** — Interactive dashboard and visualization
* **Microsoft Excel / CSV** — Source data
* **PowerPoint** — Project presentation
* **GitHub** — Project documentation and version control

---

## 📁 Dataset

The main dataset is `pizza_sales.csv`.

Each row represents a pizza sold within an order. The dataset contains information such as:

* `pizza_id`
* `order_id`
* `pizza_name_id`
* `quantity`
* `order_date`
* `order_time`
* `unit_price`
* `total_price`
* `pizza_size`
* `pizza_category`
* `pizza_ingredients`
* `pizza_name`

The source report states that the dataset contains **48,620 rows with no missing values**.

---

## 📌 Key Performance Indicators

| KPI                         |          Result |
| --------------------------- | --------------: |
| 💰 Total Revenue            | **$817,860.05** |
| 🍕 Total Pizzas Sold        |      **49,574** |
| 🧾 Total Orders             |      **21,350** |
| 💵 Average Order Value      |      **$38.31** |
| 🍕 Average Pizzas per Order |        **2.32** |

These KPIs were calculated using SQL aggregation queries and are also represented in the Power BI dashboard.

---

## 📊 Power BI Dashboard

The Power BI report contains two main pages:

### 🏠 Home

The Home page provides an overview of the business through:

* KPI cards
* Daily order trends
* Monthly order trends
* Revenue by pizza category
* Revenue by pizza size
* Pizzas sold by category
* Month and category filters

### 🏆 Best & Worst Sellers

The second page focuses on individual pizza performance and provides:

* Top 5 pizzas by revenue
* Bottom 5 pizzas by revenue
* Top 5 pizzas by quantity sold
* Bottom 5 pizzas by quantity sold
* Top 5 pizzas by number of orders
* Bottom 5 pizzas by number of orders

The dashboard structure and visuals are documented in the project report.

---

## 🔎 Key Findings

### 📅 Sales by Day

Friday is the busiest day with **3,538 orders**, while Sunday has the lowest volume with **2,624 orders**.

Friday is approximately **27% busier than Sunday**, suggesting that staffing, inventory preparation, and delivery capacity should be adjusted toward the Thursday–Saturday period.

### 📆 Monthly Trends

July records the highest monthly order volume with **1,935 orders**.

September and October are among the quieter months, indicating that daily patterns have a stronger influence on demand than major seasonal fluctuations.

### 🍕 Category Performance

The **Classic** category is the leading category:

* **14,888 pizzas sold**
* **26.91% of total revenue**

The four categories remain relatively balanced, although Classic has a clear lead.

### 📏 Pizza Size

Large pizzas account for **45.89% of total revenue**, making them the dominant size.

XL and XXL pizzas together contribute less than 2% of revenue, indicating that these sizes currently represent a niche part of the business.

---

## 🏆 Best-Selling Pizzas

### Top 5 by Revenue

| Pizza                    |    Revenue |
| ------------------------ | ---------: |
| Thai Chicken Pizza       | $43,434.25 |
| Barbecue Chicken Pizza   | $42,768.00 |
| California Chicken Pizza | $41,409.50 |
| Classic Deluxe Pizza     | $38,180.50 |
| Spicy Italian Pizza      | $34,831.25 |

The top revenue performers are strongly represented by Chicken-category pizzas.

### Top 5 by Quantity Sold

1. Classic Deluxe Pizza — 2,453
2. Barbecue Chicken Pizza — 2,432
3. Hawaiian Pizza — 2,422
4. Pepperoni Pizza — 2,418
5. Thai Chicken Pizza — 2,371

---

## ⚠️ Underperforming Products

The **Brie Carre Pizza** is the weakest performer across revenue, quantity, and number of orders:

* Revenue: **$11,588.50**
* Quantity sold: **490**
* Orders: **480**

This makes it a potential candidate for further investigation into pricing, visibility, customer preference, or recipe positioning.

---

## 💡 Business Recommendations

Based on the analysis, the project recommends:

### 1. Optimize Friday Staffing

Since Friday has the highest order volume, staffing, dough preparation, inventory, and delivery capacity should be increased toward the Thursday–Saturday period.

### 2. Promote Large Pizzas

Since Large pizzas generate almost half of total revenue, Medium-to-Large upselling and promotional offers could provide additional revenue opportunities.

### 3. Use Popular Pizzas as Combo Anchors

Classic Deluxe, Hawaiian, and Pepperoni are among the most frequently ordered pizzas and can be used as strong options for meal deals and combo promotions.

### 4. Promote Chicken Pizzas as Premium Products

Thai Chicken, Barbecue Chicken, and California Chicken are among the strongest revenue performers and could be positioned as premium options or upsells.

### 5. Review Underperforming Pizzas

Brie Carre and other low-performing pizzas should be investigated before deciding whether to reprice, reposition, improve, or remove them from the menu.

These recommendations are based on the analysis presented in the project report.

---

## 📂 Project Structure

```text
Pizza-Sales-Analysis-PowerBI/
│
├── 📊 Pizza_Sales_dashboard.pbix
├── 🗄️ pizza_sales.sql
├── 📁 pizza_sales.csv
├── 📄 Pizza_Sales_Report.docx
├── 📊 Pizza-Sales-Analysis.pptx
└── 📖 README.md
```

> **Note:** If the raw CSV contains licensing or redistribution restrictions, consider excluding it from the public repository and provide instructions for obtaining the dataset instead.

---

## 🔄 Analysis Workflow

```text
Raw Pizza Sales Data
        ↓
     CSV Data
        ↓
   SQL Analysis
        ↓
 KPI & Aggregation Queries
        ↓
 Power BI Data Model
        ↓
 Interactive Dashboard
        ↓
 Business Insights
        ↓
 Recommendations
```

The report explains that the SQL aggregation logic was reproduced against the raw CSV and that the Power BI visuals use the same underlying analytical logic.

---

## 📈 Skills Demonstrated

This project demonstrates practical experience with:

* Data Cleaning & Validation
* SQL Queries
* Aggregate Functions
* `GROUP BY`
* `COUNT`
* `SUM`
* `ROUND`
* Date and time analysis
* KPI Development
* Business Intelligence
* Power BI Dashboard Development
* Data Visualization
* Trend Analysis
* Product Performance Analysis
* Business Recommendations

---

## 📚 Project Documentation

The repository includes a detailed project report explaining the dataset, SQL queries, KPI calculations, dashboard visuals, analysis, findings, methodology, and recommendations.

A PowerPoint presentation is also included as a concise visual summary of the project.

---

## 👨‍💻 Author

**Ranjit Poudel**

Bachelor's graduate — December 2024

GitHub: **[RpRanjit](https://github.com/RpRanjit)**

---

## ⭐ Project Summary

This project demonstrates how raw transactional data can be transformed into meaningful business insights using **SQL and Power BI**. The analysis identifies sales patterns, high-performing products, customer purchasing behavior, and potential areas for business improvement.

**SQL → Analysis → Power BI → Insights → Business Recommendations**
