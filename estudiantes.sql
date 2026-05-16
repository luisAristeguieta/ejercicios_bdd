drop table if exists estudiantes;

create table estudiantes(
	id_estudiante INT Primary Key,
	nombres varchar(50),
	apellidos varchar(50),
	edad INT,
	curso varchar(50),
	fecha_registro varchar(10)
);

insert into estudiantes (id_estudiante,nombres,apellidos,edad,curso,fecha_registro)
values (1712345670,'Luis Enrique','Aristeguieta Jimenez',35, 'Base de Datos','2026-05-16'),
(1712345671,'Andrea Sofia','Morales Perez',22,'Programacion Java','2026-05-10'),
(1712345672,'Carlos Andres','Mendoza Vera',28,'Base de Datos','2026-05-11'),
(1712345673,'Maria Fernanda','Zambrano Lopez',19,'Desarrollo Web','2026-05-12'),
(1712345674,'Jorge Luis','Paredes Garcia',30,'Redes','2026-05-13'),
(1712345675,'Ana Lucia','Quintero Rojas',21,'Programacion Java','2026-05-14'),
(1712345676,'Pedro Miguel','Garcia Castro',26,'Base de Datos','2026-05-15'),
(1712345677,'Sofia Alejandra','Herrera Cedeño',24,'Desarrollo Web','2026-05-16'),
(1712345678,'Miguel Angel','Cedeño Salazar',32,'Seguridad Informatica','2026-05-17'),
(1712345679,'Valeria Nicole','Lopez Macias',20,'Programacion Java','2026-05-18'),
(1712345680,'Daniel Eduardo','Vera Torres',27,'Base de Datos','2026-05-19'),
(1712345681,'Luis Enrique','Aristeguieta Jimenez',35,'Seguridad Informatica','2026-05-20'),
(1712345682,'Andrea Sofia','Morales Perez',22,'Redes','2026-05-21'),
(1712345683,'Carlos Andres','Mendoza Vera',28,'Desarrollo Web','2026-05-22'),
(1712345684,'Maria Fernanda','Zambrano Lopez',19,'Programacion Java','2026-05-23');

-- Mostrar datos: 

select * from estudiantes; -- Todo los estudiantes
select nombres,curso from estudiantes; -- Nombre y cursos
select * from estudiantes where edad >18; -- Estudiantes mayores a 18
select * from estudiantes where edad between 18 and 25; -- Estudiantes entre 18 y 25
select * from estudiantes where  curso = 'Base de Datos'; -- Curso base de datos
select * from estudiantes where fecha_registro > '2026-03-01'; -- Registro despues del 01 de marzo
select * from estudiantes where fecha_registro > '2026-03-01' and fecha_registro <'2026-04-30'; -- Registro en 01/3 al 30/4

-- Actualizar 5 registro: 
-- update nombreTabla set columna/condicion(es) where condicion (es);

-- Curso:
update estudiantes
set curso = 'Inteleigencia Artificial'
where id_estudiante = 1712345670;

-- Edad:
update estudiantes
set edad = 32
where id_estudiante = 1712345671;

-- Fecha:
update estudiantes
set fecha_registro = '2026-05-16'
where id_estudiante = 1712345684;

-- Varios campos:
update estudiantes
set nombres = 'Armando Jose',
	edad = 100
where id_estudiante = 1712345683;

-- Varios campos de nuevo: 
update estudiantes 
set curso = 'Backend con Java',
    edad = 24,
    fecha_registro = '2026-06-10'
where id_estudiante = 1712345684;


-- Eliminar: 

--Por Id: 
delete from estudiantes
where id_estudiante = 1712345670;

--Por curso: 
delete from estudiantes
where curso = 'Seguridad Informatica';

--Por Edad: 
delete from estudiantes
where edad > 30;

-- Por fecha
delete from estudiantes
where fecha_registro > '2026-05-21' and fecha_registro < '2026-05-23';

-- eliminar por varios criterios
delete from estudiantes 
where curso = 'Programacion Java' and edad < 25;





