-- -----------------------------------------------------
-- Schema book-shop-ecommerce
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `book-shop-ecommerce`;

CREATE SCHEMA `book-shop-ecommerce`;
USE `book-shop-ecommerce` ;

-- -----------------------------------------------------
-- Table `book-shop-ecommerce`.`product_category`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `book-shop-ecommerce`.`product_category` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `category_name` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE=InnoDB
AUTO_INCREMENT = 1;

-- -----------------------------------------------------
-- Table `book-shop-ecommerce`.`product`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `book-shop-ecommerce`.`product` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `sku` VARCHAR(255) DEFAULT NULL,
  `name` VARCHAR(255) DEFAULT NULL,
  `description` VARCHAR(255) DEFAULT NULL,
  `unit_price` DECIMAL(13,2) DEFAULT NULL,
  `image_url` VARCHAR(255) DEFAULT NULL,
  `active` BIT DEFAULT 1,
  `units_in_stock` INT(11) DEFAULT NULL,
   `date_created` DATETIME(6) DEFAULT NULL,
  `last_updated` DATETIME(6) DEFAULT NULL,
  `category_id` BIGINT(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_category` (`category_id`),
  CONSTRAINT `fk_category` FOREIGN KEY (`category_id`) REFERENCES `product_category` (`id`)
) 
ENGINE=InnoDB
AUTO_INCREMENT = 1;


-- -----------------------------------------------------
-- Add sample data
-- -----------------------------------------------------

INSERT INTO product_category(category_name) VALUES ('BOOKS');

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
unit_price, category_id, date_created)
VALUES ('BOOK-HIST-1000', 'First Civilizations', 'The history of first civilizations from 8,000 b.c to year 0', 
'assets/images/products/books/book-elisa-1000.png', 
1, 100, 20.99, 1, Now());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
unit_price, category_id, date_created)
VALUES ('BOOK-HIST-1001', 'The History of Vicking', 
'The history of first civilizations from Scandinavia', 
'assets/images/products/books/book-elisa-1001.png', 1, 100, 25.99, 1, Now());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
unit_price, category_id, date_created)
VALUES ('BOOK-HIST-1002', 'The Huns', 'The history of powerful civilization from past Mongolia', 
'assets/images/products/books/book-elisa-1002.png', 
1, 100, 19.99, 1, Now());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
unit_price, category_id, date_created)
VALUES ('BOOK-HIST-1003', 'The Ancient Egipt', 'Descover the history of this advanced civilization', 
'assets/images/products/books/book-elisa-1003.png', 
1, 100, 14.99, 1, Now());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
unit_price, category_id, date_created)
VALUES ('BOOK-HIST-1004', 'The Roman Empire - The rise and the fall', 'Discover the history of this great empire', 
'assets/images/products/books/book-elisa-1004.png',
1, 100, 20.99, 1, Now());
