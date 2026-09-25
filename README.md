# 📊 Data Transformer — SQL Data Analysis Project

> **A professional PostgreSQL project for data transformation, reporting, relational analysis, and advanced SQL operations.**

---

##Video link:
https://drive.google.com/file/d/18ARk4pundYd4_cnNk7-p-LMekeVAnUl4/view?usp=drive_link

## 📌 Project Overview

**Data Transformer** is a practical SQL database project developed to demonstrate how relational data can be stored, connected, transformed, analyzed, and presented for business reporting.

The project simulates a small **Corporate Data Analysis System** with three core areas:

1. **Customer Information Management**
2. **Sales Transaction Processing**
3. **Employee Performance Analysis**

The project focuses on practical SQL operations such as **JOINs, Subqueries, Date Functions, String Functions, Window Functions, Ranking, and CASE Expressions**.

The main goal is not only to retrieve data, but to transform raw database records into meaningful information that can be used for reporting and analysis.

---
<img width="1536" height="1024" alt="ChatGPT Image Sep 21, 2026, 11_47_23 AM" src="https://github.com/user-attachments/assets/5337ef84-f631-4246-a884-d63d1e0b8109" />


# 🎯 Project Objective

The objective of this project is to build practical knowledge of SQL by working with related business data and solving real-world analytical requirements.

The project demonstrates how SQL can be used to:

- Connect data from multiple tables
- Retrieve related customer and order information
- Find records using conditions and subqueries
- Analyze average values
- Extract and format dates
- Clean and transform text
- Calculate running totals
- Rank business transactions
- Apply conditional business rules
- Categorize employee salaries
- Produce structured results for reporting

---

# 🏢 Business Scenario

The project represents a simple company database.

A company needs to manage:

### 👥 Customers
Customer information such as name, email, and registration date.

### 🛒 Orders
Customer purchase information including order date and total amount.

### 👨‍💼 Employees
Employee information including department, hiring date, and salary.

These tables allow the project to demonstrate different types of SQL analysis in a realistic business environment.

---

<img width="1536" height="1024" alt="21d1be69-7961-4dbf-9010-03ee034a8c77" src="https://github.com/user-attachments/assets/b3e4763c-f80c-45c4-8239-9ccc0928cbec" />


# ✨ Key Features

- ✅ Relational database design
- ✅ Primary key and foreign key implementation
- ✅ Customer and order relationship
- ✅ INNER JOIN
- ✅ LEFT JOIN
- ✅ RIGHT JOIN
- ✅ FULL OUTER JOIN
- ✅ Subqueries
- ✅ Aggregate functions
- ✅ Date extraction
- ✅ Date difference calculation
- ✅ Date formatting
- ✅ String concatenation
- ✅ String replacement
- ✅ Uppercase and lowercase conversion
- ✅ Text trimming
- ✅ Running total using window functions
- ✅ Order ranking using `RANK()`
- ✅ Discount calculation using `CASE`
- ✅ Salary categorization using `CASE`
- ✅ PostgreSQL-compatible SQL
- ✅ Clear and reusable project structure

---

# 🛠️ Technology Stack

| Technology | Purpose |
|---|---|
| PostgreSQL | Database Management System |
| pgAdmin | SQL development and database management |
| SQL | Data creation, transformation, and analysis |
| GitHub | Project version control and submission |
| Markdown | Project documentation |

---

# 🗂️ Database Structure

The project contains three main tables:

```text
<img width="1024" height="1536" alt="ChatGPT Image Sep 21, 2026, 11_13_13 AM" src="https://github.com/user-attachments/assets/4e7ad01b-658c-4006-bb99-37e2c314cbd6" />

---

# 🔗 Database Relationships

## Customers → Orders

The `Customers` and `Orders` tables have a **one-to-many relationship**.

One customer can place multiple orders.

The relationship is created through:

```text
Customers.CustomerID
        ↓
