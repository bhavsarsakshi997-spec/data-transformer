DROP TABLE IF EXISTS orders_table1;
DROP TABLE IF EXISTS employees_table;
DROP TABLE IF EXISTS customers_table;

--1 table
CREATE TABLE Customers_table (
customerID INT PRIMARY KEY,
FirstName VARCHAR(50),
LastName VARCHAR(50),
Email VARCHAR(100),
RegistrationDate DATE

);

INSERT INTO customers_table (customerID, FirstName, LastName, Email, RegistrationDate)
VALUES (1,'John', 'Doe', 'john.doe@email.com', '2022-03-15'),
(2,'Jane','Smith','jane.smith@email.com','2021-11-02');

--2 table--

CREATE TABLE Orders_table1 (
OrderID INT PRIMARY KEY ,
CustomerID VARCHAR (50),
OrderDate DATE,
TotalAmount DECIMAL(10, 4)
);

INSERT INTO Orders_table (OrderID, CustomerID, OrderDate, TotalAmount)
VALUES (101, 1, '2023-07-01', 150.50),
(102, 2, '2023-07-03',200.75);

--3 table--
CREATE TABLE Employees_table (
EmployeeID INT PRIMARY KEY,
FirstName VARCHAR(50),
LastName VARCHAR(50),
Department VARCHAR(100),
HireDate DATE,
Salary DECIMAL(10, 2)
);

INSERT INTO Employees_table(EmployeeID, FirstName, LastName, Department, HireDate, Salary)
VALUES (1, 'Mark', 'Johnson', 'Sales','2020-01-15',50000),
(2, 'Susan','Lee','HR','2021-03-20',55000);


SELECT
    c.CustomerID,
    c.FirstName,
    c.LastName,
    c.Email,
    c.RegistrationDate,
    o.OrderID,
    o.OrderDate,
    o.TotalAmount
FROM Orders_table1 AS o
INNER JOIN Customers_table AS c
    ON o.CustomerID = c.CustomerID;

-- Q2. LEFT JOIN

SELECT
    c.CustomerID,
    c.FirstName,
    c.LastName,
    c.Email,
    o.OrderID,
    o.OrderDate,
    o.TotalAmount
FROM Customers_table AS c
LEFT JOIN Orders_table AS o
    ON c.CustomerID = o.CustomerID
ORDER BY c.CustomerID, o.OrderID;

-- Q3. RIGHT JOIN

SELECT
    o.OrderID,
    o.CustomerID,
    o.OrderDate,
    o.TotalAmount,
    c.FirstName,
    c.LastName,
    c.Email
FROM Customers_table AS c
RIGHT JOIN Orders_table AS o
    ON c.CustomerID = o.CustomerID
ORDER BY o.OrderID;

-- Q4. FULL OUTER JOIN

SELECT
    c.CustomerID,
    c.FirstName,
    c.LastName,
    o.OrderID,
    o.OrderDate,
    o.TotalAmount
FROM Customers_table AS c
FULL OUTER JOIN Orders_table AS o
    ON c.CustomerID = o.CustomerID
ORDER BY c.CustomerID, o.OrderID;

-- Q5. SUBQUERY

SELECT
    c.CustomerID,
    c.FirstName,
    c.LastName,
    o.OrderID,
    o.TotalAmount
FROM Customers_table AS c
INNER JOIN Orders_table AS o
    ON c.CustomerID = o.CustomerID
WHERE o.TotalAmount > (
    SELECT AVG(TotalAmount)
    FROM Orders_table
)
ORDER BY o.TotalAmount DESC;
 
-- Q6. SUBQUERY

SELECT
    EmployeeID,
    FirstName,
    LastName,
    Department,
    Salary
FROM Employees_table
WHERE Salary > (
    SELECT AVG(Salary)
    FROM Employees_table
)
ORDER BY Salary DESC;

-- Q7. DATE FUNCTION

SELECT
    OrderID,
    OrderDate,
    EXTRACT(YEAR FROM OrderDate) AS OrderYear,
    EXTRACT(MONTH FROM OrderDate) AS OrderMonth
FROM Orders_table
ORDER BY OrderDate;

-- Q8. DATE DIFFERENCE

SELECT
    OrderID,
    OrderDate,
    CURRENT_DATE AS CurrentDate,
    CURRENT_DATE - OrderDate AS DaysDifference
FROM Orders_table
ORDER BY OrderID;

-- Q9. DATE FORMATTING

SELECT
    OrderID,
    OrderDate,
    TO_CHAR(OrderDate, 'DD-Mon-YYYY') AS FormattedOrderDate
FROM Orders_table
ORDER BY OrderID;

-- Q10. CONCATENATION

SELECT
    CustomerID,
    FirstName,
    LastName,
    CONCAT(FirstName, ' ', LastName) AS FullName
FROM Customers_table
ORDER BY CustomerID;

-- Q11. REPLACE

SELECT
    CustomerID,
    FirstName,
    LastName,
    REPLACE(FirstName, 'John', 'Jonathan') AS UpdatedFirstName
FROM Customers_table
ORDER BY CustomerID;

-- Q12. UPPER / LOWER

SELECT
    CustomerID,
    UPPER(FirstName) AS FirstNameUpper,
    LOWER(LastName) AS LastNameLower
FROM Customers_table
ORDER BY CustomerID;

-- Q13. TRIM

SELECT
    CustomerID,
    TRIM(Email) AS CleanEmail
FROM Customers_table
ORDER BY CustomerID;

-- Q14. WINDOW FUNCTION

SELECT
    OrderID,
    OrderDate,
    TotalAmount,
    SUM(TotalAmount) OVER (
        ORDER BY OrderDate, OrderID
        ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
    ) AS RunningTotal
FROM Orders_table
ORDER BY OrderDate, OrderID;

-- Q15. RANK

SELECT
    OrderID,
    OrderDate,
    TotalAmount,
    RANK() OVER (ORDER BY TotalAmount DESC) AS OrderRank
FROM Orders_table
ORDER BY OrderRank, OrderID;

-- Q16. CASE

SELECT
    OrderID,
    TotalAmount,
    CASE
        WHEN TotalAmount > 1000 THEN 10
        WHEN TotalAmount > 500 THEN 5
        ELSE 0
    END AS DiscountPercent
FROM Orders_table
ORDER BY OrderID;

-- Q17. CASE--

SELECT
    EmployeeID,
    FirstName,
    LastName,
    Salary,
    CASE
        WHEN Salary >= 60000 THEN 'High'
        WHEN Salary >= 40000 THEN 'Medium'
        ELSE 'Low'
    END AS SalaryCategory
FROM Employees_table
ORDER BY Salary DESC;


