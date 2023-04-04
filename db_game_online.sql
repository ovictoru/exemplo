CREATE DATABASE db_game_online;

USE db_game_online;

CREATE TABLE tb_classes(
    id BIGINT AUTO_INCREMENT,
    nome_do_jogo VARCHAR(50),
    genero_do_jogo VARCHAR(50),
    PRIMARY KEY (id)
);

CREATE TABLE tb_personagens(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50),
    poder_atk DECIMAL(6,2),
    poder_def DECIMAL(6,2),
    idade INT,
    reino VARCHAR(100),
    arma VARCHAR(100),
    classe_id BIGINT,
    CONSTRAINT fk_personagens_classes FOREIGN KEY (classe_id) REFERENCES tb_classes (id)
);


INSERT INTO tb_classes(nome_do_jogo, genero_do_jogo)
VALUES("D&D", "Fantasia"), ("WARZONE","Ação"), ("FNF","Terror"), ("Bomber Man","Arcade"), ("Minecraft","Arcade");

SELECT * FROM tb_classes;

INSERT INTO tb_personagens(nome, poder_atk, poder_def, idade, reino, arma, classe_id)
VALUES ("Elminster", 1000, 1500, 220, "Vale das Sombras", "Cajado", 1),("Ghost", 2500, 800, 40, "Ingland", "M4-A1", 2),("Chica", 1750, 1500, 13, "Freddy's Bear Sister Location", "Garras", 3),("White", 4000, 0, 42, "Aqua", "Bomba",4),("Steve", 12, 4000, 20, "Aether", "Picareta", 5),("Fred", 1600, 900, 13, "Freddy's Bear Sister Location", "Grito", 3),("Creeper", 2650, 150, 1, "Netherland", "Explosão", 5),("Claubio", 9000, 9000, 30, "Amapaland", "BSM", 1);

SELECT * FROM tb_personagens;

SELECT * FROM tb_classes WHERE id = 1;

SELECT * FROM tb_personagens WHERE poder_atk > 2000;

SELECT * FROM tb_personagens WHERE poder_atk < 2000;

SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_classes.id = tb_personagens.classe_id WHERE classe_id = 1;

SELECT * FROM tb_personagens INNER JOIN tb_classes WHERE tb_classes.id = 2;

SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_classes.id = 1;

SELECT * FROM tb_personagens WHERE nome LIKE "%C%"; 

SELECT * FROM tb_personagens WHERE poder_atk BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens INNER JOIN tb_classes 
ON tb_classes.id = tb_personagens.classe_id WHERE tb_classes.nome_do_jogo = "D&D";