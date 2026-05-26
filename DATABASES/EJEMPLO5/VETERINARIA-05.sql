CREATE DATABASE VETERINARIA;
USE VETERINARIA;

CREATE TABLE PROPIETARIO(
    cedula VARCHAR(10) NOT NULL,
    apellidos VARCHAR(100) NOT NULL,
    nombres VARCHAR(100) NOT NULL,
    direccion VARCHAR(200) NOT NULL,
    telefono VARCHAR(10) NOT NULL,

    PRIMARY KEY (cedula)
);

CREATE TABLE FAMILIAR(
    cedula VARCHAR(10) NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    telefono VARCHAR(10) NOT NULL,
    cedula_propietario VARCHAR(10),

    PRIMARY KEY (cedula),
    FOREIGN KEY (cedula_propietario) REFERENCES PROPIETARIO(cedula)
);

CREATE TABLE MASCOTA(
    id_mascota INT NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    tipo VARCHAR(50) NOT NULL,
    fecha_nacimiento DATE NOT NULL,
    cedula_propietario VARCHAR(10) NOT NULL,

    PRIMARY KEY (id_mascota),
    FOREIGN KEY (cedula_propietario) REFERENCES PROPIETARIO(cedula)
);

CREATE TABLE PERSONAL_CLINICA(
    codigo INT NOT NULL,
    cedula VARCHAR(10) NOT NULL,
    nombre VARCHAR(100) NOT NULL,

    PRIMARY KEY (codigo)
);

CREATE TABLE VETERINARIO(
    codigo INT NOT NULL,
    fecha_alta DATE NOT NULL,
    especialidad VARCHAR(100) NOT NULL,

    PRIMARY KEY (codigo),
    FOREIGN KEY (codigo) REFERENCES PERSONAL_CLINICA(codigo)
);

CREATE TABLE AUXILIAR(
    codigo INT NOT NULL,
    base_cotizacion DECIMAL(10,2) NOT NULL,

    PRIMARY KEY (codigo),
    FOREIGN KEY (codigo) REFERENCES PERSONAL_CLINICA(codigo)
);

CREATE TABLE CONSULTA(
    id_consulta INT NOT NULL AUTO_INCREMENT,
    id_mascota INT NOT NULL,
    codigo_veterinario INT NOT NULL,
    fecha DATE NOT NULL,
    diagnostico VARCHAR(200) NOT NULL,

    PRIMARY KEY (id_consulta),
    FOREIGN KEY (id_mascota) REFERENCES MASCOTA(id_mascota),
    FOREIGN KEY (codigo_veterinario) REFERENCES VETERINARIO(codigo)
);

