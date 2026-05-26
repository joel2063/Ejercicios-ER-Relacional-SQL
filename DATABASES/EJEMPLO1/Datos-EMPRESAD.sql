INSERT INTO MANAGER (id_manager, nombre) 
VALUES
(1, 'Carlos Perez'),
(2, 'Ana Torres'),
(3, 'Luis Mendoza'),
(4, 'María Gomez'),
(5, 'Pedro Miguel');

INSERT INTO ARTISTA (Cl, nombre_c, id_manager) VALUES
(1100000001, 'Juan Lopez', 1),
(1100000002, 'Sofía Martinez', 1),
(1100000003, 'Andres Castro', 2),
(1100000004, 'Camila Herrera', 3),
(1100000005, 'Diego Morales', 4);

INSERT INTO EVENTO (id_evento, fecha, numero_asistentes) VALUES
(1, '2026-05-10', 500),
(2, '2026-06-15', 800),
(3, '2026-07-20', 350),
(4, '2026-08-05', 1000),
(5, '2026-09-12', 650);

INSERT INTO PARTICIPA (id_evento, Cl) VALUES
(1, 1100000001),
(1, 1100000002),
(2, 1100000003),
(3, 1100000004),
(4, 1100000005),
(5, 1100000001),
(5, 1100000003);
