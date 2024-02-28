CREATE TABLE customers (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(25) NOT NULL,
    last_name VARCHAR(25) NOT NULL
);

CREATE TABLE bike_models (
    code VARCHAR(10) PRIMARY KEY,
    name VARCHAR(25) NOT NULL UNIQUE,
    base_cost NUMERIC(10, 2) NOT NULL
);

CREATE TABLE orders (
    id SERIAL PRIMARY KEY,
    customer_id SERIAL NOT NULL REFERENCES customers,
    order_date TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE bike_orders (
    id SERIAL PRIMARY KEY,
    bike_code VARCHAR(10) NOT NULL REFERENCES bike_models,
    order_id SERIAL NOT NULL REFERENCES orders,
    note TEXT NOT NULL DEFAULT '',
    price_sold_for NUMERIC(10, 2) NOT NULL
);