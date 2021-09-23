CREATE DATABASE db_pizzeria_cool;

USE db_pizzeria_cool;
CREATE TABLE tb_category (
	
    id_category BIGINT AUTO_INCREMENT,
	flavor_type VARCHAR (20) NOT NULL,
    flavor_diet VARCHAR (20) NOT NULL,
    
    PRIMARY KEY (id_category)
    
);
    
USE db_pizzeria_cool;
CREATE TABLE tb_pizza (
	
    id_pizza BIGINT AUTO_INCREMENT,
	`name` VARCHAR (20) NOT NULL,
	ingredients VARCHAR (100) NOT NULL,
    size VARCHAR (10) NOT NULL,
    price DECIMAL (5, 2) NOT NULL,
    addition_size DECIMAL (4, 2) NULL,
    fk_pizza BIGINT,
	
    UNIQUE (`name`),
    
    PRIMARY KEY (id_pizza),
    FOREIGN KEY (fk_pizza) REFERENCES tb_category (id_category)
	
);
   
INSERT INTO tb_category (flavor_type, flavor_diet)
	VALUES 
    ("Salty", "Vegan"),
    ("Sweet", "Vegan" ),
    ("Salty", "Vegetarian"),
    ("Sweet", "Vegetarian"),
    ("Salty", "Traditional"),
    ("Sweet", "Traditional");

SELECT * FROM tb_category;
    
INSERT INTO tb_pizza (`name`, ingredients, size, price, addition_size, fk_pizza)
	VALUES
    ("Calabresa", "Calabresa vegan, purple Onion and catupiry, Italian cuisine", "M", 34.9, 5, 1),
    ("Chocolate", "Chocolate, M&M's or sprinkles and Brazilian cuisine", "B", 24.9, 10, 2),
    ("Guava with Cheese", "Guava, Cheese of Minas and Brazilian cuisine", "S", 24.9, 0, 6),
    ("Escarole", "Escarole and cheese Mozzarella Italian cuisine", "B", 24.9, 10, 3),
    ("Chicken", "Shredded chicken, tomato, onion, Brazilian cuisine and optional catupiry", "M", 34.9, 5, 5),
	("Mozzarella", "Cheese Mozzarela, tomato souce, basil and American cuisine", "S", 29.9, 0, 3);
    
SELECT * FROM tb_pizza;

SELECT * FROM tb_pizza 
	WHERE (price + addition_size) > 30;

SELECT * FROM tb_pizza 
	WHERE (price + addition_size) 
    BETWEEN 35 AND 50;

SELECT * FROM tb_pizza
	WHERE `name` LIKE "c%"; 
    
SELECT * FROM tb_pizza
	WHERE ingredients LIKE "%cheese%"; 
    
SELECT flavor_type, flavor_diet, `name`, price
	FROM tb_category
    INNER JOIN tb_pizza ON fk_pizza = id_category
	WHERE flavor_type = "Sweet";
