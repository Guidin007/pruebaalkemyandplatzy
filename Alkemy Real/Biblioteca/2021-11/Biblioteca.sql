
-- # la idea es escribir el verdadrero scrip para este caso.
create table Biblioteca (
	id INT,
	nombre VARCHAR(50),
	apellido VARCHAR(50),
	email VARCHAR(50),
	colegiatura FLOAT,
	fecha_incorporacion TIMESTAMP,
	carrera_id INT,
	tutor_id INT
);
insert into platzi.alumnos (id, nombre, apellido, email, colegiatura, fecha_incorporacion, carrera_id, tutor_id) values (1, 'Wanda', 'Billington', 'wbillington0@nsw.gov.au', 5000, '2020-05-17 22:49:29', 23, 9);
