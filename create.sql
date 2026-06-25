CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

CREATE TABLE IF NOT EXISTS `invoices` (
	`invoice_id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
	`date` DATE,
	`invoice_n` INTEGER,
	`customer_id` INTEGER,
	`car_id` INTEGER,
	`salesperson_id` INTEGER,
	PRIMARY KEY(`invoice_id`)
);


CREATE TABLE IF NOT EXISTS `salesperson` (
	`salesperson_id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(255),
	`store` VARCHAR(255),
	`staff_id` INTEGER,
	PRIMARY KEY(`salesperson_id`)
);


CREATE TABLE IF NOT EXISTS `cars` (
	`car_id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
	`vin` VARCHAR(255),
	`manofacturer` VARCHAR(255),
	`model` VARCHAR(255),
	`year` YEAR,
	`color` VARCHAR(255),
	PRIMARY KEY(`car_id`)
);


CREATE TABLE IF NOT EXISTS `customers` (
	`customer_id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(255),
	`email` VARCHAR(255),
	`phone` INTEGER,
	`address_id` INTEGER,
	PRIMARY KEY(`customer_id`)
);


CREATE TABLE IF NOT EXISTS `address` (
	`address_id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
	`address` VARCHAR(255),
	`city` VARCHAR(255),
	`state` VARCHAR(255),
	`country` VARCHAR(255),
	`pc` VARCHAR(255),
	PRIMARY KEY(`address_id`)
);


ALTER TABLE `salesperson`
ADD FOREIGN KEY(`salesperson_id`) REFERENCES `invoices`(`salesperson_id`)
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE `cars`
ADD FOREIGN KEY(`car_id`) REFERENCES `invoices`(`car_id`)
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE `customers`
ADD FOREIGN KEY(`customer_id`) REFERENCES `invoices`(`customer_id`)
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE `address`
ADD FOREIGN KEY(`address_id`) REFERENCES `customers`(`address_id`)
ON UPDATE NO ACTION ON DELETE NO ACTION;