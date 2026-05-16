drop table if exists estudiantes;

create table estudiantes(
	id_estudiante int primary key,
	nombres varchar(50),
	apellidos varchar(50),
	edad int,
	curso varchar(50),
	fecha_registro varchar(10),
	correo varchar(100)
);

insert into estudiantes (id_estudiante,nombres,apellidos,edad,curso,fecha_registro,correo)
values 
(1712345670,'Luis Enrique','Aristeguieta Jimenez',35,'Base de Datos','2026-05-16','estu1@gmail.com'),
(1712345671,'Andrea Sofia','Morales Perez',22,'Programacion Java','2026-05-10','estu2@gmail.com'),
(1712345672,'Carlos Andres','Mendoza Vera',28,'Base de Datos','2026-05-11','estu3@gmail.com'),
(1712345673,'Maria Fernanda','Zambrano Lopez',19,'Desarrollo Web','2026-05-12','estu4@gmail.com'),
(1712345674,'Jorge Luis','Paredes Garcia',30,'Redes','2026-05-13','estu5@gmail.com'),
(1712345675,'Ana Lucia','Quintero Rojas',21,'Programacion Java','2026-05-14','estu6@gmail.com'),
(1712345676,'Pedro Miguel','Garcia Castro',26,'Base de Datos','2026-05-15','estu7@gmail.com'),
(1712345677,'Sofia Alejandra','Herrera Cedeño',24,'Desarrollo Web','2026-05-16','estu8@gmail.com'),
(1712345678,'Miguel Angel','Cedeño Salazar',32,'Seguridad Informatica','2026-05-17','estu9@gmail.com'),
(1712345679,'Valeria Nicole','Lopez Macias',20,'Programacion Java','2026-05-18','estu10@gmail.com'),
(1712345680,'Daniel Eduardo','Vera Torres',27,'Base de Datos','2026-05-19','estu11@gmail.com'),
(1712345681,'Luis Enrique','Aristeguieta Jimenez',35,'Seguridad Informatica','2026-05-20','estu1@gmail.com'),
(1712345682,'Andrea Sofia','Morales Perez',22,'Redes','2026-05-21','estu2@gmail.com'),
(1712345683,'Carlos Andres','Mendoza Vera',28,'Desarrollo Web','2026-05-22','estu3@gmail.com'),
(1712345684,'Maria Fernanda','Zambrano Lopez',19,'Programacion Java','2026-05-23','estu4@gmail.com');

-- mostrar datos

select * from estudiantes; -- todo los estudiantes
select nombres,curso from estudiantes; -- nombre y cursos
select * from estudiantes where edad > 18; -- estudiantes mayores a 18
select * from estudiantes where edad between 18 and 25; -- estudiantes entre 18 y 25
select * from estudiantes where curso = 'Base de Datos'; -- curso base de datos
select * from estudiantes where fecha_registro > '2026-03-01'; -- registro despues del 01 de marzo
select * from estudiantes where fecha_registro > '2026-03-01' and fecha_registro < '2026-04-30'; -- registro entre 01/03 y 30/04

-- actualizar registros

-- curso
update estudiantes
set curso = 'Inteligencia Artificial'
where id_estudiante = 1712345670;

-- edad
update estudiantes
set edad = 32
where id_estudiante = 1712345671;

-- fecha
update estudiantes
set fecha_registro = '2026-05-16'
where id_estudiante = 1712345684;

-- varios campos
update estudiantes
set nombres = 'Armando Jose',
    edad = 100
where id_estudiante = 1712345683;

-- varios campos nuevamente
update estudiantes
set curso = 'Backend con Java',
    edad = 24,
    fecha_registro = '2026-06-10'
where id_estudiante = 1712345684;

-- por correo
update estudiantes
set correo = 'nuevo@gmail.com'
where id_estudiante = 1712345679;

-- actualizar correo nuevamente
update estudiantes
set correo = 'nuevaactualizacion@gmail.com'
where id_estudiante = 1712345677;

-- eliminar registros

-- por id
delete from estudiantes
where id_estudiante = 1712345670;

-- por curso
delete from estudiantes
where curso = 'Seguridad Informatica';

-- por edad
delete from estudiantes
where edad > 30;

-- por fecha
delete from estudiantes
where fecha_registro > '2026-05-21' and fecha_registro < '2026-05-23';

-- eliminar por varios criterios
delete from estudiantes
where curso = 'Programacion Java' and edad < 25;

-- eliminar por correo
delete from estudiantes
where correo = 'estu11@gmail.com';

-- eliminar por correo repetido
delete from estudiantes
where correo = 'estu1@gmail.com';

-- consultas por fecha

select * from estudiantes where fecha_registro > '2026-02-01'; -- registrados despues de 2026-02-01
select * from estudiantes where fecha_registro < '2026-05-01'; -- registrados antes de 2026-05-01
select * from estudiantes where fecha_registro between '2026-05-10' and '2026-05-20'; -- registrados entre dos fechas
select * from estudiantes where fecha_registro = '2026-03-15'; -- registrados exactamente el 2026-03-15
select * from estudiantes where curso like '%Programacion%' and fecha_registro > '2026-01-01'; -- programacion despues de 2026-01-01