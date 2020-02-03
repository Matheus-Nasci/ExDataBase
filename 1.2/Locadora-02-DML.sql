CREATE DATABASE Locadora_DML;

USE Locadora_DDL;

INSERT INTO Empresa(Nome)
VALUES ('Movit'),('Cars'),('Mool');

INSERT INTO Cliente(Nome,CPF)
VALUES	('Diego',28392018234),
		('Matheus',38272345648),
		('Felipe',44332879384);

INSERT INTO Marca(Nome)
VALUES ('Chevrolet'),('Honda'),('Volkswagem');

INSERT INTO Modelo(Nome)
VALUES ('Onix'),('Civic'),('Polo');

INSERT INTO Veiculo(Placa,IdEmpresa,IdModelo)
VALUES (4002,1,1),(4935,3,3),(7668,2,2);

INSERT INTO Aluguel(DataInicio,DataFim,IdCliente,IdVeiculo)
VALUES	('31/01/2019','21/05/2020',1,3),
		('27/09/2019','03/11/2019',3,2),
		('19/06/2018','20/06/2018',2,4);