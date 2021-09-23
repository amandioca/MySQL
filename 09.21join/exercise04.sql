CREATE DATABASE db_fruit_city;

USE db_fruit_city;
CREATE TABLE tb_category (

    id_category BIGINT AUTO_INCREMENT PRIMARY KEY,
    category VARCHAR (40) NOT NULL
	
);

USE db_fruit_city;
CREATE TABLE tb_product ( 
	
    id_product BIGINT AUTO_INCREMENT PRIMARY KEY,
    name_fruit VARCHAR (30) NOT NULL,
    color VARCHAR (30),
    price DECIMAL (4, 2) NOT NULL,
    fk_category BIGINT NOT NULL,

	FOREIGN KEY (fk_category) REFERENCES tb_category (id_category)
);    

INSERT INTO tb_category (category)
	VALUES
    ("dry fruit"),
    ("fleshy fruit"),
    ("citrus fruit"),
    ("exotic fruit"),
    ("tropical fruit");
    
INSERT INTO tb_product (name_fruit, color, price, fk_category)
	VALUES
    ("orange", "orange", 20, 3),
    ("lemon", "green", 5, 3),
    ("pitaya", "pink/ white", 65, 4),
    ("pineapple", "yellow", 5, 5),
    ("watermelon", "green/red", 10, 1),
    ("cashew nut", "beige", 90, 2); 

SELECT * FROM tb_product
	WHERE price > 50;
	
SELECT * FROM tb_product
	WHERE price BETWEEN 3 AND 60;
    
SELECT * FROM tb_product 
	WHERE name_fruit LIKE "%c%";

SELECT category, name_fruit, price
	FROM tb_category
    INNER JOIN tb_product ON fk_category = id_category
    WHERE category = "citrus fruit";