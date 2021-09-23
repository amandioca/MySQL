CREATE DATABASE db_building_our_life;

USE db_building_our_life;
CREATE TABLE tb_category (
	
    id_category BIGINT AUTO_INCREMENT PRIMARY KEY,
    category VARCHAR (50) NOT NULL
);

USE db_building_our_life;
CREATE TABLE tb_product (
	
    id_product BIGINT AUTO_INCREMENT PRIMARY KEY,
	name_product VARCHAR (30) NOT NULL,
    color VARCHAR (50),
    brand VARCHAR (50) NOT NULL,
    size VARCHAR (50),
    price DECIMAL (10, 2) NOT NULL,
    fk_category BIGINT NOT NULL,
    
    FOREIGN KEY (fk_category) REFERENCES tb_category (id_category)
);

INSERT INTO tb_category (category)
	VALUES
    ("Furniture"),
	("Eletronics"),
    ("Appliances"),
    ("Decor"),
    ("Home Improvement");
    
INSERT INTO tb_product (name_product, color, brand, size, price, fk_category)
	VALUES
    ("TV", "black", "samsung", '65"', 647.99, 2),
    ("Rug", "beige", "My Texas House", "6' x 6'", 113.78, 4),
    ("Sound bar", "black", "TCL", "2.40 x 31.50 x 4.20 Inches", 119.99, 2),
    ("Sofa", "black", "Noble House", "30.00 x 83.25 x 30.25 Inches", 487.24, 1),
    ("Refrigerator", "silver metallic", "General Electric", "36.00 x 35.75 x 69.88 Inches", 3129.99, 3),
    ("Kitchen Faucet", "silver metallic", "Vigo", "12.00 x 11.69 x 22.38 Inches", 209.9, 5);
    
SELECT * FROM tb_product
	WHERE price > 1000;

SELECT * FROM tb_product
	WHERE price BETWEEN 100 AND 500;

SELECT * FROM tb_product
	WHERE name_product LIKE "R%";
    
SELECT category, name_product, brand, price
	FROM tb_category
	INNER JOIN tb_product ON fk_category = id_category
    WHERE category LIKE "E%";