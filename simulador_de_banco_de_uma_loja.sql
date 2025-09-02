--deleta a tabela caso exista
DROP TABLE IF EXISTS produto,vendas;

--Cria a tabela de produtos
CREATE TABLE produto(
	id SERIAL PRIMARY KEY,
	nome VARCHAR(100) NOT NULL UNIQUE,
	valor DECIMAL(10) NOT NULL,
	qtd INT NOT NULL CHECK(qtd >0)
);
--inserindo dados na tabela produto
INSERT INTO produto(nome,valor,qtd) VALUES
('Nintendo Switch 2',3500,1),
('Notebook da Aplle',9000,3);

--Cria a tabela de vendas
CREATE TABLE vendas(
	id SERIAL PRIMARY KEY,
	cliente VARCHAR(100) NOT NULL,
	id_produto INT REFERENCES produto(id),
	qtd INT NOT NULL CHECK(qtd > 0)
);
--inserção de dados em vendas
INSERT INTO vendas(cliente,id_produto,qtd) VALUES
('Dorivaldo cinhozinho',2,1),
('Victor Oliveira',1,1);

SELECT * FROM vendas;
