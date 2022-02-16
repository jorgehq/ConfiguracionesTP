drop database if exists SistemaCursosOnline;
create database SistemaCursosOnline;
use SistemaCursosOnline;

drop table if exists profesor ;

create table profesor (
  idProfesor int not null AUTO_INCREMENT,
  Nombre varchar(45) null,
  Apellido varchar(45) null,
  DNI varchar(30) null,
  Estudios varchar(45) null,
  primary key (idProfesor));



drop table if exists cursos ;

create table cursos (
  idCursos INT NOT NULL ,
  NombreCur VARCHAR(45) NOT NULL,
  Duracion INT NULL,
  Dedicacion INT NULL,
  Precio INT NULL,
  Especialidad VARCHAR(45) NULL,
  primary key (idCursos));



drop table if exists cursos_disponibles ;

create table cursos_disponibles (
  idCursos_disponibles int not null auto_increment,
  Profesor_idProfesor int not null,
  Cursos_idCursos int not null,
  primary key(idCursos_disponibles),

  foreign key (Profesor_idProfesor)
  references profesor (idProfesor),

  foreign key (Cursos_idCursos)
  references cursos (idCursos));



drop table if exists usuario ;

create table usuario (
  DNI int not null,
  Nombre varchar(45) null,
  Email varchar(45) null,
  telefono varchar(45) null,
  FormaCompra enum('Tarjeta','Fijo','Cuotas'),
  contrasena varchar(45) null,
  primary key(`DNI`));



drop table if exists inscripcion ;

create table inscripcion (
  Id_Facturacion int not null auto_increment,
  idCursos_disponiblesCur int not null,
  usuario_DNI int not null,
  Facturacon_Total int null,
  descuento varchar(45) null,
  primary key(Id_Facturacion),
  
  foreign key (idCursos_disponiblesCur)
  references cursos_disponibles (idCursos_disponibles),

  foreign key (usuario_DNI)
  references usuario (DNI));