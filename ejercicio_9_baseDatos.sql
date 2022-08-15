--A. Crear Base de Datos y Tablas según Modelo Relacional.
--B. Realizar puntos 1 y 2
--C. Elegir algunos de los puntos 3 al 12 y agregarlo al script  (diferentes entre cada uno de los integrantes)
--D. Subir Script .sql con todos los puntos mencionados a su rama personal del GitHub grupal

CREATE DATABASE peluqueriaCanina;
USE peluqueriaCanina;

CREATE TABLE duenio (
DNI INT NOT NULL UNIQUE,
nombre VARCHAR (10),
apellido VARCHAR (8),
telefono INT (15),
direccion VARCHAR (50),
PRIMARY KEY(DNI)
);

CREATE TABLE historial (
id_historial FLOAT,
fecha DATE,
Perro VARCHAR (10),
Descripcion VARCHAR (250),
Monto FLOAT,
PRIMARY KEY (id_historial)
);

--1_Realice la consulta correspondiente para crear la tabla Perro, teniendo en cuenta sus claves foráneas y primarias.

CREATE TABLE perro(
id_perro INT,
nombre VARCHAR (10),
fecha_nacimiento DATE,
sexo VARCHAR(10),
DNI_duenio INT NOT NULL,
CONSTRAINT pk_cP PRIMARY KEY (id_perro),
CONSTRAINT fk_fDn foreign key (DNI_duenio) REFERENCES duenio (DNI)
);

--2_Inserte en la tabla correspondiente un nuevo animal (perro) como paciente y el dueño asociado a ese animal.

INSERT INTO perro VALUES (01, 'doky', 'macho', '2019-10-02', 23546987);
INSERT INTO duenio  VALUES (23546987,  'Maria', 'Pere', 4789689,  'Pueyrredon  811');

--9_Escriba una consulta que permita actualizar la dirección de un dueño. Su nueva dirección es Libertad 123
UPDATE duenio SET direccion = 'Libertad 123'  WHERE DNI = '23546987'