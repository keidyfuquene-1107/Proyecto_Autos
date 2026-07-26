SELECT 
    v.placa,
    m.nombre AS marca,
    mo.nombre AS modelo,
    v.anio,
    v.color,
    v.precio,
    v.estado
FROM vehiculos v
JOIN modelos mo ON v.id_modelo = mo.id_modelo
JOIN marcas m ON mo.id_marca = m.id_marca;