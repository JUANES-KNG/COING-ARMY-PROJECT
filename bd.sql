CREATE DATABASE coing_2;

USE coing_2;

CREATE TABLE productos(
    id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    codigo VARCHAR(255) NOT NULL,
    nombre VARCHAR(255) NOT NULL,
    compra DECIMAL(8,2) NOT NULL,
    venta DECIMAL(8,2) NOT NULL,
    existencia INT NOT NULL
);

CREATE TABLE clientes(
    id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    telefono VARCHAR(25) NOT NULL,
    direccion VARCHAR(255) NOT NULL
);

CREATE TABLE usuarios(
    id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    usuario VARCHAR(50) NOT NULL,
    nombre VARCHAR(255) NOT NULL,
    telefono VARCHAR(25) NOT NULL,
    direccion VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL
);

INSERT INTO usuarios (usuario, nombre, telefono, direccion, password) VALUES ("ADMIN", "juan", "3124082284", "N/A", "$2y$10$Kd9pKTZLYCnRA0Zvgbrl9uUsC5zRp.HiFSPpv6BzXhxG6Xa.ZjvZe");
                                                                                                                                     

CREATE TABLE ventas(
    id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    fecha DATETIME NOT NULL,
    total DECIMAL(9,2) NOT NULL,
    idUsuario BIGINT NOT NULL,
    idCliente BIGINT
);  

CREATE TABLE productos_ventas(
    id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    cantidad INT NOT NULL,
    precio DECIMAL(8,2) NOT NULL,
    idProducto BIGINT NOT NULL,
    idVenta BIGINT NOT NULL
);
