INSERT INTO PRODUCTO (cod_producto, descripcion, precio, cantidad) 
VALUES
(1, 'Laptop HP', 850.50, 10),
(2, 'Mouse Logitech', 25.75, 50),
(3, 'Teclado Redragon', 45.00, 30),
(4, 'Monitor Samsung', 220.99, 15),
(5, 'Impresora Epson', 180.00, 8);

INSERT INTO CLIENTE (cod_cliente, nombre, apellidos, direccion, telefono) 
VALUES
(1100000001, 'Juan', 'Perez', 'clodoveo', '0987654321'),
(1100000002, 'Maria', 'Lopez', 'Las Pitas', '0991234567'),
(1100000003, 'Carlos', 'Ramirez', 'Turunuma', '0974561238'),
(1100000004, 'Ana', 'Torres', 'Consacola', '0968527410'),
(1100000005, 'Luis', 'Mendoza', 'Colinas Lojanas', '0957412589');

INSERT INTO PROVEEDOR (cod_proveedor, nombre, apellidos, direccion, provincia, telefono) 
VALUES
(000001, 'Pedro', 'Gomez', 'Av. Universitaria', 'Loja', '0987412365'),
(000002, 'Lucia', 'Martinez', 'Calle Bolivar', 'Pichincha', '0998521476'),
(000003, 'Jose', 'Castro', 'Av. Americas', 'Azuay', '0977412589'),
(000004, 'Elena', 'Rojas', 'Malecon', 'Guayas', '0963214785'),
(000005, 'Miguel', 'Vera', 'Calle Sucre', 'Loja', '0959632587');

INSERT INTO COMPRA (cod_cliente, cod_producto, fecha_compra) VALUES
(1100000001, 1, '2026-05-01'),
(1100000002, 2, '2026-05-02'),
(1100000003, 3, '2026-05-03'),
(1100000004, 4, '2026-05-04'),
(1100000005, 5, '2026-05-05');

INSERT INTO SUMINISTAR (cod_producto, cod_proveedor) VALUES
(1, 000001),
(2, 000002),
(3, 000003),
(4, 000004),
(5, 000005);

