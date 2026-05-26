CREATE database EMPRESAD;
USE EMPRESAD;

CREATE TABLE MANAGER(
id_manager INT NOT NULL,
nombre VARCHAR(100) NOT NULL,
primary key (id_manager)
);

CREATE TABLE ARTISTA(
Cl INT NOT NULL,
nombre_c VARCHAR (200) NOT NULL,
id_manager INT NOT NULL,

primary key (cl),
foreign key (id_manager) references MANAGER(id_manager)
);

CREATE TABLE EVENTO(
id_evento INT NOT NULL,
fecha DATE NOT NULL,
numero_asistentes INT,

primary key(id_evento)
);

CREATE TABLE PARTICIPA(
id_evento INT NOT NULL,
Cl INT NOT NULL,

primary key(id_evento, Cl),
foreign key (Cl) references ARTISTA(Cl),
foreign key (id_evento) references EVENTO(id_evento)
);
SHOW TABLES;
select *FROM PARTICIPA;
