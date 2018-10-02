CREATE TABLE editoras(
	id int,
	nome varchar(50),
	primary key(id)
)
CREATE TABLE autores(
	id int,
	nome varchar(50),
	primary key(id)
)

CREATE TABLE livros(
	isbn char(13),
	titulo varchar(50),
	ano_publicacao int,
	qtd_estoque int,
	valor decimal(10,2),
	id_editora int,
	primary key(isbn),
	foreign key(id_editora) references editoras(id)
)


CREATE TABLE livros_autores(
	isbn char(13),
	id_autor int,
	primary key(isbn),
	foreign key(isbn) references livros(isbn),
	foreign key(id_autor) references autores(id)
)


INSERT INTO livros VALUES
	('213','Banco de Dados',2011,2,50.00,4),
	('425','Sistemas Operacionais', 2010, 3, 80.00, 3),
	('732', 'Lógica de Programação', 2009, 1, 60.00, 2),
	('441', 'Programação Orientada a Objetos', 2012, 1, 70.00, 1),
	('659', 'Java para Nerds', 2010, 3, 90.00, null),
	('863', 'Engenharia de Software', 2010, 2, 40.00, 2),
	('376', 'Redes de Computadores', 2008, 1, 100.00,3)



INSERT INTO editoras VALUES
	(1, 'Ática'),
	(2, 'FTD'),
	(3, 'Melhoramentos'),
	(4, 'Novatec'),
	(5, 'Bookman')

INSERT INTO autores VALUES
	(1, 'João'),
	(2, 'Maria'),
	(3, 'José'),
	(4, 'Lúcia'),
	(5, 'Carlos'),
	(6, 'Pedro'),
	(7, 'Ana')


INSERT INTO livros_autores VALUES
	('732', 1),
	('425', 3),
	('659', 4),
	('441', 2),
	('863', 1),
	('376', 5),
	('213', 3)




	