Orders.CustomerID
```

`Customers.CustomerID` is the **Primary Key**.

`Orders.CustomerID` is the **Foreign Key**.

This relationship allows customer information to be combined with order information using SQL JOINs.

---

# 📋 Table Details

## 1. Customers Table

The Customers table stores customer registration and contact information.

| Column | Type | Description |
|---|---|---|
| CustomerID | INT | Unique customer ID |
| FirstName | VARCHAR(50) | Customer first name |
| LastName | VARCHAR(50) | Customer last name |
| Email | VARCHAR(100) | Customer email |
| RegistrationDate | DATE | Registration date |

### Sample Records

| CustomerID | FirstName | LastName | Email | RegistrationDate |
|---:|---|---|---|---|
| 1 | John | Doe | john.doe@email.com | 2022-03-15 |
| 2 | Jane | Smith | jane.smith@email.com | 2021-11-02 |

---

## 2. Orders Table

The Orders table stores sales transaction information.

| Column | Type | Description |
|---|---|---|
| OrderID | INT | Unique order ID |
| CustomerID | INT | Related customer ID |
| OrderDate | DATE | Date of order |
| TotalAmount | DECIMAL(10,2) | Total order value |

### Sample Records

| OrderID | CustomerID | OrderDate | TotalAmount |
|---:|---:|---|---:|
| 101 | 1 | 2023-07-01 | 150.50 |
| 102 | 2 | 2023-07-03 | 200.75 |

---

## 3. Employees Table

The Employees table stores employee performance-related information.

| Column | Type | Description |
|---|---|---|
| EmployeeID | INT | Unique employee ID |
| FirstName | VARCHAR(50) | Employee first name |
| LastName | VARCHAR(50) | Employee last name |
| Department | VARCHAR(50) | Employee department |
| HireDate | DATE | Hiring date |
| Salary | DECIMAL(10,2) | Employee salary |

### Sample Records

| EmployeeID | FirstName | LastName | Department | HireDate | Salary |
|---:|---|---|---|---|---:|
| 1 | Mark | Johnson | Sales | 2020-01-15 | 50000.00 |
| 2 | Susan | Lee | HR | 2021-03-20 | 55000.00 |

---

# 💰 Why DECIMAL(10,2)?

Financial values such as salary and order amount use:

```sql
DECIMAL(10,2)
```

Here:

- `10` = maximum total number of digits
- `2` = number of digits after the decimal point

For example:

```text
50000.00
150.50
55000.75
```

Two decimal places are appropriate for currency-related values.

---

# 🧩 SQL Operations Covered

The project contains **17 practical SQL tasks**.

| Q | SQL Concept | Purpose |
|---:|---|---|
| 1 | INNER JOIN | Combine matching orders and customers |
| 2 | LEFT JOIN | Display all customers with their orders |
| 3 | RIGHT JOIN | Display all orders with customer details |
| 4 | FULL OUTER JOIN | Display all matching and non-matching records |
| 5 | Subquery + AVG | Find orders above average |
| 6 | Subquery + AVG | Find employees above average salary |
| 7 | EXTRACT | Extract year and month |
| 8 | Date Arithmetic | Calculate days between dates |
| 9 | TO_CHAR | Format dates |
| 10 | CONCAT | Create full names |
| 11 | REPLACE | Replace text |
| 12 | UPPER / LOWER | Change text case |
| 13 | TRIM | Clean unnecessary spaces |
| 14 | Window Function | Calculate running total |
| 15 | RANK | Rank orders by amount |
| 16 | CASE | Calculate discount category |
| 17 | CASE | Categorize employee salaries |

---

# 🔎 SQL Analysis Modules

## Module 1 — Relational Data Analysis

Questions 1–4 focus on JOIN operations.

These queries demonstrate how information stored in separate tables can be combined.

### Covered JOINs

```text
INNER JOIN
LEFT JOIN
RIGHT JOIN
FULL OUTER JOIN
```

This is useful when business information is distributed across multiple related tables.

---

## Module 2 — Advanced Filtering and Subqueries

Questions 5–6 use subqueries.

The project compares individual values against calculated averages.

Examples:

- Orders greater than average order amount
- Employees earning more than average salary

This demonstrates how SQL can use the result of one query inside another query.

---

## Module 3 — Date Transformation

Questions 7–9 work with dates.

The project demonstrates:

- Extracting year
- Extracting month
- Calculating date differences
- Formatting dates into readable formats

Example:

```text
2023-07-01
      ↓
