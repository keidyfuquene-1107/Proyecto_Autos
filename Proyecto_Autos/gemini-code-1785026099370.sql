-- 1. Tabla de Marcas
CREATE TABLE marcas (
    id_marca INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL UNIQUE,
    pais_origen VARCHAR(50)
);

-- 2. Tabla de Modelos
CREATE TABLE modelos (
    id_modelo INT AUTO_INCREMENT PRIMARY KEY,
    id_marca INT NOT NULL,
    nombre VARCHAR(50) NOT NULL,
    tipo VARCHAR(30), -- Sedan, SUV, Hatchback, Pickup, etc.
    FOREIGN KEY (id_marca) REFERENCES marcas(id_marca) ON DELETE CASCADE
);

-- 3. Tabla Principal de Vehículos (Carros)
CREATE TABLE vehiculos (
    id_vehiculo INT AUTO_INCREMENT PRIMARY KEY,
    vin VARCHAR(17) UNIQUE,               -- Número de chasis (VIN)
    placa VARCHAR(10) UNIQUE NOT NULL,      -- Matrícula / Patente
    id_modelo INT NOT NULL,
    anio INT NOT NULL,
    color VARCHAR(30),
    transmision VARCHAR(20),                -- Manual, Automática
    combustible VARCHAR(20),                -- Gasolina, Diésel, Híbrido, Eléctrico
    kilometraje INT DEFAULT 0,
    precio DECIMAL(12, 2),                  -- Precio de venta o alquiler
    estado VARCHAR(20) DEFAULT 'Disponible',-- Disponible, Vendido, En Mantenimiento
    fecha_ingreso DATE DEFAULT (CURRENT_DATE),
    FOREIGN KEY (id_modelo) REFERENCES modelos(id_modelo)
);

-- 4. Tabla de Historial de Mantenimiento (Opcional pero muy útil)
CREATE TABLE mantenimientos (
    id_mantenimiento INT AUTO_INCREMENT PRIMARY KEY,
    id_vehiculo INT NOT NULL,
    fecha DATE NOT NULL,
    tipo_servicio VARCHAR(100) NOT NULL,    -- Cambio de aceite, frenos, revisión general
    costo DECIMAL(10, 2),
    kilometraje_en_servicio INT,
    descripcion TEXT,
    FOREIGN KEY (id_vehiculo) REFERENCES vehiculos(id_vehiculo) ON DELETE CASCADE
);