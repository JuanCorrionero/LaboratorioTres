create database Tp1JuanCorrionero
go

use Tp1JuanCorrionero

go

create table socios(
legajo int not null primary key identity (1000,1000),
nombre varchar(15) not null,
id_actividad tinyint not null foreign key references actividades (id),
fecha_nacimiento date not null check(fecha_nacimiento < '2010-1-1'),
genero char not null
)

go

create table actividades(
id tinyint not null primary key identity (1,1),
nombre varchar(15) not null,
costo money not null check(costo > 0),
requerimiento_medico bit not null,
id_sede tinyint not null foreign key references sedes (id)

)
go 

create table sedes( --falta provincia
id tinyint not null identity (1,1) primary key,
nombre varchar(15) not null,
codigo_postal tinyint not null foreign key references localidades (id),
direccion varchar(50) not null ,
telefono int null,
direccion_mail varchar(30) null
)
go

create table localidades(
id tinyint not null primary key identity (1,1),
nombre varchar(30) not null ,
id_provincia tinyint not null foreign key references provincias (id)
)
go

create table provincias(
id tinyint not null primary key identity (1,1),
nombre varchar(30) not null
)