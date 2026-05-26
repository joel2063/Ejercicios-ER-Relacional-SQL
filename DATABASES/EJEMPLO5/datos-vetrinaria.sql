INSERT INTO PROPIETARIO (cedula, apellidos, nombres, direccion, telefono) VALUES
('1101234567', 'Mora Castillo', 'Juan Carlos', 'Las Pitas', '0991234567'),
('0702345678', 'Lopez Jimenez', 'Maria Fernanda', 'Clodoveo Jaramillo', '0992345678'),
('1003456789', 'Perez Aguilar', 'Luis Alberto', 'Colinas Lojanas', '0993456789'),
('1104567890', 'Sanchez Torres', 'Ana Lucia', 'San Jose', '0994567890'),
('0705678901', 'Jaramillo Vega', 'Pedro Miguel', 'Turunuma', '0995678901');

INSERT INTO FAMILIAR (cedula, nombre, telefono, cedula_propietario) VALUES
('1109876543', 'Carlos Mora', '0998765432', '1101234567'),
('0708765432', 'Patricia Lopez', '0997654321', '0702345678'),
('1007654321', 'Jose Perez', '0996543210', '1003456789'),
('1106543210', 'Rosa Sanchez', '0995432109', '1104567890'),
('0705432109', 'Miguel Jaramillo', '0994321098', '0705678901');


INSERT INTO MASCOTA (id_mascota, nombre, tipo, fecha_nacimiento, cedula_propietario) VALUES
(1, 'Firulais', 'Perro', '2020-05-10', '1101234567'),
(2, 'Michi', 'Gato', '2021-08-15', '0702345678'),
(3, 'Rocky', 'Perro', '2019-11-20', '1003456789'),
(4, 'Luna', 'Gato', '2022-02-18', '1104567890'),
(5, 'Max', 'Conejo', '2023-01-25', '0705678901');


INSERT INTO PERSONAL_CLINICA (codigo, cedula, nombre) VALUES
(1, '1101122233', 'Andres Vega'),
(2, '0702233445', 'Lucia Torres'),
(3, '1003344556', 'Carlos Mena'),
(4, '1104455667', 'Paola Ruiz'),
(5, '0705566778', 'Diego Castro');


INSERT INTO VETERINARIO (codigo, fecha_alta, especialidad) VALUES
(1, '2020-01-15', 'Cirugia'),
(2, '2021-03-20', 'Dermatologia'),
(3, '2019-06-10', 'Medicina General');


INSERT INTO AUXILIAR (codigo, base_cotizacion) VALUES
(4, 850.00),
(5, 900.00);


INSERT INTO CONSULTA (id_mascota, codigo_veterinario, fecha, diagnostico) VALUES
(1, 1, '2024-01-10', 'Vacunacion general'),
(2, 2, '2024-02-15', 'Alergia en la piel'),
(3, 3, '2024-03-20', 'Control rutinario'),
(4, 1, '2024-04-12', 'Infeccion estomacal'),
(5, 2, '2024-05-18', 'Revision general');
