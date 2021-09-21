CREATE DATABASE db_human_resources;

USE db_human_resources;
CREATE TABLE tb_employees (
    
		id BIGINT AUTO_INCREMENT,
        first_name VARCHAR (30) NOT NULL,
        last_name VARCHAR (30) NOT NULL,
        office VARCHAR (30) NOT NULL,
		age INT (2) NOT NULL,
        employee_record INT (8),
        
        UNIQUE (employee_record),
        
        PRIMARY KEY (id)
        
        );

ALTER TABLE tb_employees
ADD salary DECIMAL (10 , 2);

SELECT * FROM tb_employees;

INSERT INTO tb_employees (first_name, last_name, office, age, employee_record, salary) VALUES ("Amanda", "Amorim", "Dev", 20, 12345678, 4500.00);
INSERT INTO tb_employees (first_name, last_name, office, age, employee_record, salary) VALUES ("Priscila", "Davansep", "Dev", 28, 12345978, 1800.00);
INSERT INTO tb_employees (first_name, last_name, office, age, employee_record, salary) VALUES ("Caique", "Bezerra", "Dev", 27, 11289709, 1800.00);
INSERT INTO tb_employees (first_name, last_name, office, age, employee_record, salary) VALUES ("Ruan", "Dias", "Dev", 27, 89897654, 4500.00);

UPDATE tb_employees SET last_name = "Davanse" WHERE first_name = "Priscila";
UPDATE tb_employees SET age = 30 WHERE id = 4;

SELECT * FROM tb_employees WHERE salary < 2000;
SELECT * FROM tb_employees WHERE salary > 2000;