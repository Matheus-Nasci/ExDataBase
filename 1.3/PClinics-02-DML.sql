CREATE DATABASE PClinics_DML;

USE PClinics_DDL;

INSERT INTO Dono (Nome)
VALUES	('Mauro'),
		('Matheus'),
		('Thiago');

INSERT INTO TipoPet (Titulo)
VALUES	('Cachorro'),
		('Peixe'),
		('Gato');

INSERT INTO Raca (Titulo,IdTipoPet)
VALUES	('Labrador',1),
		('Beta',2),
		('Siamês',3);

INSERT INTO Veterinario (Nome,CRMV)
VALUES	('Vinicius','39485'),
		('Amanda','03720'),
		('Saulo','40010');

INSERT INTO Pet (Nome,Tel,IdDono,IdRaca)
VALUES	('Kleiton',962146647,1,2),
		('Jefferson',948345567,2,3),
		('Adamastor',904934560,3,1);

INSERT INTO Atendimento (Dat,Descricao,IdVeterinario,IdPet)
VALUES	('14/01/2018','Está com Dengue',2,1),
		('07/05/2020','OK',3,2),
		('28/01/2019','Está Mal',1,3);