use Practica5;
go




select * from Materias;
--En esta parte se seleccionan todos los datos de la tabla materias

select *from Libros 
where Edicion > 10;
-- se escoje de la tabla de libros donde la edicion del libro sea mayor a 10 

select *from Alumnos 
where Matricula >20+5;
--De la tabla de alumno  se mostraran a los alumnos que tengan una matricula mayor a 25


select * from Maestros inner join Materias on Maestros.Nombre != Materias.NombreDeLaMateria
-- se juntan las tablass de maestros y materias y quiero que me muestre cuando los nombres no son iguales de los maestros con los de la materia 

select * from Nomina inner join Excursion on Nomina.Pago = Excursion.PrecioPorAlumno
-- se combinan dos tablas  que es la de nomina y excursion la cual manda datos en las  cuales la nomina es igual al precio de la excursion por alumno

select * from PagosDeColegiatura inner join Nomina on PagosDeColegiatura.PagoFinal < Nomina.Pago
-- se combinan dos tablas que es la de nomina y el pago final de colegiatura  el cual mostrara los datos del pago final de colegiatura que sean menores a el pago de nomina

select * from PagosDeColegiatura left outer join Nomina on PagosDeColegiatura.PagoFinal < Nomina.Pago
-- se combinan 2 tablas que es la de pagos de colegiatura y nomina los cuales el left joinnos permite seleccionar algunas fulas de una tabla aunque estas no tengan correspondencia con las filas de la otra tabla las cuales el pago final tiene que ser menor al pago de la nomina

select * from Nomina right outer join Excursion on Nomina.Pago = Excursion.PrecioPorAlumno
where Nomina.Pago > 2
-- se busca que  el pago de la nomina sea igual al precio por alumno pero con una condicion de que tiene que ser mayor de 2

select * into PagosFinalBackup from PagosDeColegiatura
-- hacer un backup  de la tabla de pagos de colegiatura

Drop table PagosFinalBackup;
--tumba la tabla de pagos final backup

select Pago, min(Horas) 'horas'
from Nomina
group by Pago, Horas
having Horas < 10;

-- aqui se selecciona de la tabla pago las horas minimas a 10 
use [Practica5];
go
select * from  Alumnos
group by ApellidoMaterno
having (ApellidoMaterno) = 'garza';
-- se busca en la tabla de alumnos  el apellido materno que es garza
 
