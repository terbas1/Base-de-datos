create database citasVirtuales;
----------------------------------
use citasVirtuales;
-------------------
create table Alumno (id char(10)  ,
codigo char(50)primary key not null,
NombresyApellidos varchar(100),
edad int(100),
DNI varchar(8),
Correo varchar(70),
Carrera varchar(50),
Ciclo int(10),
Usuario varchar(30),
Contrasena varchar(30)
    	);
--------------------------------------
create table Adiministrador (id char(50) primary key ,
Usuario varchar(30),
Contrasena varchar(30),
Cargo varchar(30)
    	);
-----------
create table HistoriaEstudiante (id char(50)  ,
CodigoEstudiante varchar(50),
NombresyApellidos varchar(100),
fecha TIMESTAMP ,
Dolencia varchar(500),
Receta varchar (100),
PrximaCita time
    	);
------------------
create table Citas (id char(50)  ,
CodigoEstudiante varchar(50),
NombresyApellidos varchar(100),
fecha time 
    	);
-----------------
alter table HistoriaEstudiante add foreign key (CodigoEstudiante) references Alumno (codigo);
--
alter table Citas add foreign key (CodigoEstudiante) references Alumno (codigo);
---
insert into Alumno values ('1', '12548','Edwin Baltazar Terbullino','22','72002570','edwin.baltazar@tecsup.edu.pe','Diseño de Software','4','terbas1','daniel261516');
insert into Adiministrador values ('1', 'cargoTopico','cargo123','Topico');
---
select *
from Alumno
