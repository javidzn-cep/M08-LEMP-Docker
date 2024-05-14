CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    email VARCHAR(100),
    edad INT,
    fecha_nacimiento DATE
);

INSERT INTO usuarios (nombre, apellido, email, edad, fecha_nacimiento) VALUES 
    ('Juan', 'Perez', 'juan@example.com', 25, '1999-05-15'),
    ('María', 'González', 'maria@example.com', 30, '1992-10-20'),
    ('Pedro', 'López', 'pedro@example.com', 28, '1994-07-08'),
    ('Laura', 'Martínez', 'laura@example.com', 35, '1989-03-25'),
    ('Carlos', 'Rodríguez', 'carlos@example.com', 22, '2002-01-10'),
    ('Ana', 'Fernández', 'ana@example.com', 29, '1993-08-12'),
    ('Luis', 'Sánchez', 'luis@example.com', 40, '1982-06-18'),
    ('Elena', 'Díaz', 'elena@example.com', 26, '1998-11-30'),
    ('Miguel', 'Gómez', 'miguel@example.com', 33, '1989-09-05'),
    ('Sofía', 'Ruiz', 'sofia@example.com', 27, '1995-04-22');