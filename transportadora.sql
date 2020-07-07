
SET SQL_SAFE_UPDATES = 0;

CREATE TABLE IF NOT EXISTS  cidade(
	id INT(11) PRIMARY KEY NOT NULL auto_increment,
    nome varchar(100),
    uf varchar(2)
);

CREATE TABLE IF NOT EXISTS  endereco(
	id int(11) PRIMARY KEY NOT NULL auto_increment,
    id_cidade int(11),
    logradouro varchar(100),
    numero int(11),
    bairro varchar(100)
	
);

CREATE TABLE IF NOT EXISTS cliente(
	id int(11) PRIMARY KEY NOT NULL auto_increment,
    id_endereco int(11),
    nome varchar(80),
    email varchar(80),
    telefone varchar(15)
	

);
CREATE TABLE IF NOT EXISTS pacote(
	id int(11) PRIMARY KEY NOT NULL auto_increment,
    id_cliente int(11) NOT NULL,
    dataentrada datetime,
    dataentrega datetime,
    peso int(6),
    altura int(6),
    largura int(6),
    comprimento int(6),
    status_pacote tinyint
    
);

select * from pacote;
select * from cliente;
select * from endereco;
select * from cidade;

Insert Into cidade VALUES (0, 'itajai', 'sc');
Insert Into cidade VALUES (0, 'brusque', 'sc');
Insert Into cidade VALUES (0, 'sao paulo', 'sp');
Insert Into cidade VALUES (0, 'curitiba', 'pr');
Insert Into cidade VALUES (0, 'Navegantes', 'sc');

select * from cidade;
select * from cliente;
select * from endereco;
INSERT INTO endereco VALUES(0, 3, 'Casa', 25, 'Cordeiros');
select * from endereco;
DELETE FROM endereco WHERE id=2;
select * from endereco;
INSERT INTO cliente VALUES(0,0, 'BRUNO', 'EMAIL', 'TELEFONE');
DROP TABLE cidade;
DROP TABLE pacote;
select * from pacote;
ALTER TABLE pacote DROP COLUMN dataentrada;
ALTER TABLE pacote ADD COLUMN dataentrada varchar(100);
UPDATE cliente SET email='destino@hotmail.com' WHERE id=3