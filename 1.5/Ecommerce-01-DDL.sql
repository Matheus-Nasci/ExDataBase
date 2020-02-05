CREATE DATABASE Ecommerce_DDL;

USE Ecommerce_DDL;

CREATE TABLE Loja (
	IdLoja	INT PRIMARY KEY IDENTITY,
	Nome	VARCHAR (200)
	);

CREATE TABLE Cliente (
	IdCliente	INT PRIMARY KEY IDENTITY,
	Nome		VARCHAR (200)
	);

CREATE TABLE Categoria (
	IdCategoria	INT PRIMARY KEY IDENTITY,
	Nome		VARCHAR (200),
	IdLoja		INT FOREIGN KEY REFERENCES Loja(IdLoja)
	);

CREATE TABLE Subcategoria (
	IdSubcategoria	INT PRIMARY KEY IDENTITY,
	Nome			VARCHAR (200),
	IdCategoria		INT FOREIGN KEY REFERENCES Categoria(IdCategoria)
	);
	
CREATE TABLE Produto (
	IdProduto		INT PRIMARY KEY IDENTITY,
	Nome			VARCHAR	(200),
	Valor			BIGINT,
	IdSubcategoria INT FOREIGN KEY REFERENCES Subcategoria(IdSubcategoria)
	);

CREATE TABLE Pedido (
	IdPedido		INT PRIMARY KEY IDENTITY,
	NrPedido		CHAR (4),
	DataPedido		DATE,
	StatusPedido	VARCHAR(200)
	);

CREATE TABLE PedidoProduto (
	IdPedido	INT FOREIGN KEY REFERENCES Pedido(IdPedido),
	IdProduto	INT FOREIGN KEY REFERENCES Produto(IdProduto)
	);