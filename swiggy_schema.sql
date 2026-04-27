# Create Database
CREATE DATABASE swiggy_db;
USE swiggy_db;

# Create Tables

CREATE TABLE location (
    location_id VARCHAR(10) PRIMARY KEY,
    location VARCHAR(100),
    city VARCHAR(100),
    state VARCHAR(100)
);

CREATE TABLE restaurant_Records (
    restaurant_id VARCHAR(10) PRIMARY KEY,
    restaurant_Name VARCHAR(100),
    location_id VARCHAR(10),
    
    FOREIGN KEY (location_id)
    REFERENCES location(location_id)
);

CREATE TABLE orders (
    order_id VARCHAR(10) PRIMARY KEY,
    restaurant_id VARCHAR(10),
    order_date DATE,

    FOREIGN KEY (restaurant_id)
	REFERENCES restaurant_records (restaurant_id)
);

CREATE TABLE dish (
	dish_id VARCHAR(10) PRIMARY KEY,
    dish_name VARCHAR(100)
);

CREATE TABLE categories_table (
	category_id VARCHAR(10) PRIMARY KEY,
    category VARCHAR(100) 
);

CREATE TABLE order_items (
    order_items_id VARCHAR(10) PRIMARY KEY,
    order_id VARCHAR(10),
    dish_id VARCHAR(10),
    price DECIMAL(10,2),
    category_id VARCHAR(10),

    FOREIGN KEY (order_id) 
    REFERENCES Orders(order_id),
    
    FOREIGN KEY (dish_id) 
    REFERENCES Dish(dish_id),
    
    FOREIGN KEY (category_id) 
    REFERENCES categories_table(category_id)
);


