-- Customers Table
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    customer_email VARCHAR(100) NOT NULL,
    customer_city VARCHAR(50) NOT NULL
);

-- Products Table
CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    category VARCHAR(50) NOT NULL,
    unit_price DECIMAL(10,2) NOT NULL
);

-- Sales Representatives Table
CREATE TABLE Sales_Representatives (
    sales_rep_id INT PRIMARY KEY,
    sales_rep_name VARCHAR(100) NOT NULL
);

-- Orders Table
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT NOT NULL,
    sales_rep_id INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (sales_rep_id) REFERENCES Sales_Representatives(sales_rep_id)
);

-- Order Items Table
CREATE TABLE Order_Items (
    order_item_id INT PRIMARY KEY,
    order_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

-- Insert into Customers
INSERT INTO Customers VALUES
(1, 'Ankit Sharma', 'ankit@gmail.com', 'Mumbai'),
(2, 'Priya Singh', 'priya@gmail.com', 'Delhi'),
(3, 'Rahul Verma', 'rahul@gmail.com', 'Mumbai'),
(4, 'Sneha Patel', 'sneha@gmail.com', 'Ahmedabad'),
(5, 'Amit Kumar', 'amit@gmail.com', 'Bangalore');

-- Insert into Products
INSERT INTO Products VALUES
(101, 'Laptop', 'Electronics', 55000),
(102, 'Smartphone', 'Electronics', 20000),
(103, 'Shoes', 'Clothing', 3000),
(104, 'Watch', 'Accessories', 5000),
(105, 'Headphones', 'Electronics', 2500),
(106, 'Tablet', 'Electronics', 15000);

-- Insert into Sales_Representatives
INSERT INTO Sales_Representatives VALUES
(201, 'Rohit Mehta'),
(202, 'Neha Kapoor'),
(203, 'Vikas Jain'),
(204, 'Pooja Shah'),
(205, 'Arjun Nair');

-- Insert into Orders
INSERT INTO Orders VALUES
(301, 1, 201, '2024-01-10'),
(302, 2, 202, '2024-01-12'),
(303, 3, 203, '2024-01-15'),
(304, 1, 204, '2024-01-18'),
(305, 5, 205, '2024-01-20');

-- Insert into Order_Items
INSERT INTO Order_Items VALUES
(401, 301, 101, 1),
(402, 302, 102, 2),
(403, 303, 103, 3),
(404, 304, 104, 1),
(405, 305, 105, 2);