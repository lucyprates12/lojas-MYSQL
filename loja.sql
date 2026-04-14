CREATE DATABASE projeto_clientes;

USE projeto_clientes;

CREATE Table Projetoclientes (
    id INT AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    telefone VARCHAR(20),
    data_cadastro DATE NOT NULL,
	PRIMARY KEY (id)
);

INSERT INTO Projetoclientes (nome, email, telefone, data_cadastro)  
VALUES
('ana silva','anasilva12@hotmail.com','(11) 5555-2222', '2025-02-26');

select * from  Projetoclientes 

