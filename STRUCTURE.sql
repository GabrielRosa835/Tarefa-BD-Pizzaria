CREATE DATABASE db_pizzaria;
USE db_pizzaria;

CREATE TABLE tbl_pizzas (
	Id_Pizza INT PRIMARY KEY AUTO_INCREMENT,
    Ingredientes TEXT, -- MULTIVALORADO
    Sabor VARCHAR(50) NOT NULL,
    Preco FLOAT NOT NULL,
    Descricao TEXT DEFAULT (CONCAT('[Descrição da pizza]')),
    Tamanho VARCHAR(20) DEFAULT "Médio",
    Embalagem_Tamanho VARCHAR(20) DEFAULT "30x30x5cm",
    Embalagem_Material VARCHAR(50) DEFAULT "Papelão",
    Embalagem_Preco FLOAT DEFAULT 1.50,
    Id_Receita INT NOT NULL,
    Id_Pizzayollo INT NOT NULL,
    FOREIGN KEY fk_id_receita (Id_Receita)
    REFERENCES tbl_receitas (Id_Receita),
    FOREIGN KEY fk_id_pizzayollo (Id_Pizzayollo)
    REFERENCES tbl_pizzayollos (Id_Pizzayollo)
); 

CREATE TABLE tbl_receitas (
	Id_Receita INT PRIMARY KEY AUTO_INCREMENT,
    Instrucoes TEXT,
    Autor VARCHAR(50)
); 

CREATE TABLE tbl_pizzayollos (
	Id_Pizzayollo INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(50) NOT NULL,
    Salario FLOAT
); 

DROP TABLE tbl_pizzas;
DROP TABLE tbl_receitas;
DROP TABLE tbl_pizzayollos;