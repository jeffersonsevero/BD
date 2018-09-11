 CREATE TABLE clientes(
	id int,
	nome varchar(50),
	cpf char(11),
	data_cadastro date,
	cidade varchar(50),
	uf char(2),
	primary key(id)


 )

 CREATE TABLE categorias(
	id int,
	nome varchar(20),
	primary key(id)

 )

CREATE TABLE classes(
	id int,
	nome varchar(20),
	preco decimal(10,2),
	primary key(id)

)

CREATE TABLE distribuidores(
	id int,
	nome varchar(50),
	primary key(id)
)

CREATE TABLE filmes(
	id int,
	titulo varchar(50),
	id_distribuidor int,
	ano_lancamento int,
	id_categoria int,
	id_classe int,
	primary key(id),
	foreign key(id_distribuidor) references distribuidores(id),
	foreign key(id_categoria) references categorias(id),
	foreign key(id_classe) references classes(id)
)



CREATE TABLE locacoes(
	id int,
	id_cliente int,
	id_filme int,
	dt_locacao date,
	dt_devolucao_prevista date,
	dt_devolucao date,
	valor decimal(10,2),
	primary key(id),
	foreign key(id_cliente) references clientes(id),
	foreign key(id_filme) references filmes(id)
)


INSERT INTO clientes VALUES
	(1, 'João', 15478965874,'1994-03-02','São Paulo','SP'),
	(2,'Ricardo',54892547895,'1998-12-03','Quixadá','CE'),
	(3,'Matheus',96874589687,'1998-04-14','Madalena','CE')

INSERT INTO categorias VALUES
	(1,'Terror'),
	(2,'Acão'),
	(3,'Comédia')

INSERT INTO classes VALUES
	(1,'Classe1', 10.00),
	(2,'Classe2', 20.00),
	(3,'Classe3', 30.00)

INSERT INTO distribuidores VALUES
	(1,'Distribuidor1'),
	(2,'Distribuidor2'),
	(3,'Distribuidor3')

		
INSERT INTO filmes VALUES
	(1,'As branquelas',1,1998,3,1),
	(2, 'As aventuras de Jack Chan',2,1994,2,2),
	(3,'O massacre da serra elétrica',3,1940,1,3)

INSERT INTO locacoes VALUES
	(1,2,'1987-12-03','1987-12-25','1987-12-17',40.00),
	(2,3,'1987-11-03','1987-11-25','1987-11-17',30.00),
	(3,1,'1987-02-03','1987-02-25','1987-02-17',50.00)
	









 





 
