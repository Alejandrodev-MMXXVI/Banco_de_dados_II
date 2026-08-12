-- comandos de DDL
-- 05-08-2026

-- 1 criar o banco de dados
create database bd_rh_0302; 

-- 2 usar o banco de dados
use bd_rh_0302; 

-- 3 criar a tabela tb_cargo
create table tb_cargo
(cd_cargo int not null primary key, 
cargo char(30)); 

-- 4 criar a tabela tb_setor
create table tb_setor 
(cd_setor int not null primary key,
setor char(30)); 

-- 5 criar a tabela tb_funcionario 
create table tb_funcionario 
(matricula int not null primary key, 
funcionario char(30), 
dt_nascimento date, 
cd_setor int, 
cd_cargo int, 
salario decimal(12,2)); 

-- criar os relacionamentos 
-- 6 relacionamento tb_funcionario x tb_cargo
alter table tb_funcionario 
add constraint fk_cargo foreign key (cd_cargo) 
references tb_cargo (cd_cargo); 

-- 7 relacionamento tb_funcionario x tb_setor 
alter table tb_funcionario 
add constraint fk_setor foreign key (cd_setor) 
references tb_setor (cd_setor); 











