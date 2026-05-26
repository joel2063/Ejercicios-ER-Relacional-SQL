CREATE DATABASE CAMION;
USE CAMION;

CREATE TABLE CAMIONERO(
    cedula VARCHAR(10) NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    telefono VARCHAR(10) NOT NULL,
    direccion VARCHAR(200) NOT NULL,
    salario DOUBLE NOT NULL,
    poblacion VARCHAR(100) NOT NULL,

    PRIMARY KEY (cedula)
);

CREATE TABLE PROVINCIA(
    cod_provincia INT NOT NULL,
    nombre VARCHAR(100) NOT NULL,

    PRIMARY KEY (cod_provincia)
);

CREATE TABLE CAMION(
    matricula VARCHAR(100) NOT NULL,
    modelo VARCHAR(100) NOT NULL,
    tipo VARCHAR(50) NOT NULL,
    potencia VARCHAR(50) NOT NULL,

    PRIMARY KEY (matricula)
);

CREATE TABLE PAQUETE(
    cod_paquete INT NOT NULL,
    descripcion VARCHAR(200) NOT NULL,
    destinatario VARCHAR(100) NOT NULL,
    dir_destinatario VARCHAR(200) NOT NULL,
    cedula VARCHAR(10) NOT NULL,
    cod_provincia INT NOT NULL,

    PRIMARY KEY (cod_paquete),
    FOREIGN KEY (cedula) REFERENCES CAMIONERO(cedula),
    FOREIGN KEY (cod_provincia) REFERENCES PROVINCIA(cod_provincia)
);

CREATE TABLE CONDUCE(
    cedula VARCHAR(10) NOT NULL,
    matricula VARCHAR(10) NOT NULL,
    fecha DATE NOT NULL,

    PRIMARY KEY (cedula, matricula, fecha),
    FOREIGN KEY (cedula) REFERENCES CAMIONERO(cedula),
    FOREIGN KEY (matricula) REFERENCES CAMION(matricula)
);

