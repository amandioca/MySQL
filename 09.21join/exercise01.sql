CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;
CREATE TABLE tb_class (
	
    id_class BIGINT AUTO_INCREMENT,
    nick_name VARCHAR (15) NOT NULL,
    `function` VARCHAR (25),
    
    PRIMARY KEY (id_class)
    
    );
    
USE db_generation_game_online;
CREATE TABLE tb_character (
	
    id_character BIGINT AUTO_INCREMENT,
    name_character VARCHAR (30),
   	weapon VARCHAR (20) NOT NULL,
    power_defense BIGINT (10) NOT NULL,
    power_attack BIGINT (10) NOT NULL,
    fk_class BIGINT,
    
    PRIMARY KEY(id_character),
    FOREIGN KEY(fk_class) REFERENCES tb_class (id_class)
    
 );   
 
INSERT INTO tb_class (nick_name, `function`) 
	VALUES
		("amand1oca", "Assassin"),
		("ruanLindezudo", "Support"),
		("davansep", "Shooter"),
		("oQueCai", "Assassin");
    
INSERT INTO tb_character (name_character, weapon, power_defense, power_attack, fk_class)
	VALUES
		("Katarina", "Dagger", 10000,  2500, 1),
		("Janna", "Staff", 12000, 450, 2),
		("Lux", "Bow", 10000, 1300, 3),
		("Yone", "Sword", 10000, 2400, 4);

SELECT * FROM tb_class;

SELECT * FROM tb_character 
	WHERE power_attack > 2000;

SELECT * FROM tb_character 
	WHERE power_defense BETWEEN 10001 AND 15000;
    
SELECT * FROM tb_character
	WHERE name_character LIKE 'Y%';
    
SELECT nick_name, `function`, name_character, weapon
	FROM tb_class
	INNER JOIN tb_character ON fk_class = id_class;
    

