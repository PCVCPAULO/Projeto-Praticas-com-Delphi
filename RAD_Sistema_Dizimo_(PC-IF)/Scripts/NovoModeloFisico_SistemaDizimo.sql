-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE tbl_CEB (
NOME VARCHAR(150),
Rua VARCHAR(10),
NR VARCHAR(10),
Bairro VARCHAR(10),
CEP VARCHAR(10),
Cidade VARCHAR(10),
UF VARCHAR(10),
id_CEB INTEGER PRIMARY KEY
)

CREATE TABLE tbl_EstadoCivil (
Situacao VARCHAR(40),
id_EstCivil INTEGER PRIMARY KEY
)

CREATE TABLE tbl_Genero (
id_Gen INTEGER PRIMARY KEY,
Tipo VARCHAR(40)
)

CREATE TABLE tbl_Contato (
id_Contato VARCHAR(10) PRIMARY KEY,
Fone_Fixo VARCHAR(20),
Fone_Movel VARCHAR(20),
Email VARCHAR(250)
)

CREATE TABLE tbl_Dizimista (
FICHA INTEGER PRIMARY KEY,
NOME VARCHAR(150),
Data_Nasc DATETIME,
id_CEB INTEGER,
id_EstCivil INTEGER,
id_Gen INTEGER,
id_Contato VARCHAR(10),
FOREIGN KEY(id_CEB) REFERENCES tbl_CEB (id_CEB),
FOREIGN KEY(id_EstCivil) REFERENCES tbl_EstadoCivil (id_EstCivil),
FOREIGN KEY(id_Gen) REFERENCES tbl_Genero (id_Gen),
FOREIGN KEY(id_Contato) REFERENCES tbl_Contato (id_Contato)
)

CREATE TABLE tbl_Lancamentos (
id_Lancam VARCHAR(10) PRIMARY KEY,
Valor DECIMAL(18,2),
dt_Lancam DATETIME,
FICHA INTEGER,
id_Referencia INTEGER,
FOREIGN KEY(FICHA) REFERENCES tbl_Dizimista (FICHA)
)

CREATE TABLE tbl_Referencia (
id_Referencia INTEGER PRIMARY KEY,
Descricao VARCHAR(150)
)

ALTER TABLE tbl_Lancamentos ADD FOREIGN KEY(id_Referencia) REFERENCES tbl_Referencia (id_Referencia)
