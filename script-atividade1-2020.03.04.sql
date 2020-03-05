create database ACADEMIA;

USE ACADEMIA;

CREATE TABLE INSTRUTOR(
IDINSTRUTOR INT primary key,
RG int NOT NULL,
NOME varchar(45) not null,
NASCIMENTO DATE,
TITULACAO int
);

CREATE TABLE telefone_instrutor(
idtelefone int primary key,
numero int not null,
tipo varchar(45),
instrutor_idinstrutor int not null
);

create table turma(
idturma int primary key,
horario time not null,
duracao int not null,
dataInicio date not null,
dataFim date not null,
atividade_idatividade int not null,
instrutor_idinstrutor int not null
);

create table aluno(
codMatricula int primary key,
turma_idturma int,
dataMatricula date not null,
nome varchar(45),
endereco text,
telefone int,
dataNascimento date,
altura float,
peso int
);

create table atividade(
idatividade int primary key,
nome varchar(100) not null
);

create table matricula(
aluno_codMatricula int,
turma_idturma int,
primary key(aluno_codMatricula, turma_idturma)
);

create table chamada(
idchamada int primary key,
dataChamada date not null,
presente bool not null,
matricula_aluno_codMatricula int,
matricula_turma_idturma int
)


