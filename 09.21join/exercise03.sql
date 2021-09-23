CREATE DATABASE db_drugstore_of_good;

USE db_drugstore_of_good;
CREATE TABLE tb_category (
	
    id_category BIGINT AUTO_INCREMENT,
    products_types VARCHAR (20) NOT NULL,
	
    PRIMARY KEY (id_category)
    
);
    
USE db_drugstore_of_good;
CREATE TABLE tb_products (
	
    id_products BIGINT AUTO_INCREMENT,
	name_product VARCHAR (50) NOT NULL,
    brand VARCHAR (40) NOT NULL,
    qty BIGINT (10),
    price DECIMAL (4, 2) NOT NULL,
    fk_products BIGINT NOT NULL,
    
    PRIMARY KEY (id_products),
    FOREIGN KEY (fk_products) REFERENCES tb_category (id_category)
    
);

INSERT INTO tb_category (products_types)
	VALUES
    ("Medicines"),
    ("Beauty & Hygiene"),
    ("Home Care"),
    ("Health and Wellness");
    
INSERT INTO tb_products (name_product, brand, qty, price, fk_products)
	VALUES
    ("Doril Enxaqueca", "doril", 18, 33.3, 1),
    ("Gatorade", "Gatorade", 1, 7.5, 4),
    ("Buscopan", "Boehringer Ingelheim", 20, 13.9, 1),
    ("Intimate Soap", "Intimus", 2, 27.9, 2),
    ("Allegra", "Sonofi Aventis", 10, 22.8, 1),
    ("Band-aid Ultra Protection", "Johnson's", 15, 11.9, 3);
    
SELECT * FROM tb_products
	WHERE price > 20;
    
SELECT * FROM tb_products
	WHERE price BETWEEN 10 AND 20;
    
SELECT * FROM tb_products
	WHERE name_product LIKE "B%";
    
SELECT products_types, name_product, qty, price
	FROM tb_category
    INNER JOIN tb_products ON fk_products = id_category
    WHERE products_types = "medicines";
    