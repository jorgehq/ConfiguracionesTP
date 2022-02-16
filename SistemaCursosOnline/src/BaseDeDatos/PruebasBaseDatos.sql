use SistemaCursosOnline;
describe profesor;
show tables;
SELECT * FROM profesor;

INSERT INTO profesor(Nombre,Apellido,DNI,Estudios)  VALUES('Alfonso','Rosales','7702291', 'Cali'),
('Mark','Zuqerberg',  '57315291', 'Medellin'),
('Alicia','Paredes',  '3125359456', 'Cali'),
('Larry','Fuentes', '7872296', 'Tunja'),
('Tomas','Juncos', '7992293', 'Medellin');

SELECT * FROM profesor;



SELECT * FROM usuario;
INSERT INTO usuario(DNI,Nombre,Email,telefono,FormaCompra,contrasena) 
 VALUES(40893402,'Enrique','Enrique@gmail.com','1145893200', 'Cuotas','1234'),
(40893403,'Juan', 'Juan@gmail.com', '1145893201', 'Fijo','12345'),
(40893404,'Nicolas',  'Nicolas@gmail.com','1145893202', 'Tarjeta','123456'),
(40893405,'Larry','Larry@gmail.com','1145893203', 'Fijo','1234567'),
(40893406,'Tomas','Tomas@gmail.com','1145893204', 'Fijo','12345678');
SELECT * FROM usuario;

INSERT INTO cursos(idCursos,NombreCur,Duracion,Dedicacion,Precio,Especialidad) 
 VALUES(1,'Java',45,25, 4000,'Programacion'),
(2,'MySQL',45,25, 3500,'Programacion'),
(3,'Java_Objetos',45,25,5000,'Programacion');
SELECT * FROM cursos;

INSERT INTO cursos_disponibles(Profesor_idProfesor,Cursos_idCursos)
values(1,1),
(1,2);
SELECT * FROM cursos_disponibles;

INSERT INTO inscripcion(idCursos_disponiblesCur,usuario_DNI,Facturacon_Total,descuento)
VALUES(1,40893403,4000,'20%');
SELECT * FROM inscripcion;