01-Jul-2023
```

This type of transformation is useful in reports and dashboards.

---

## Module 4 — String Transformation

Questions 10–13 focus on text manipulation.

The project demonstrates:

- Combining names
- Replacing text
- Uppercase conversion
- Lowercase conversion
- Removing unnecessary spaces

These operations are useful for data cleaning and report preparation.

---

## Module 5 — Analytical Window Functions

Question 14 calculates a running total.

Example:

```text
Order Amount     Running Total
--------------------------------
150.50           150.50
200.75           351.25
```

The individual order rows remain visible while the cumulative value is calculated.

---

## Module 6 — Ranking

Question 15 uses `RANK()` to order transactions based on their total amount.

For example:

```text
Highest Amount → Rank 1
Next Amount    → Rank 2
Next Amount    → Rank 3
```

This can be useful for identifying high-value transactions.

---

## Module 7 — Business Rules with CASE

Questions 16 and 17 demonstrate conditional business logic.

### Discount Rule

```text
TotalAmount > 1000 → 10%
TotalAmount > 500  → 5%
Otherwise          → 0%
```

### Salary Category

```text
Salary >= 60000 → High
Salary >= 40000 → Medium
Salary < 40000  → Low
```

These rules convert raw numerical values into meaningful business categories.

---

# 📊 Expected Output Examples

## JOIN Output

The INNER JOIN combines customer and order information:

| Customer | Order | Amount |
|---|---:|---:|
| John Doe | 101 | 150.50 |
| Jane Smith | 102 | 200.75 |

---

## Average Order Analysis

For the supplied sample orders:

```text
150.50
200.75
```

Average:

```text
175.625
```

Therefore, the order above the average is:

```text
Order 102 → 200.75
```

---

## Average Salary Analysis

For:

```text
50000.00
55000.00
```

Average salary:

```text
52500.00
```

The employee above average is:

```text
Susan Lee → 55000.00
```

---

## Running Total Example

| OrderID | TotalAmount | RunningTotal |
|---:|---:|---:|
| 101 | 150.50 | 150.50 |
| 102 | 200.75 | 351.25 |

---

## Ranking Example

| OrderID | TotalAmount | Rank |
|---:|---:|---:|
| 102 | 200.75 | 1 |
| 101 | 150.50 | 2 |

---
## 17 Queries output image

(1) <img width="1376" height="315" alt="image" src="https://github.com/user-attachments/assets/aaddddbd-1448-4dc1-b61d-727121d57588" />

(2) <img width="1207" height="341" alt="image" src="https://github.com/user-attachments/assets/e7b28aaf-f9ab-4020-acdf-0741d24ab78f" />

(3) <img width="1221" height="320" alt="image" src="https://github.com/user-attachments/assets/4695946a-823d-48a7-ab1c-9446fc2df351" />

(4) <img width="995" height="347" alt="image" src="https://github.com/user-attachments/assets/d5ed2995-aec1-4627-b205-7c3ecba48478" />

(5) <img width="865" height="170" alt="image" src="https://github.com/user-attachments/assets/d0e0243c-99d1-4ba3-b4ea-3710f998c2c8" />

(6) <img width="572" height="317" alt="image" src="https://github.com/user-attachments/assets/1c15c0f4-41a1-46d7-b588-b3e1288330c2" />

(7) <img width="622" height="317" alt="image" src="https://github.com/user-attachments/assets/9dd839e0-5e5d-4106-b54d-f7f24671191c" />

(8) <img width="510" height="316" alt="image" src="https://github.com/user-attachments/assets/56586b2b-83a2-4190-a0d2-723a7a866cfe" />

(9) <img width="765" height="282" alt="image" src="https://github.com/user-attachments/assets/38b63c1b-644c-4c2f-8c73-bd72201d14ac" />

(10) <img width="812" height="291" alt="image" src="https://github.com/user-attachments/assets/5d5fdfb9-e5c3-4760-a66e-0a1e0240caef" />

(11) <img width="520" height="277" alt="image" src="https://github.com/user-attachments/assets/d79311f0-cb19-45ca-9e38-bfc727250e8c" />

(12) <img width="435" height="285" alt="image" src="https://github.com/user-attachments/assets/1a4b474e-2e40-40e1-af28-d7e2697a9f40" />

(13) <img width="612" height="316" alt="image" src="https://github.com/user-attachments/assets/96c74fc1-34ca-4229-b476-37bb2d952883" />

(14) <img width="592" height="311" alt="image" src="https://github.com/user-attachments/assets/508ce9fc-ab70-4b79-9be2-e73c0f8b4c29" />

(15) <img width="535" height="320" alt="image" src="https://github.com/user-attachments/assets/ae93336e-79da-42c6-9884-4931a6aaef44" />

(16) <img width="937" height="282" alt="image" src="https://github.com/user-attachments/assets/bb870f6f-5c21-4790-80ad-8326bc2a4d61" />

# 📈 Data Transformation Flow

```text
                 RAW DATABASE DATA
                         │
                         ▼
              ┌─────────────────────┐
              │     SQL QUERIES     │
              └──────────┬──────────┘
                         │
          ┌──────────────┼──────────────┐
          ▼              ▼              ▼
       JOINs         Subqueries      Functions
          │              │              │
          └──────────────┼──────────────┘
                         ▼
                Data Transformation
                         │
                         ▼
                  Analysis Results
                         │
                         ▼
                   Business Report
