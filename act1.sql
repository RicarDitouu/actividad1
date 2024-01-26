create database  dbTechSolutions;

use dbTechSolutions;

create table tbCargos(
id_cargo int primary key auto_increment,
nombre_cargo varchar(20)
);

create table tbDepartamentos(
id_departamento int primary key auto_increment,
nombre_departamento varchar(30)
);


create table tbEmpleados(
id_empleado int  primary key auto_increment,
nombre varchar(20),
apellido varchar(20),
fecha_Inicio date,
id_cargo int,
id_departamento int,
constraint fk_cargo foreign key(id_cargo) references tbCargos(id_cargo),
constraint fk_departamento foreign key(id_departamento) references tbDepartamentos(id_departamento)
);



create table tbProyectos(
id_proyecto int primary key auto_increment,
nombre_proyecto varchar(30)
);

create table tbDetalleProyectos(
id_detalleProyecto int primary key auto_increment,
id_proyecto int,
id_departamento int,
constraint fk_proyecto foreign key(id_proyecto) references tbProyectos(id_proyecto),
constraint fk_departamento_detalle foreign key(id_departamento) references tbDepartamentos(id_departamento)
);
