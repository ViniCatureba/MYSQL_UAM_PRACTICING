CREATE database TESTE;


USE TESTE;

CREATE TABLE ALUNO (
RA INT NOT NULL,
NOME VARCHAR (40) NOT NULL);

-- ALTERAR A TABELA ALUNO E INCLUIR A CAHVE
select * from aluno;
alter table ALUNO
add constraint PK_ALUNO PRIMARY KEY(RA);


CREATE TABLE CURSO(
ID_CURSO INT NOT NULL ,
NOMED_DO_CURSO VARCHAR (50) NOT NULL,
CONSTRAINT pk_curso primary key (id_curso));

drop table curso;

alter table ALUNO
ADD column id_curso int not null;

/*RESTRICAO DE INTEDRIDADE REFERENCIAL (FK)*/

ALTER TABLE ALUNO
ADD CONSTRAINT FK_CURSO FOREIGN KEY (ID_CURSO) REFERENCES CURSO(ID_CURSO);

-- comandos dml

insert into curso (id_curso,nomed_do_curso)
values (123,'sistemas de informação'),
		(124,'ciências da computação'),
        (125, 'ciencia de dados');
-- na ha necessidawde de colocar no insert oq sera colocado, uma vez q sa obrigatorios

select * from curso;
insert into aluno
values (321, 'joao da silva', 124),
		(322,'patati',125),
        (323, 'maria da paz',123);
        
select * from aluno;

select A.NOME, C.NOMED_dO_CURSO FROM ALUNO A, CURSO C 
WHERE C.ID_CURSO = A.ID_CURSO;

SELECT * FROM CURSO;
SELECT ALUNO.RA, ALUNO.NOME NOME_ALUNO, CURSO.ID_CURSO, CURSO.NOMED_DO_CURSO NOME_CURSO
FROM ALUNO, CURSO
WHERE CURSO.ID_CURSO = ALUNO.ID_CURSO;

use teste;
SELECT COUNT(ID_CURSO) FROM aluno;

select nome from aluno;