```

---

# 🌟 Advantages

### 1. Practical SQL Learning

The project covers practical SQL concepts instead of only basic SELECT statements.

### 2. Relational Database Understanding

The project demonstrates how different tables are connected through primary and foreign keys.

### 3. Data Transformation

Raw values can be converted into useful formats for reporting.

### 4. Business-Oriented Analysis

The queries represent realistic requirements such as order analysis, salary analysis, ranking, and discounts.

### 5. Advanced SQL Concepts

The project includes window functions, subqueries, JOINs, ranking, and conditional logic.

### 6. Reusable Structure

The SQL script can be extended with more customers, orders, and employees.

### 7. Easy to Maintain

The database is separated into logical tables rather than storing all information in one large table.

### 8. Suitable for Reporting

The output generated by the queries can be used as a foundation for reports and dashboards.

---

# ⚠️ Limitations / Disadvantages

### 1. Small Sample Dataset

The current project uses a limited amount of sample data, so it does not represent a large production database.

### 2. Limited Business Tables

Only three major tables are included.

A real company system may also require:

- Products
- Departments
- Payments
- Suppliers
- Order Details
- Inventory
- Addresses

### 3. Basic Security

The project focuses on SQL analysis and does not implement authentication, authorization, or advanced database security.

### 4. No User Interface

The project is database-focused and does not include a web or desktop interface.

### 5. Static Business Rules

Discount and salary categories are based on predefined assumptions.

### 6. No Automated Dashboard

The project produces SQL results but does not automatically create a visualization dashboard.

---

# 🚀 Future Scope

The project can be extended into a complete business analytics system.

Possible improvements include:

- Add Products table
- Add OrderDetails table
- Add Payments table
- Add Departments table
- Add Inventory management
- Add employee departments
- Add customer purchase history
- Add monthly sales reports
- Add sales performance reports
- Add stored procedures
- Add views
- Add indexes for performance
- Add constraints and validation
- Add database security
- Connect PostgreSQL with Python
- Create dashboards using Power BI or Tableau
- Build a web application
- Add automated reporting

---

# 🧪 Testing Strategy

The project can be tested using the following steps:

### Table Testing

Verify:

```sql
SELECT * FROM Customers;
SELECT * FROM Orders;
SELECT * FROM Employees;
```

### Relationship Testing

Verify that:

```text
Orders.CustomerID
```

correctly references:

```text
Customers.CustomerID
```

### Query Testing

Run each query separately and verify that the result matches the expected business requirement.

### Data Type Testing

Ensure that related key columns use compatible data types.

For example:

```text
Customers.CustomerID → INT
Orders.CustomerID    → INT
```

This prevents JOIN errors caused by incompatible data types.

---

# ▶️ How to Run the Project

## Step 1 — Install PostgreSQL

Install PostgreSQL and pgAdmin if they are not already installed.

## Step 2 — Open pgAdmin

Open pgAdmin and connect to your PostgreSQL server.

## Step 3 — Select Database

Select the database where the project should be created.

## Step 4 — Open Query Tool

Open:

```text
Database
   ↓
