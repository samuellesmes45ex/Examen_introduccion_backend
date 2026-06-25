create database tienda_libros;


mysql> create table if not exists autor_libro ( cod_autor int not null, cod_libro int not null, primary key (cod_autor, cod_libro), foreign key (cod_autor) references autor(codigo), foreign key (cod_libro) references libro(codigo) );^C
mysql> show tables;

create table if not exists pedidos( metodo_pago varchar(50) primary key, monto_metodopago integer(100) not null, fecha_pedido datetime not null);

create table if not exists editorial( nombre_editorial varchar(50)primary
 key);

create table if not exists autores ( nombre_autor varchar(50)primary key);

create table clientes ( nombre varchar(50) not
    -> null, correo varchar(100) not null, telefono varchar(13) not null, direccion varchar(100), primary key (nombre) );

create table if not exists categoria( nombre_categoria varchar(50) primary key);

INSERT INTO libros (titulo, isbn, fech_publicacion, stock_libro) VALUES 
 ('El principito',      '978-3-16-148410-0', '1943-04-06', 50),   ('Orgullo y prejuicio',    '9780141439600', '1813-01-28', 30),   ('1984',  '9780553213117', '1949-06-08',  20);

INSERT INTO autores (nombre_autor) VALUES   ('Antoine de Saint-Ex upery'),   ('Jane Austen'),  ('George Orwell');

INSERT INTO editorial (nombre_editorial) VALUES   ('Gallimard'),   ('Penguin Classics'),  ('Signet Classics');

INSERT INTO categoria (nombre_categoria) VALUES   ('infantil'),   ('Romance'),  ('CIencia Ficcion');