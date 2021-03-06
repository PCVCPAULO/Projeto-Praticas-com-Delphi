/******************************************************************************/
/*           Generated by IBExpert 2020.5.12.1 23/08/2020 22:39:34            */
/******************************************************************************/

SET SQL DIALECT 3;

SET NAMES NONE;

SET CLIENTLIB 'C:\Program Files (x86)\Firebird\Firebird_2_5\bin\fbclient.dll';

CREATE DATABASE 'D:\RAD_ProjetoSistDizimo\banco\bancoDizimo.GDB'
USER 'SYSDBA' PASSWORD 'masterkey'
PAGE_SIZE 4096
DEFAULT CHARACTER SET NONE COLLATION NONE;



/******************************************************************************/
/*                                 Generators                                 */
/******************************************************************************/

CREATE GENERATOR GENFICHA;
SET GENERATOR GENFICHA TO 892;

CREATE GENERATOR GENLANCAM_ID;
SET GENERATOR GENLANCAM_ID TO 14640;



/******************************************************************************/
/*                                   Tables                                   */
/******************************************************************************/



CREATE TABLE LANCAMENTO (
    ID            INTEGER NOT NULL,
    CDFICHA       INTEGER NOT NULL,
    NOMEDIZ       VARCHAR(85),
    VLRDOACAO     NUMERIC(15,2) NOT NULL,
    REFERENCIA    VARCHAR(23),
    DTLANCAMENTO  DATE NOT NULL
);

CREATE TABLE TBL_PLANDADOS (
    CDFICHA        INTEGER NOT NULL,
    NOME           VARCHAR(85) NOT NULL,
    NASCDIZIMISTA  TIMESTAMP,
    COMUNIDADE     VARCHAR(35),
    END_RUA        VARCHAR(85),
    END_NR         INTEGER,
    END_COMPLEM    VARCHAR(20),
    END_BAIRRO     VARCHAR(35),
    END_CEP        VARCHAR(10),
    END_CIDADE     VARCHAR(20),
    END_UF         VARCHAR(3),
    FONE_FIXO      VARCHAR(16),
    FONE_MOVEL     VARCHAR(16),
    EMAIL          VARCHAR(85),
    GENERO         VARCHAR(15),
    ESTADO_CIVIL   VARCHAR(20),
    NOME_CONJ      VARCHAR(85),
    NASCONJUGE     TIMESTAMP,
    DATACASAMENTO  TIMESTAMP,
    DATACADASTRO   TIMESTAMP,
    SITUACAO       VARCHAR(10)
);



/******************************************************************************/
/*                                Primary keys                                */
/******************************************************************************/

ALTER TABLE LANCAMENTO ADD CONSTRAINT PK_LANCAMENTO PRIMARY KEY (ID);
ALTER TABLE TBL_PLANDADOS ADD CONSTRAINT PK_PLANDADOS PRIMARY KEY (CDFICHA);


/******************************************************************************/
/*                                Foreign keys                                */
/******************************************************************************/

ALTER TABLE LANCAMENTO ADD CONSTRAINT FK_LANCAMENTO_1 FOREIGN KEY (CDFICHA) REFERENCES TBL_PLANDADOS (CDFICHA);
