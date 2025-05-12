CREATE DATABASE PIZZARIA;
USE PIZZARIA;

CREATE TABLE Cliente (
    telefone VARCHAR(15) PRIMARY KEY,
    nome VARCHAR(100),
    rua VARCHAR(100),
    numero INT,
    compl VARCHAR(50),
    bairro VARCHAR(50)
);

CREATE TABLE Funcionario (
    cpf VARCHAR(14) PRIMARY KEY,
    nome VARCHAR(100)
);

CREATE TABLE Pizza (
    codigo INT PRIMARY KEY,
    nome VARCHAR(100),
    descricao TEXT,
    preco DECIMAL(8,2)
);

CREATE TABLE Pedido (
    codigo INT PRIMARY KEY,
    data_hora DATETIME,
    tel_cliente VARCHAR(15),
    cpf_funcionario VARCHAR(14),
    FOREIGN KEY (tel_cliente) REFERENCES Cliente(telefone),
    FOREIGN KEY (cpf_funcionario) REFERENCES Funcionario(cpf)
);

CREATE TABLE Item_pedido (
    cod_pedido INT,
    cod_pizza INT,
    quantidade INT,
    FOREIGN KEY (cod_pedido) REFERENCES Pedido(codigo),
    FOREIGN KEY (cod_pizza) REFERENCES Pizza(codigo)
);

CREATE TABLE Ingredientes_pizza (
    nome_ingrediente VARCHAR(100),
    cod_pizza INT,
    FOREIGN KEY (cod_pizza) REFERENCES Pizza(codigo)
);

INSERT INTO Cliente VALUES ('11999999999', 'João Silva', 'Rua A', 123, 'Ap 2', 'Centro');
INSERT INTO Funcionario VALUES ('12345678900', 'Maria Souza');
INSERT INTO Pizza VALUES (1, 'Calabresa', 'Calabresa com cebola', 45.00);
INSERT INTO Pedido VALUES (1, '2025-05-11 19:30:00', '11999999999', '12345678900');
INSERT INTO Item_pedido VALUES (1, 1, 2);
INSERT INTO Ingredientes_pizza VALUES ('Calabresa', 1);

UPDATE Cliente
SET rua = 'Rua Nova', numero = 456, compl = 'Casa', bairro = 'Jardins'
WHERE telefone = '11999999999';

DELETE FROM Ingredientes_pizza
WHERE cod_pizza = 1;

SELECT * FROM Pedido
WHERE codigo > 0 AND cpf_funcionario = '12345678900';

SELECT nome, preco, preco * 1.10 AS preco_com_acrescimo
FROM Pizza;

SELECT nome, preco, preco * 1.10 AS preco_com_acrescimo
FROM Pizza;

SELECT * FROM Cliente
ORDER BY nome ASC;

SELECT * FROM Cliente
WHERE nome LIKE 'Jo%';

SELECT * FROM Pedido
WHERE cpf_funcionario IS NULL;

SELECT COUNT(*) AS total_pedidos
FROM Pedido;

SELECT nome
FROM Funcionario
WHERE cpf = (
    SELECT cpf_funcionario
    FROM Pedido
    WHERE codigo = 1
);

SELECT nome
FROM Funcionario
WHERE cpf IN (
    SELECT cpf_funcionario
    FROM Pedido
);