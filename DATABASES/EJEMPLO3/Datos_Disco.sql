INSERT INTO CANTANTE (id_cantante, nombre, pais) VALUES
(1, 'Shakira', 'Colombia'),
(2, 'Luis Miguel', 'Mexico'),
(3, 'Bad Bunny', 'Puerto Rico'),
(4, 'Adele', 'Reino Unido'),
(5, 'Juanes', 'Colombia');

INSERT INTO DISCO (id_disco, titulo, genero_musical, precio, id_cantante) VALUES
(101, 'Pies Descalzos', 'Pop', 15.99, 1),
(102, 'Romance', 'Balada', 18.50, 2),
(103, 'Un Verano Sin Ti', 'Reggaeton', 22.00, 3),
(104, '25', 'Pop', 20.75, 4),
(105, 'Mi Sangre', 'Rock Latino', 17.25, 5);

INSERT INTO CANCION (id_cancion, titulo) VALUES
(201, 'Estoy Aqui'),
(202, 'La Incondicional'),
(203, 'Tití Me Preguntó'),
(204, 'Hello'),
(205, 'A Dios Le Pido');

INSERT INTO BUSCAR (id_disco, id_cancion, posicion) VALUES
(101, 201, 1),
(102, 202, 1),
(103, 203, 1),
(104, 204, 1),
(105, 205, 1);
