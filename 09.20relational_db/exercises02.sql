CREATE DATABASE db_ecommerce;

/*USE db_ecommerce;
CREATE TABLE tb_price (
	
    price DECIMAL (4, 2) NOT NULL,
    brand VARCHAR (20),    
    
    PRIMARY KEY (price)
    
);

INSERT INTO tb_price (price, brand) VALUES (20;*/

USE db_ecommerce;
CREATE TABLE tb_products (
	
    ref INT AUTO_INCREMENT NOT NULL,
    brand VARCHAR(20) NOT NULL,
    category VARCHAR (20) NOT NULL,
    color VARCHAR (20),
	material VARCHAR (20),
    price DECIMAL (8 , 2),
    
	PRIMARY KEY (ref)
    
    );
    
ALTER TABLE tb_products AUTO_INCREMENT = 789761;

SELECT * FROM tb_products;

INSERT INTO tb_products (brand, category, color, material, price) VALUES ("Converse", "Shoes", "All back", "Canvas", 239.90);
INSERT INTO tb_products (brand, category, color, material, price) VALUES ("Converse", "Shoes", "Black", "Leather", 346.90);
INSERT INTO tb_products (brand, category, color, material, price) VALUES ("Converse", "T-shirt", "White", "Cotton", 114.90);
INSERT INTO tb_products (brand, category, color, material, price) VALUES ("Nike", "Bag", "Black", "Leather", 459.90);
INSERT INTO tb_products (brand, category, color, material, price) VALUES ("Nike", "Shoes", "Black", "", 398.90);
INSERT INTO tb_products (brand, category, color, material, price) VALUES ("Converse", "T-shirt", "Black", "Linen", 114.90);

UPDATE tb_products SET price = 564.90 WHERE ref = 789765;

SELECT * FROM tb_products WHERE price > 500;
SELECT * FROM tb_products WHERE price < 500;

SELECT * FROM tb_products WHERE brand LIKE "%Conv%"; #FILTRA CONVERSE
SELECT * FROM tb_products WHERE brand LIKE "%Ni%"; #FILTRA NIKE