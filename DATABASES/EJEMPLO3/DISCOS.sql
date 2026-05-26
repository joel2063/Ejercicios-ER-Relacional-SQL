CREATE DATABASE DISCOS;
USE DISCOS;

CREATE TABLE CANTANTE(
    id_cantante INT NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    pais VARCHAR(100) NOT NULL,

    primary key	(id_cantante)
);

CREATE TABLE DISCO(
    id_disco INT NOT NULL,
    titulo VARCHAR(200) NOT NULL,
    genero_musical VARCHAR(100) NOT NULL,
    precio DOUBLE NOT NULL,
    id_cantante INT NOT NULL,

    primary key (id_disco),
    foreign key (id_cantante) references CANTANTE(id_cantante)
);

CREATE TABLE CANCION(
    id_cancion INT NOT NULL,
    titulo VARCHAR(200) NOT NULL,

    primary key (id_cancion)
);

CREATE TABLE BUSCAR(
    id_disco INT NOT NULL,
    id_cancion INT NOT NULL,
    posicion INT NOT NULL,

    primary key (id_disco, id_cancion),
    foreign key (id_disco) references DISCO(id_disco),
    foreign key (id_cancion) references CANCION(id_cancion)
);

