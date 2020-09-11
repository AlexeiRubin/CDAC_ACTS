-- Prepare CREATE TABLE STATEMENT based on your understanding of data types and width of mentioned entities.

-- NOTE : Please do not enforce any constraints as of now


CREATE TABLE IF NOT EXISTS manufacturer
(
	manufacturer_code VARCHAR(10) NOT NULL,
	manufacturer_name VARCHAR(30),
	manufacturer_details VARCHAR(50),
	PRIMARY KEY(manufacturer_code)
);

CREATE TABLE IF NOT EXISTS model
(
	model_code VARCHAR(10) NOT NULL,
	daily_hire_rate DECIMAL(5, 2),
	model_name VARCHAR(20),
	PRIMARY KEY(model_code)
);

CREATE TABLE IF NOT EXISTS vehicle
(
	reg_number VARCHAR(10) NOT NULL,
	current_mileage DECIMAL(3, 2),
	daily_hire_rate DECIMAL(5, 2),
	date_mot_due DATE,
	engine_size DECIMAL(3, 1),
	PRIMARY KEY(reg_number)
);

CREATE TABLE IF NOT EXISTS vehicle_category
(
	vehicle_category_code VARCHAR(10) NOT NULL,
	vehicle_category_description VARCHAR(50),
	PRIMARY KEY(vehicle_category_code)
);

CREATE TABLE IF NOT EXISTS customer
(
	customer_id VARCHAR(10) NOT NULL,
	customer_name VARCHAR(30),
	customer_details VARCHAR(50),
	gender CHAR(1),
	email_address VARCHAR(30),
	phone_number VARCHAR(20),
	address_line_1 VARCHAR(30),
	address_line_2 VARCHAR(30),
	address_line_3 VARCHAR(30),
	town VARCHAR(30),
	county VARCHAR(30),
	country VARCHAR(30),
	PRIMARY KEY(customer_id)
);

CREATE TABLE IF NOT EXISTS booking
(
	booking_id INT UNSIGNED NOT NULL,
	date_from DATE,
	date_to DATE,
	confirmation_letter_sent_yn BOOLEAN,
	payment_received_yn BOOLEAN,
	PRIMARY KEY(booking_id)
);

CREATE TABLE IF NOT EXISTS booking_status
(
	booking_status_code VARCHAR(10) NOT NULL,
	booking_status_description VARCHAR(30),
	PRIMARY KEY(booking_status_code)
);