-- Drop tables if already exist
DROP TABLE IF EXISTS fact_sales;
DROP TABLE IF EXISTS dim_date;
DROP TABLE IF EXISTS dim_store;
DROP TABLE IF EXISTS dim_product;

-- Dimension: Date
CREATE TABLE dim_date (
    date_id INTEGER PRIMARY KEY,
    full_date DATE NOT NULL,
    month INTEGER,
    year INTEGER
);

-- Dimension: Store
CREATE TABLE dim_store (
    store_id INTEGER PRIMARY KEY,
    store_name TEXT,
    city TEXT
);

-- Dimension: Product
CREATE TABLE dim_product (
    product_id INTEGER PRIMARY KEY,
    product_name TEXT,
    category TEXT
);

-- Fact Table
CREATE TABLE fact_sales (
    sales_id INTEGER PRIMARY KEY,
    date_id INTEGER,
    store_id INTEGER,
    product_id INTEGER,
    quantity INTEGER,
    total_amount DECIMAL(10,2),

    FOREIGN KEY (date_id) REFERENCES dim_date(date_id),
    FOREIGN KEY (store_id) REFERENCES dim_store(store_id),
    FOREIGN KEY (product_id) REFERENCES dim_product(product_id)
);

-- Insert into dim_date (cleaned dates)
INSERT INTO dim_date VALUES
(1, '2023-01-01', 1, 2023),
(2, '2023-01-15', 1, 2023),
(3, '2023-02-10', 2, 2023),
(4, '2023-02-20', 2, 2023),
(5, '2023-03-05', 3, 2023);

-- Insert into dim_store (standardized city names)
INSERT INTO dim_store VALUES
(1, 'Store A', 'Mumbai'),
(2, 'Store B', 'Delhi'),
(3, 'Store C', 'Bangalore');

-- Insert into dim_product (fixed category casing)
INSERT INTO dim_product VALUES
(1, 'Laptop', 'Electronics'),
(2, 'Shirt', 'Clothing'),
(3, 'Rice', 'Groceries'),
(4, 'Phone', 'Electronics');

-- Insert into fact_sales (cleaned data)
INSERT INTO fact_sales VALUES
(1, 1, 1, 1, 2, 100000),
(2, 2, 2, 2, 5, 5000),
(3, 3, 3, 3, 10, 2000),
(4, 4, 1, 4, 3, 60000),
(5, 5, 2, 1, 1, 50000),
(6, 1, 3, 2, 4, 4000),
(7, 2, 1, 3, 6, 1200),
(8, 3, 2, 4, 2, 40000),
(9, 4, 3, 1, 1, 50000),
(10, 5, 1, 2, 3, 3000);