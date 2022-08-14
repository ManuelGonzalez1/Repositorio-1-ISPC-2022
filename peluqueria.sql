--Alumno: Alicia Montenegro dni 20441673

--1.	Realice la consulta correspondiente para crear la tabla Perro, teniendo en cuenta sus claves foráneas y primarias.


create database PELUQUERIA
USE PELUQUERIA


--tabla dueno
create table Dueno (
DNI int not null,
Nombre varchar(30),
Apellido varchar(30),
Telefono varchar(20),
Direccion varchar(150),
constraint pk_dni primary key(DNI)
)
--tabla perro
create table Perro(
ID_Perro INT identity,
Nombre varchar(30),
Fecha_nac smalldatetime,
Sexo varchar(1),
DNI_dueno int not null,
constraint pk_idperro primary key(ID_Perro),
constraint fk_dnidueno foreign key(DNI_dueno) references dueno (dni))

--tabla historial
create table Historial(
ID_Historial int identity,
Fecha smalldatetime,
Perro int not null,
Descripcion varchar(100),
Monto int,
constraint pk_idh primary key(ID_Historial),
constraint fk_perro foreign key(Perro) references perro (ID_perro) 
)

--2.	Inserte en la tabla correspondiente un nuevo animal (perro) como paciente y el dueño asociado a ese animal.

insert into Dueno 
values(22441111,'Pedro','Perez','1551303001','Rivadavia 111 Cordoba')


insert into Perro  
values ('Black','2021-08-09','M','22441111')

--Consultas:



--4.	Actualice la fecha de nacimiento de algún animal (perro) que usted considere.
update perro
set Fecha_nac='2021-05-05' where ID_Perro=1

--5.	Realice una consulta multitabla que arroje el nombre de todos los perros cuyos dueños se llaman Pedro
select p.nombre from perro p
inner join dueno d on DNI_dueno=DNI 
where d.nombre = 'Pedro'


--6.	Obtener todos los perros que asistieron a la peluquería en 2022
select * from historial where year(Fecha)=2022



--9.	Escriba una consulta que permita actualizar la dirección de un dueño. Su nueva dirección es Libertad 123
update Dueno
set Direccion='Libertad 123'  where dni='22441111'


--12.	Obtener todos los perros de sexo “Macho” nacidos entre 2020 y 2022
select * from perro where sexo='M' and (year(Fecha_nac)>2019 and year(Fecha_nac)<2023)

