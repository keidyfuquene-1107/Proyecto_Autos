-- Insertar Marcas
INSERT INTO marcas (nombre, pais_origen) VALUES 
('Toyota', 'Japón'),
('Ford', 'Estados Unidos'),
('Volkswagen', 'Alemania');

-- Insertar Modelos
INSERT INTO modelos (id_marca, nombre, tipo) VALUES 
(1, 'Corolla', 'Sedan'),
(1, 'RAV4', 'SUV'),
(2, 'Mustang', 'Deportivo'),
(3, 'Golf', 'Hatchback');

-- Insertar Vehículos
INSERT INTO vehiculos (vin, placa, id_modelo, anio, color, transmision, combustible, kilometraje, precio) VALUES 
('1NXBR32E8FZ123456', 'ABC-1234', 1, 2022, 'Gris', 'Automática', 'Híbrido', 15000, 22000.00),
('1FA6P8CF0H5654321', 'XYZ-9876', 3, 2020, 'Rojo', 'Manual', 'Gasolina', 32000, 31000.00);