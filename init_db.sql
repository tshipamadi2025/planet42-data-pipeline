CREATE DATABASE IF NOT EXISTS planet42;

USE planet42;

CREATE TABLE IF NOT EXISTS transactions (
    transaction_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id VARCHAR(50),
    product_id VARCHAR(50),
    transaction_date DATE,
    transaction_amount DECIMAL(10,2),
    transaction_type VARCHAR(50),
    product_category VARCHAR(50),
    transaction_category ENUM('low', 'medium', 'high'),
    total_customer_value DECIMAL(10,2),
    last_updated TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE INDEX idx_transaction_date ON transactions (transaction_date);
