CREATE TABLE fornecedor(
	fid int,
	fnome varchar(50),
	cidade varchar(50),
	primary key(fid)
	
)


CREATE TABLE peca(
	pid int,
	pnome varchar(50),
	cor varchar(50),
	primary key(pid)


)

CREATE TABLE projetos(
	jid int,
	jnome varchar(50),
	cidade varchar(50),
	primary key(jid)
)

CREATE TABLE fornPecaProj(
	fid int,
	pid int,
	jid int,
	qtd int,
	primary key(fid,pid,jid),
	foreign key(fid) references fornecedor(fid),
	foreign key(pid) references peca(pid),
	foreign key(jid) references projetos(jid)

)

INSERT INTO fornecedor VALUES
	(1,'João Silva','Quixadá'),
	(2,'Maria Silva','Fortaleza'),
	(3,'F1','Quixeramobim')


INSERT INTO peca VALUES
	(1,'sensor','amarelo'),
	(2,'pistão','cinza'),
	(3,'eixo','vermelho')

INSERT INTO projetos VALUES
		(1, 'J1','Quixadá'),
		(2, 'J2','Fortaleza'),
		(3, 'J3','Quixeramobim')


INSERT INTO fornPecaProj VALUES
	(1,1,1,55),
	(2,2,2,80),
	(3,3,3,97)


