CREATE DATABASE db_school;

USE db_school;
CREATE TABLE tb_students (
	
    id BIGINT AUTO_INCREMENT,
    first_name VARCHAR (20),
    last_name VARCHAR (20),
	grade INT,
    sleepiness BOOLEAN,

	PRIMARY KEY (id)
    
);

SELECT * FROM tb_students;

INSERT INTO tb_students (first_name, last_name, grade, sleepiness) VALUES ("Amanda", "Amorim", 8, true);
INSERT INTO tb_students (first_name, last_name, grade, sleepiness) VALUES ("Caique", "Bezerra", 7, true);
INSERT INTO tb_students (first_name, last_name, grade, sleepiness) VALUES ("Priscila", "Davanse", 9, true);
INSERT INTO tb_students (first_name, last_name, grade, sleepiness) VALUES ("Ruan", "Dias", 3, true);

UPDATE tb_students SET sleepiness = false WHERE id = 1;

SELECT * FROM tb_students WHERE grade >= 7;
SELECT * FROM tb_students WHERE grade < 7;
