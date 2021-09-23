CREATE DATABASE db_course_of_my_life;

USE db_course_of_my_life;
CREATE TABLE tb_category (
	
    id_category BIGINT AUTO_INCREMENT PRIMARY KEY,
    category VARCHAR (50) NOT NULL
);

USE db_course_of_my_life;
CREATE TABLE tb_product (
	
    id_product BIGINT AUTO_INCREMENT PRIMARY KEY,
	name_course VARCHAR (255) NOT NULL,
	theme VARCHAR (50),
    duration VARCHAR (50),
    price DECIMAL (10, 2) NOT NULL,
    fk_category BIGINT NOT NULL,
    
    FOREIGN KEY (fk_category) REFERENCES tb_category (id_category)
);

INSERT INTO tb_category (category)
	VALUES
    ("IT and Software"),
	("Design"),
    ("Photography and Video"),
    ("Music"),
    ("Academic Study");
    
INSERT INTO tb_product (name_course, theme, duration, price, fk_category)
	VALUES
    ("Java Programming - basic to advanced", "Development WEB", "63 hours", 245.9, 1),
    ("UX & Design Thinking", "Design & UX", "11 hours", 239.9, 2),
    ("Digital Painting in Photoshop", "Illustration", "1 hour", 89.9, 2),
    ("Photagraphy for beginners", "Photography", "3 hours", 99.9, 3),
    ("Applied Vocal Technique", "Vocal Training", "1 hour", 129.9, 4),
    ("Linear Algebra with Python", "Mathematics and Development", "16 hours", 189.9, 5);
    
SELECT * FROM tb_product
	WHERE price < 100;
	
SELECT * FROM tb_product
WHERE price BETWEEN 150 AND 250;
    
SELECT * FROM tb_product 
	WHERE theme LIKE "%Development%";

SELECT category, name_course, duration, price
	FROM tb_category
    INNER JOIN tb_product ON fk_category = id_category
    WHERE category = "IT and Software";