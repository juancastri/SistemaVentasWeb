

Select * from USUARIO

INSERT INTO USUARIO(Nombres,Apellidos,Correo,Clave) values ('test nombre', 'test apellido','test@example.com','ecd71870d1963316a97e3ac3408c9835ad8cf0f3c1bc703527c30265534f75ae')


Select * from CATEGORIA

INSERT INTO CATEGORIA(Descripcion) values
('Tecnologia'),
('Muebles'),
('Dormitorio'),
('Deportes')


select * from MARCA

INSERT INTO MARCA(Descripcion) values
('SONYTE'),
('HPTE'),
('LGTE'),
('HYUNDAITE'),
('CANONTE'),
('ROBERTA ALLENTE')


select * from PAIS

INSERT INTO PAIS(IdPais,Descripcion) values  ('01','Colombia')


select * from DEPARTAMENTO

INSERT INTO DEPARTAMENTO(IdDepartamento,Descripcion,IdPais) VALUES 
--Colombia - Departamentos
('0101', 'Antioquia', '01'),
('0102', 'Bogota', '01'),
('0103', 'Caldas', '01'),
('0104', 'Cauca', '01')


 

INSERT INTO CIUDAD(IdCiudad,Descripcion,IdDepartamento,IdPais) VALUES 
--Antioquia - Ciudades
('010101', 'Medellin', '0101', '01'),
('010102', 'La estrella', '0101', '01'),

--Bogota - Ciudades
('010203', 'Santa fe', '0102', '01'),
('010204', 'Kennedy', '0102', '01'),

--Caldas - Ciudades
('010203', 'Manizales', '0103', '01'),
('010204', 'Filadelfia', '0103', '01'),

--Cauca - Ciudades
('010203', 'Popayan', '0104', '01'),
('010204', 'Bolivar', '0104', '01')