Query Tool
```

## Step 5 — Run SQL File

Open:

```text
data_transformer.sql
```

Run the table creation and sample-data sections.

## Step 6 — Verify Tables

Confirm that these tables exist:

```text
Customers
Orders
Employees
```

## Step 7 — Execute Questions

Run Q1 to Q17 separately to check each output.

## Step 8 — Capture Results

Take screenshots of the query and result for project documentation if required.

## Step 9 — Upload to GitHub

Upload:

```text
data_transformer.sql
README.md
screenshots/
```

---

# 📝 Assumptions

The project uses the following business assumptions:

### Discount Assumption

```text
TotalAmount > 1000 → 10% discount
TotalAmount > 500  → 5% discount
Otherwise          → 0% discount
```

### Salary Category Assumption

```text
Salary >= 60000 → High
Salary >= 40000 → Medium
Salary < 40000  → Low
```

These assumptions are documented because the assignment allows suitable assumptions where required.

---

# 🔐 Data Integrity

The project uses database constraints to maintain data quality.

### Primary Key

Each table has a unique identifier.

```text
Customers → CustomerID
Orders    → OrderID
Employees → EmployeeID
```

### Foreign Key

Orders are connected to customers using:

```text
Orders.CustomerID
        ↓
Customers.CustomerID
```

### NOT NULL

Important customer and employee name fields are required.

### Compatible Data Types

Related `CustomerID` columns use `INT` so that JOIN comparisons work correctly in PostgreSQL.

---

# 💡 Why This Project Is Useful

This project demonstrates a complete progression from raw database records to meaningful analytical information:

```text
Database Design
       ↓
Data Storage
       ↓
Relationships
       ↓
Data Retrieval
       ↓
Data Transformation
       ↓
Data Analysis
       ↓
Business Rules
       ↓
Reporting
```

It therefore provides a practical foundation for SQL-based data analysis and reporting.

---

# 🎓 Learning Outcomes

After completing this project, the learner should be able to:

- Create relational database tables
- Define primary keys
- Define foreign keys
- Understand one-to-many relationships
- Use different JOIN types
- Write subqueries
- Use aggregate functions
- Work with date values
- Format date values
- Manipulate strings
- Use window functions
- Calculate running totals
- Rank records
- Apply conditional logic
- Create business categories
- Prepare SQL results for reporting
- Organize a SQL project for GitHub

---

# 📌 Project Summary

**Data Transformer** is a PostgreSQL-based SQL project that demonstrates how database information can be transformed into useful analytical results.

The project combines customer information, sales transactions, and employee information to demonstrate a wide range of SQL techniques.

The final solution provides a structured and practical example of:

```text
JOINs
+
Subqueries
+
Date Functions
+
String Functions
+
Window Functions
+
Ranking
+
CASE Expressions
=
Data Transformation & Analysis
```

---

# 📄 Project Deliverables

The final project should contain:

- `data_transformer.sql`
- `README.md`
- Query result screenshots
- GitHub repository


## ⭐ End of Project

**Data Transformer — SQL Data Analysis Project**
