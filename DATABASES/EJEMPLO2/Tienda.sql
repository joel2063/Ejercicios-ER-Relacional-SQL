CREATE DATABASE TIENDA;
USE TIENDA;

CREATE TABLE PRODUCTO(
	cod_producto INT NOT NULL,
	descripcion VARCHAR(200) NOT NULL,
	precio DOUBLE NOT NULL,
	cantidad INT NOT NULL,
    
PRIMARY KEY (cod_producto)
);
describe PRODUCTO;

CREATE TABLE CLIENTE(
	cod_cliente INT NOT NULL,
	nombre VARCHAR(100) NOT NULL,
	apellidos VARCHAR(100) NOT NULL,
	direccion VARCHAR(200) NOT NULL,
	telefono VARCHAR(10) NOT NULL,
    
PRIMARY KEY (cod_cliente)
);

CREATE TABLE PROVEEDOR(
	cod_proveedor INT NOT NULL,
	nombre VARCHAR(100) NOT NULL,
	apellidos VARCHAR(100) NOT NULL,
	direccion VARCHAR(200) NOT NULL,
	provincia VARCHAR(100) NOT NULL,
	telefono VARCHAR(10) NOT NULL,
    
    PRIMARY KEY (cod_proveedor)
);

CREATE TABLE COMPRA(
	cod_cliente INT NOT NULL,
    cod_producto INT NOT NULL,
	fecha_compra DATE NOT NULL,
    
primary key (cod_cliente, cod_producto, fecha_compra),
foreign key (cod_cliente) references CLIENTE(cod_cliente),
foreign key (cod_producto) references PRODUCTO(cod_producto)
);


CREATE TABLE SUMINISTAR(
	cod_producto INT NOT NULL,
    cod_proveedor INT NOT NULL,
	
primary key (cod_producto, cod_proveedor),
foreign key (cod_producto) references PRODUCTO(cod_producto),
foreign key(cod_proveedor) references PROVEEDOR(cod_proveedor)
);

