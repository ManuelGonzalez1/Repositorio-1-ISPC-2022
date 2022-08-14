create database PeluqueriaCanina;
use PeluqueriaCanina;

create table Dueño(
DNI int not null unique, 
NOMBRE varchar (15) not null,
APELLIDO VARCHAR (20),
TELEFONO bigint,
DIRECCION varchar (30),
primary key(DNI));

create table Historial(
ID_Historial float,
Fecha date null,
Perro varchar (20),
Descripcion varchar (100),
Monto float,
primary key (ID_Historial));

create table Perro(
ID_Perro int,
NOMBRE varchar (25),
Fecha_Nac date,
Sexo varchar (12),
DNI_Dueño int,
CONSTRAINT pk_cP primary key (ID_Perro),
constraint fk_fDn foreign key (DNI_Dueño) REFERENCES Dueño (DNI)
);

insert into Perro values (1,'Pixie',5/6/2019,'Hembra',43272664 );
insert into Dueño values (43272664,'Tamara','Vera',35122006,'calle Roca');

update Perro set Fecha_Nac= 6/10/2019 where ID_perro=1