# 📊 Restaurant Sales Analysis (SQL Project)

## 📝 Project Overview
This project focuses on analyzing the operational and financial performance of a restaurant using **MySQL**. By querying a dataset of customer orders, I extracted key business metrics to understand customer behavior, menu item popularity, and revenue distribution.

The analysis follows a structured path: from initial data discovery to advanced order segmentation using modern SQL techniques.

## 📂 Dataset Source
The data used in this project is sourced from **Kaggle**:
- **Dataset Link:** [Restaurant Orders Dataset](https://www.kaggle.com/datasets/haseebindata/restaurant-orders)
- **Description:** This dataset contains a collection of orders, including customer names, food items, categories, quantities, prices, and payment methods.

## 📂 Dataset Columns
- **Order ID**: Unique identifier for each transaction.
- **Customer_Name**: Name of the customer.
- **Food_Item**: The specific dish ordered.
- **Category**: Product category (Main, Starter, Dessert).
- **Quantity**: Number of items ordered.
- **Price**: Unit price of the item.
- **Payment_Method**: Payment type (Cash, Credit Card, Online).
- **Order_Time**: Date and timestamp of the order.

## 🎯 Project Objectives & Goals
The primary goal was to transform raw data into actionable business insights. The specific objectives were:
1. **Financial Assessment**: Calculate total revenue and evaluate the financial health of the business.
2. **Customer Profiling**: Understand the volume of unique customers and their purchasing frequency.
3. **Menu Optimization**: Identify high-performing dishes and categories to inform menu design.
4. **Operational Efficiency**: Analyze order sizes to optimize marketing strategies (upselling).

## 📝 Business Questions Solved
I translated business needs into technical queries to solve the following questions:

### Phase 1: Data Exploration
* **What is the total number of orders?** (Using `COUNT(*)`)
* **How many unique customers have placed an order?** (Using `COUNT(DISTINCT)`)
* **What are the unique food categories in the menu?** (Using `DISTINCT`)
* **What is the time range covered by the dataset?** (Using `MIN` and `MAX` on dates)

### Phase 2: Sales & KPIs
* **What is the total revenue generated?** (Calculated as `SUM(Price * Quantity)`)
* **What is the Average Order Value (AOV)?** (Using `AVG`)
* **How many items are sold on average per transaction?**

### Phase 3: Product Performance
* **Which food items are the "Top Sellers" by quantity?** (Using `GROUP BY` and `ORDER BY`)
* **Which category (Main, Dessert, Starter) generates the most revenue?**

### Phase 4: Advanced Segmentation
* **How are orders distributed by size?** I used a **CTE (Common Table Expression)** and **CASE WHEN** logic to classify orders into:
    * **Small Orders**: Total < $20
    * **Medium Orders**: Total $20 - $50
    * **Large Orders**: Total > $50

## 🛠️ Tech Stack
- **Database**: MySQL
- **Language**: SQL (Standard SQL, CTEs, CASE WHEN)
- **Tool**: MySQL Workbench
