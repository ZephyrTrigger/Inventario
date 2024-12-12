
-- Create the 'inventario' table in MySQL
CREATE TABLE inventario (
    id INT AUTO_INCREMENT PRIMARY KEY,
    sku VARCHAR(255),
    descripcion TEXT,
    cantidad INT,
    ubicacion TEXT,
    codigo_barras VARCHAR(255),
    costo DECIMAL(10,2),
    categoria VARCHAR(255)
);

-- Insert data into the 'inventario' table

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (1, 'PROD-2516', 'OIL Filter Derco DFO-924/10', 3, 'A-01', 
        '7807368009071', 2000.0, 'Filtro de Aceite');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (2, 'PROD-3140', 'OIL Filter Troop TFO-927/8', 4, 'A-01', 
        '7807368009477', 2000.0, 'Filtro de Aceite');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (3, 'PROD-8417', 'OIL Filter Troop TFO-WP 928/81', 4, 'A-01', 
        '7807368009323', 2000.0, 'Filtro de Aceite');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (4, 'PROD-4551', 'OIL Filter Derco DFO-WP 928/81', 1, 'A-01', 
        '7807368009149', 2000.0, 'Filtro de Aceite');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (5, 'PROD-8378', 'OIL Filter Troop TFO-940/1', 4, 'A-01', 
        '7807368009194', 2000.0, 'Filtro de Aceite');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (6, 'PROD-1656', 'OIL Filter Derco DFO-940/1', 3, 'A-01', 
        '7807368008975', 2000.0, 'Filtro de Aceite');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (7, 'PROD-9344', 'OIL Filter Troop TFO-H951X', 5, 'A-01', 
        '7807368009286', 5000.0, 'Filtro de Aceite');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (8, 'PROD-9326', 'OIL Filter Troop TFO-1026', 4, 'A-01', 
        '0000008003179', 2000.0, 'Filtro de Aceite');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (9, 'PROD-7202', 'OIL Filter TFO-1114/80', 3, 'A-01', 
        '7807368009163', 2000.0, 'Filtro de Aceite');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (10, 'PROD-4255', 'OIL Filter Derco DFO-830/3', 6, 'A-02', 
        '7807368008968', 2000.0, 'Filtro de Aceite');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (11, 'PROD-8911', 'OIL Filter Troop TFO-830/3', 12, 'A-02', 
        '7807368009262', 2000.0, 'Filtro de Aceite');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (12, 'PROD-5590', 'OIL Filter Rainbow W920/21', 8, 'A-02', 
        'Sin cod.', 2000.0, 'Filtro de Aceite');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (13, 'PROD-2347', 'OIL Filter Troop TFO-920/21', 3, 'A-02', 
        '7807368009484', 2000.0, 'Filtro de Aceite');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (14, 'PROD-8026', 'OIL Filter Derco DFO-920/41', 6, 'A-02', 
        '7807368008753', 2000.0, 'Filtro de Aceite');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (15, 'PROD-2963', 'OIL Filter Troop TFO-920/41', 6, 'A-02', 
        '7807368009255', 2000.0, 'Filtro de Aceite');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (16, 'PROD-5565', 'OIL Filter Troop TFO-920/82', 6, 'A-02', 
        '7807368009576', 2000.0, 'Filtro de Aceite');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (17, 'PROD-6972', 'OIL Filter Troop TFO 67/80', 8, 'A-03', 
        '7807368009521', 2000.0, 'Filtro de Aceite');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (18, 'PROD-7720', 'OIL Filter STP W67/80', 6, 'A-03', 
        '0009532', 2000.0, 'Filtro de Aceite');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (19, 'PROD-6598', 'OIL Filter Troop TFO-67/81', 17, 'A-03', 
        '7807368009514', 2000.0, 'Filtro de Aceite');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (20, 'PROD-3330', 'OIL Filter Derco DFO 67/81', 1, 'A-03', 
        '7807368008999', 2000.0, 'Filtro de Aceite');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (21, 'PROD-9447', 'OIL Filter Derco DFO 68/80', 2, 'A-03', 
        '7807368008838', 2000.0, 'Filtro de Aceite');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (22, 'PROD-8156', 'OIL Filter Troop TFO 68/80', 12, 'A-03', 
        '7807368009392', 2000.0, 'Filtro de Aceite');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (23, 'PROD-4465', 'OIL Filter Derco DFO 68/85', 15, 'A-03', 
        '7807368008890', 2000.0, 'Filtro de Aceite');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (24, 'PROD-7963', 'OIL Filter ACDelco W6885', 4, 'A-03', 
        '193468469721', 2000.0, 'Filtro de Aceite');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (25, 'PROD-5458', 'OIL Filter Derco DFO 75/2', 3, 'A-03', 
        '7807368008777', 2000.0, 'Filtro de Aceite');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (26, 'PROD-2344', 'OIL Filter Troop TFO 75/2', 4, 'A-03', 
        '7807368009415', 2000.0, 'Filtro de Aceite');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (27, 'PROD-1085', 'OIL Filter PSA HU 7032', 2, 'A-03', 
        '1680682480', 2000.0, 'Filtro de Aceite');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (28, 'PROD-2345', 'OIL Filter HK UJ-1751B', 1, 'A-03', 
        '6933236917511', 2000.0, 'Filtro de Aceite');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (29, 'PROD-6520', 'OIL Filter FilTec HU 6006Z', 3, 'A-03', 
        'Sin cod.0', 2000.0, 'Filtro de Aceite');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (30, 'PROD-7335', 'OIL Filter Troop TFO HU711/51X', 4, 'A-03', 
        '7807368009309', 2000.0, 'Filtro de Aceite');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (31, 'PROD-2491', 'OIL Filter Troop TFO 610/80', 18, 'A-04', 
        '7807368009507', 2000.0, 'Filtro de Aceite');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (32, 'PROD-2313', 'OIL Filter Derco DFO 610/80', 8, 'A-04', 
        '7807368008913', 2000.0, 'Filtro de Aceite');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (33, 'PROD-2327', 'OIL Filter Troop TFO 610/82', 5, 'A-04', 
        '7807368009491', 2000.0, 'Filtro de Aceite');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (34, 'PROD-7021', 'OIL Filter Bosch O 1001', 1, 'A-04', 
        '4047026503104', 2000.0, 'Filtro de Aceite');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (35, 'PROD-5611', 'OIL Filter Derco DFO-HU 611/1X', 3, 'A-04', 
        '7807368008685', 2000.0, 'Filtro de Aceite');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (36, 'PROD-7440', 'OIL Filter Troop TFO HU612X', 4, 'A-04', 
        '7807368009316', 2000.0, 'Filtro de Aceite');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (37, 'PROD-5705', 'OIL Filter Derco DFO HU 616X', 8, 'A-04', 
        '7807368008982', 2000.0, 'Filtro de Aceite');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (38, 'PROD-7511', 'OIL Filter Kendall HU612/2X', 1, 'A-04', 
        '060820896', 2000.0, 'Filtro de Aceite');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (39, 'PROD-5979', 'OIL Filter Kendall HU7002Z', 1, 'A-04', 
        '060821039', 2000.0, 'Filtro de Aceite');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (40, 'PROD-6837', 'OIL Filter Derco DFO HU7001X', 4, 'A-04', 
        '7807368008951', 2000.0, 'Filtro de Aceite');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (41, 'PROD-7393', 'OIL Filter Kendall HU 7019X', 2, 'A-04', 
        '060820918', 2000.0, 'Filtro de Aceite');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (42, 'PROD-7794', 'OIL Filter Mann HU 7019X', 2, 'A-04', 
        'Sin cod.1', 2000.0, 'Filtro de Aceite');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (43, 'PROD-4806', 'Filtro Combustible Donaldson P550632', 2, 'A-05', 
        '742330145036', 2000.0, 'Filtro Combustible');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (44, 'PROD-7052', 'Filtro Combustible Separador de Agua Tecfil PSD 480/1 ', 3, 'A-05', 
        '7891342004893', 2000.0, 'Filtro Combustible');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (45, 'PROD-8789', 'Fuel Filter RACOR/PARKER  23B 127 177 PU9178', 2, 'A-05', 
        'Sin cod.2', 2000.0, 'Filtro Combustible');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (46, 'PROD-4027', 'OIL Filter PMC OE:2632552003', 2, 'A-05', 
        'Sin cod.3', 2000.0, 'Filtro de Aceite');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (47, 'PROD-7483', 'OIL Filter Onnuri HU 612/2X', 6, 'A-05', 
        'Sin cod.4', 2000.0, 'Filtro de Aceite');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (48, 'PROD-3344', 'Filtro Combustible Motorcraft R/FG/87', 1, 'A-05', 
        'Sin cod.5', 2000.0, 'Filtro Combustible');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (49, 'PROD-8855', 'Filtro Aceite de transmisión automática DPS6', 2, 'A-05', 
        'Sin cod.6', 2000.0, 'Filtro de Aceite');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (50, 'PROD-9882', 'Filtro Combustible Donaldson P550463', 2, 'A-05', 
        '742330112250', 2000.0, 'Filtro Petroleo');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (51, 'PROD-3272', 'Refrigerante Ciclon JP500 10Litros', 6, 'A-05', 
        'CICLON_JP500_10', 2000.0, 'Refrigerante');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (52, 'PROD-1879', 'OIL Filter Derco DFO HU716/2X', 10, 'B-01', 
        '7807368008821', 2000.0, 'Filtro de Aceite');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (53, 'PROD-9628', 'OIL filter Derco DFO HU719/3X', 5, 'B-01', 
        '7807368008944', 2000.0, 'Filtro de Aceite');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (54, 'PROD-2284', 'OIL Filter Troop TFO 719/15', 11, 'B-01', 
        '7807368009545', 2000.0, 'Filtro de Aceite');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (55, 'PROD-8557', 'OIL Filter Troop TFO 719/27', 5, 'B-01', 
        '7807368009439', 2000.0, 'Filtro de Aceite');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (56, 'PROD-8311', 'OIL Filter Troop TFO HU727/1X', 2, 'B-01', 
        '7807368009453', 2000.0, 'Filtro de Aceite');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (57, 'PROD-7822', 'OIL Filter Derco DFO hu727/1X', 4, 'B-01', 
        '7807368009132', 2000.0, 'Filtro de Aceite');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (58, 'PROD-5909', 'OIL Filter Derco DFO 818/4', 6, 'B-01', 
        '7807368008746', 2000.0, 'Filtro de Aceite');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (59, 'PROD-1082', 'OIL Filter Derco DFO 815', 6, 'B-01', 
        '7807368008876', 2000.0, 'Filtro de Aceite');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (60, 'PROD-5695', 'OIL Filter Troop TFO 712/55', 7, 'B-02', 
        '7807368009330', 2000.0, 'Filtro de Aceite');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (61, 'PROD-4620', 'OIL Filter Troop TFO 712/57', 10, 'B-02', 
        '7807368009552', 2000.0, 'Filtro de Aceite');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (62, 'PROD-7487', 'OIL Filter Derco DFO 712/81', 9, 'B-02', 
        '7807368009033', 2000.0, 'Filtro de Aceite');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (63, 'PROD-8697', 'OIL Filter Troop TFO 713/1', 18, 'B-02', 
        '7807368009354', 2000.0, 'Filtro de Aceite');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (64, 'PROD-5791', 'OIL Filter Derco DFO HU713/1X', 3, 'B-02', 
        '7807368009101', 2000.0, 'Filtro de Aceite');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (65, 'PROD-1596', 'OIL Filter Derco DFO 713/1', 6, 'B-02', 
        '7807368008784', 2000.0, 'Filtro de Aceite');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (66, 'PROD-6152', 'OIL Filter Troop TFO 713/16', 6, 'B-02', 
        '7807368009460', 2000.0, 'Filtro de Aceite');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (67, 'PROD-5070', 'OIL Filter Troop DFO 713/34', 2, 'B-02', 
        '7807368008937', 2000.0, 'Filtro de Aceite');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (68, 'PROD-4448', 'OIL Filter Troop TFO HU 716/2X', 10, 'B-02', 
        '7807368009466', 2000.0, 'Filtro de Aceite');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (69, 'PROD-2928', 'OIL Filter HL Mando MMF040072', 5, 'B-03', 
        '8809747193929', 2000.0, 'Filtro de Aceite');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (70, 'PROD-5971', 'OIL Filter Troop TFO HU 712/7X', 4, 'B-03', 
        '7807368009361', 2000.0, 'Filtro de Aceite');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (71, 'PROD-4383', 'OIL Filter Derco DFO 712/8', 14, 'B-03', 
        '7807368008883', 2000.0, 'Filtro de Aceite');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (72, 'PROD-9168', 'OIL Filter TFO 712/8', 3, 'B-03', 
        '7807368009378', 2000.0, 'Filtro de Aceite');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (73, 'PROD-6123', 'OIL Filter Kebdall HU 712/11X', 4, 'B-03', 
        '060821198', 2000.0, 'Filtro de Aceite');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (74, 'PROD-4190', 'OIL Filter Derco DFO 712/12', 9, 'B-03', 
        '7807368008807', 2000.0, 'Filtro de Aceite');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (75, 'PROD-9926', 'OIL Filter TFO 712/19', 4, 'B-03', 
        '7807368009347', 2000.0, 'Filtro de Aceite');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (76, 'PROD-1904', 'OIL Filter Derco DFO 712/22', 1, 'B-03', 
        '7807368008869', 2000.0, 'Filtro de Aceite');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (77, 'PROD-4076', 'OIL Filter Troop TFO 712/22', 5, 'B-03', 
        '7807368009385', 2000.0, 'Filtro de Aceite');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (78, 'PROD-2212', 'OIL Filter Troop TFO 712/52', 3, 'B-03', 
        '7807368009279', 2000.0, 'Filtro de Aceite');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (79, 'PROD-7671', 'OIL Filter Cap Ossca Fiber White', 3, 'I-02', 
        '6943573025411', 2000.0, 'Filtro de Aceite');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (80, 'PROD-1978', 'OIL Filter Troop TFO 818/8', 16, 'B-04', 
        '7807368009408', 2000.0, 'Filtro de Aceite');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (81, 'PROD-6919', 'OIL Filter Derco DFO H819/1X', 4, 'B-04', 
        '7807368009057', 2000.0, 'Filtro de Aceite');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (82, 'PROD-3226', 'OIL Filter Derco DFO HU 821X', 4, 'B-04', 
        '7807368009156', 2000.0, 'Filtro de Aceite');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (83, 'PROD-5365', 'OIL Filter Troop TFO H825X', 2, 'B-04', 
        '7807368009583', 2000.0, 'Filtro de Aceite');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (84, 'PROD-6275', 'Filtro Aceite Indiana Motors INL1070', 1, 'B-04', 
        'Sin cod.7', 2000.0, 'Filtro de Aceite');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (85, 'PROD-6937', 'Filtro Combustible MecaFilter ELG 5322Z', 2, 'B-04', 
        'Sin cod.8', 2000.0, 'Filtro Combustible');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (86, 'PROD-6448', 'Filtro Aceite Hengst E11H D57', 1, 'B-04', 
        '4030776006094', 2000.0, 'Filtro de Aceite');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (87, 'PROD-6450', 'OIL Filter Mecafilter ELH 4335 (HU 7033)', 1, 'B-04', 
        'Sin cod.82', 2000.0, 'Filtro de Aceite');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (88, 'PROD-1974', 'Filtro Aceite Troop TFO 1126', 4, 'B-05', 
        'Sin cod.9', 2000.0, 'Filtro de Aceite');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (89, 'PROD-6898', 'Filtro Aceite World Purifying 26300-42030', 1, 'B-05', 
        'Sin cod.10', 2000.0, 'Filtro de Aceite');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (90, 'PROD-1693', 'Filtro Aceite P552518', 4, 'B-05', 
        'Sin cod.11', 2000.0, 'Filtro de Aceite');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (91, 'PROD-9864', 'Filtro Aceite Fleetguard AS2474', 1, 'B-05', 
        'Sin cod.12', 2000.0, 'Filtro de Aceite');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (92, 'PROD-2138', 'Filtro Aceite Fleetguard WF2071', 4, 'B-05', 
        'Sin cod.13', 2000.0, 'Filtro de Aceite');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (93, 'PROD-5539', 'Filtro Aceite Fleetguard LF16015', 1, 'B-05', 
        'Sin cod.14', 2000.0, 'Filtro de Aceite');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (94, 'PROD-6877', 'Filtro Aceite Fleetguard FF5206<', 3, 'B-05', 
        'Sin cod.15', 2000.0, 'Filtro de Aceite');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (95, 'PROD-6033', 'Filtro Aceite Fleetguard FF5488', 3, 'B-05', 
        'Sin cod.16', 2000.0, 'Filtro de Aceite');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (96, 'PROD-3272', 'Refrigerante Ciclon JP500 10Litros', 6, 'B-06', 
        'CICLON_JP500_10', 2000.0, 'Refrigerante');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (97, 'PROD-4478', 'Limpiador Radiador Vistony 300 ml', 16, 'C-01', 
        '7750804000265', 2000.0, 'Cuidado Vehiculo');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (98, 'PROD-5057', 'Diesel OIL Aditive Vistony 300 ml', 11, 'C-01', 
        '7750804000609', 2000.0, 'Aditivos');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (99, 'PROD-9155', 'Filtro de Aire Mecafilter EL 9160', 1, 'C-01', 
        'Sin cod.17', 2000.0, 'Interno');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (100, 'PROD-6427', 'PAO1 GS Kixx OW-30 4L', 4, 'C-02', 
        '8101410202007', 2000.0, 'Aceite Motor');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (101, 'PROD-1001', 'Kixx GS HD1 10W-40 4L', 5, 'C-02', 
        '8801470206174', 2000.0, 'Aceite Motor');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (102, 'PROD-9210', 'Motor OIL Valvoline Synthetic Blend 10W-40 4.73L', 3, 'C-03', 
        '074130989900', 2000.0, 'Aceite Motor');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (103, 'PROD-1912', 'Motor OIL Valvoline Synthetic Blend 10W-30 4.75L', 4, 'C-03', 
        '074130993136', 2000.0, 'Aceite Motor');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (104, 'PROD-9609', 'Anticongelante/Refrigerante Valvoline 3.785L', 2, 'C-03', 
        '074130996632', 2000.0, 'Refrigerante');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (105, 'PROD-1386', 'Anticongelante Ciclon Coolant 715 3.79 Lts.', 7, 'C-04', 
        'Sin cod.18', 2000.0, 'Refrigerante');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (106, 'PROD-2535', 'Refrigerante Ciclon JP500 3.79 Lts', 3, 'C-04', 
        'Sin cod.19', 2000.0, 'Refrigerante');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (107, 'PROD-2849', 'Kixx GS Geartec API GL-5 80W-90 1L', 14, 'D-01', 
        '8801470298315', 2000.0, 'Aceite Caja de Cambios');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (108, 'PROD-6523', 'Aceite de Motor Valvoline SynPower  MST C3 5W-30 1L', 7, 'D-02', 
        '8710941022260', 2000.0, 'Aceite Motor');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (109, 'PROD-5281', 'Aceite Valvoline Valvolube HD-A 80W90 1L', 9, 'D-01', 
        '0764451421950', 2000.0, 'Aceite Caja de Cambios');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (110, 'PROD-8536', 'Aceite Valvoline Valvolube G.O. 75W90 1L', 11, 'D-01', 
        'Sin cod.21', 2000.0, 'Aceite Caja de Cambios');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (111, 'PROD-3966', 'Valvoline DCT Aceite Transmisión 1L', 12, 'D-02', 
        '8710941019642', 2000.0, 'Aceite Caja de Cambios');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (112, 'PROD-5768', 'Aceite Valvoline Full Synthetic 5W-2020 1L', 9, 'D-02', 
        '074130066663', 2000.0, 'Aceite Motor');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (113, 'PROD-2733', 'Aceite de Motor Valvoline SynPower  MST C3 5W-30 1L', 7, 'D-02', 
        '8710941022260', 2000.0, 'Aceite Motor');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (114, 'PROD-5414', 'Aceite de Motor Valvoline SynPower XL-III C3 5W-30 1L', 6, 'D-02', 
        '8710941021836', 2000.0, 'Aceite Motor');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (115, 'PROD-2695', 'Aceite Motor Valvoline Durablend 10W-40 1L', 1, 'D-02', 
        '2050000228711', 2000.0, 'Aceite Motor');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (116, 'PROD-1503', 'Aceite Motor Valvoline Durablend 10W-40 1L', 12, 'D-02', 
        '0764451422162', 2000.0, 'Aceite Motor');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (117, 'PROD-9720', 'Refrigerante Valvoline Zerex Asian Vehicule 50/50 3.78L', 4, 'D-03', 
        '028882003889', 2000.0, 'Refrigerante');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (118, 'PROD-9069', 'Refrigerante Valvoline Anticongelante Zerex 50/50 Asian Blue 3.78L', 2, 'D-03', 
        '074130017573', 2000.0, 'Refrigerante');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (119, 'PROD-8098', 'Aceite Sintetico Vistony S210 10w40 4L', 2, 'D-03', 
        '7750804004751', 2000.0, 'Aceite Motor');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (120, 'PROD-4575', 'Aceite Motor Valvoline SYNPower MST C3 5W30 4L', 3, 'D-03', 
        '8710941022277', 2000.0, 'Aceite Motor');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (121, 'PROD-8773', 'Aceite Kixx ACEA C3 5W-30 5L', 3, 'D-04', 
        '8801470201155', 2000.0, 'Lubricante Motor');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (122, 'PROD-2457', 'YPF ELAION AURO D2 530 5W-30 4L', 5, 'D-04', 
        '7790968914473', 2000.0, 'Aceite Motor');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (123, 'PROD-4406', 'Anticongelante Ciclon 3,79 Lts', 1, 'D-04', 
        'Sin cod.22', 2000.0, 'Refrigerante');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (124, 'PROD-7860', 'Aceite Valvoline SYNPOWER ENV C2 0W-30 5L', 3, 'D-04', 
        '8710941022017', 2000.0, 'Aceite Motor');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (125, 'PROD-6482', 'Aceite Valvoline DEX/MERC ATF 1L', 4, 'E-01', 
        '074130003538', 2000.0, 'Aceite Hidraulico');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (126, 'PROD-1202', 'Aceite Full Synthetic MaxLife Multi-Vehicle ATF 1L', 6, 'E-01', 
        '074130000087', 2000.0, 'Aceite Hidraulico');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (127, 'PROD-5527', 'Aceite Vistony CI-4 FORZA PLUS 15W-40 1L', 4, 'E-01', 
        '7750804002962', 2000.0, 'Aceite Motor');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (128, 'PROD-1662', 'Aceite Direccion Hidraulica Vistony ATF tipo F 1L', 4, 'E-01', 
        '7750804000210', 2000.0, 'Aceite Hidraulico');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (129, 'PROD-8634', 'Aceite Transmision Automatica Vistony ATF MDIII 1/4 Gl', 7, 'E-01', 
        '7750804002016', 2000.0, 'Aceite Hidraulico');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (130, 'PROD-1292', 'Vistony Brikson ATF CVT 1L', 11, 'E-01', 
        '7750804003891', 2000.0, 'Aceite Hidraulico');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (131, 'PROD-5744', 'Aceite Sintetico Vistony ACEA A3/B4 - API SN 10W-40 1LT', 3, 'E-02', 
        '7750804004768', 2000.0, 'Aceite Motor');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (132, 'PROD-1353', 'Kixx GS HD1 10W-40 1Lt', 3, 'E-02', 
        '8801470206112', 2000.0, 'Aceite Motor');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (133, 'PROD-7240', 'YPF ELAION AURO D2 530 5W-30 1L', 5, 'E-02', 
        '7790968914466', 2000.0, 'Aceite Motor');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (134, 'PROD-5388', 'Aceite GS Kixx G1 API SN PLUS 5W-30 1Lt
', 4, 'E-02', 
        '8801470210119', 2000.0, 'Aceite Motor');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (135, 'PROD-7747', 'Aceite GS Kixx D1 ACEA C3 5W-30 1L', 3, 'E-02', 
        '8801470201117', 2000.0, 'Aceite Motor');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (136, 'PROD-1122', 'Aceite Valvoline SYNPOWER 0W-20 1L', 3, 'E-02', 
        '8710941022161', 2000.0, 'Aceite Motor');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (137, 'PROD-3730', 'Aceite GS Kixx G1 API SN PLUS OW-20 1Lt', 6, 'E-02', 
        '8801470209816', 2000.0, 'Aceite Motor');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (138, 'PROD-5193', 'Aceite Vistony CI-4 FORZA PLUS 15W-40 4L', 6, 'E-03', 
        '7750804004409', 2000.0, 'Aceite Motor');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (139, 'PROD-5151', 'Valvoline All Engine 20W-50 4L', 4, 'E-03', 
        '0715023923143', 2000.0, 'Aceite Motor');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (140, 'PROD-8071', 'Aceite Total Quartz 7000 4L', 5, 'E-04', 
        '7804627181905', 2000.0, 'Aceite Motor');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (141, 'PROD-5422', 'Aceite Motor Valvoline Durablend 10W-40 4L', 2, 'E-04', 
        '2050000228728', 2000.0, 'Aceite Motor');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (142, 'PROD-3844', 'Aceite Valvoline All-Fleet E900 Plus Motor 15W-40 4L', 2, 'E-04', 
        '2050000896446', 2000.0, 'Aceite Motor');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (143, 'PROD-4402', 'Aromatizador de Auto Vistony 59ml - Aroma Tutti Frutti', 3, 'F-01', 
        '7750804000654', 2000.0, 'Cuidado Vehiculo');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (144, 'PROD-7449', 'Aromatizante Ciclon de 540 ml - Aroma Melody', 1, 'F-01', 
        'Sin cod.23', 2000.0, 'Cuidado Vehiculo');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (145, 'PROD-9651', 'Aromatizante Ciclon de 540 ml - Aroma Cappuchino', 1, 'F-01', 
        'Sin cod.24', 2000.0, 'Cuidado Vehiculo');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (146, 'PROD-4070', 'Lubricante Lubritek M40 450ml', 15, 'F-01', 
        '7807368227536', 2000.0, 'Aditivos');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (147, 'PROD-1423', 'Getriebe Fluid Ravenol DCT/DSG 1L', 1, 'F-01', 
        '4014835718913', 2000.0, 'Interno');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (148, 'PROD-4006', 'Pintura Spray MotorLife Plástica Negro Mate 450ml.', 2, 'F-01', 
        '7807368031836', 2000.0, 'Interno');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (149, 'PROD-7967', 'Silicona protectora Vistony UV', 12, 'F-01', 
        '7750804002245', 2000.0, 'Cuidado Vehiculo');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (150, 'PROD-9033', 'Grasa Valvoline Valred Grease EP-2 Multiposito 500gr.', 16, 'F-02', 
        '7808720800046', 2000.0, 'Aditivos');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (151, 'PROD-2867', 'Grasa Valvoline Special Moly EP-2 500gr.', 12, 'F-02', 
        '7808720800053', 2000.0, 'Aditivos');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (152, 'PROD-9008', 'Lubricante Lubritek Limpia Flujometro 12B4 450ml', 9, 'F-02', 
        '7807368227567', 2000.0, 'Aditivos');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (153, 'PROD-9870', 'Limpiador de Frenos Lubritek 450ml', 11, 'F-02', 
        '7807368227642', 2000.0, 'Aditivos');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (154, 'PROD-1890', 'Ciclon Shampoo concentrado de 1L', 10, 'F-03', 
        'Sin cod.25', 2000.0, 'Cuidado Vehiculo');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (155, 'PROD-4272', 'Ciclon Silicona Aromatica 1L', 4, 'F-03', 
        'Sin cod.26', 2000.0, 'Cuidado Vehiculo');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (156, 'PROD-8901', 'Ciclon Solicona Aromatica ECO 1L', 9, 'F-03', 
        'Sin cod.27', 2000.0, 'Cuidado Vehiculo');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (157, 'PROD-4480', 'Ciclon Renovador de Neumaticos ECO 1L', 15, 'F-03', 
        'Sin cod.28', 2000.0, 'Cuidado Vehiculo');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (158, 'PROD-9111', 'Ciclon Limpia Parabrisas 5Lts', 4, 'F-04', 
        'Sin cod.29', 2000.0, 'Cuidado Vehiculo');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (159, 'PROD-2036', 'Ciclon Agua Desmineralizada 5L', 5, 'F-04', 
        'Sin cod.30', 2000.0, 'Cuidado Vehiculo');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (160, 'PROD-1052', 'AflojaTodo Vistony Multiusos ZK-90', 12, 'G-01', 
        '7750804002351', 2000.0, 'Cuidado Vehiculo');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (161, 'PROD-3812', 'Limpia Carburador Vistony ', 12, 'G-01', 
        '7750804002221', 2000.0, 'Cuidado Vehiculo');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (162, 'PROD-4193', 'Limpia Contacto Vistony 296ml', 4, 'G-01', 
        '7750804002238', 2000.0, 'Cuidado Vehiculo');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (163, 'PROD-7930', 'Auxiliar de Arranque Vistony 296ml', 2, 'G-01', 
        '7750804003389', 2000.0, 'Aditivos');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (164, 'PROD-2079', 'NCH lubrication gear-up plus ', 11, 'G-01', 
        'Sin cod.31', 2000.0, 'Interno');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (165, 'PROD-3247', 'NCH Tekusolv Disolvente Desengrasante de Origen Natural 310g', 10, 'G-02', 
        'Sin cod.32', 2000.0, 'Interno');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (166, 'PROD-9465', 'NCH Dylek PS II Limpiador Electronico Desengrasante 310g', 7, 'G-02', 
        'Sin cod.33', 2000.0, 'Interno');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (167, 'PROD-8409', 'NCH DRI-Lube Plus Lubricante en Seco con Moly 310g', 5, 'G-02', 
        'Sin cod.34', 2000.0, 'Interno');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (168, 'PROD-9466', 'Liquido para frenos Vistony DONT 4 350ml', 15, 'G-02', 
        '7750804000722', 2000.0, 'Aditivos');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (169, 'PROD-2417', 'NGK BUJIA MR8E-9 NGK N°6962', 18, 'G-02', 
        '7897707505715', 2000.0, 'Bujia');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (170, 'PROD-6635', 'NGK BUJIA MR8E-9 NGK N°2756', 13, 'G-02', 
        '7897707505784', 2000.0, 'Bujia');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (171, 'PROD-3468', 'NGK BUJIA MR8E-9 NGK N°5216', 28, 'G-02', 
        '7897707506361', 2000.0, 'Bujia');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (172, 'PROD-4855', 'NGK BUJIA MR8E-9 NGK N°95665', 26, 'G-02', 
        '7897707505739', 2000.0, 'Bujia');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (173, 'PROD-3157', 'Rodamiento EBI 6302 2RS/C3', 3, 'G-02', 
        'Sin cod.35', 2000.0, 'Interno');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (174, 'PROD-6699', 'Rodamiento RLM 6202 ZZ', 3, 'G-02', 
        'Sin cod.36', 2000.0, 'Interno');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (175, 'PROD-8623', 'Rodamiento PFI Bearring', 2, 'G-02', 
        '0739210356811', 2000.0, 'Interno');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (176, 'PROD-4348', 'Rodamiento Koyo', 1, 'G-02', 
        '4549250153464', 2000.0, 'Interno');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (177, 'PROD-6954', 'Rodamiento RLM 6002 2RS/C3', 3, 'G-02', 
        'Sin cod.37', 2000.0, 'Interno');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (178, 'PROD-9737', 'Medidor Digital de temperatura del agua de 12V y 24V + Sensor de temperatura del agua 1/8 NPT', 6, 'G-03', 
        'Sin cod.38', 2000.0, 'Accesorios');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (179, 'PROD-7310', 'Kit de caja de fusibles de vidrio de soplado rápido 100 piezas 5x20 250V', 3, 'G-03', 
        '7620617633250', 2000.0, 'Interno');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (180, 'PROD-3207', 'Juego de tuercas y pernos de cobre kit surtido de sellos de anillo plano M8/M10/M12/M14 100pcs', 3, 'G-03', 
        'Sin cod.39', 2000.0, 'Interno');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (181, 'PROD-4252', 'Juego surtido de 200 arandelas de acero inoxidable 10 tamaños plateado', 1, 'G-03', 
        'Sin cod.40', 2000.0, 'Interno');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (182, 'PROD-8828', 'Kit Caja Arandelas de sellado para camiones MT9630', 1, 'G-03', 
        'Sin cod.41', 2000.0, 'Interno');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (183, 'PROD-8778', 'Kit O-Ring Universal 320 pcs', 1, 'G-03', 
        'Sin cod.42', 2000.0, 'Interno');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (184, 'PROD-1204', 'Anticongelante Refrigerante Ciclon Concentrado 50/50 3.79L - Azul', 10, 'G-04', 
        'Sin cod.94', 2000.0, 'Refrigerante');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (185, 'PROD-2036', 'Ciclon Agua Desmineralizada 5L', 5, 'G-04', 
        'Sin cod.30', 2000.0, 'Cuidado Vehiculo');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (186, 'PROD-3206', 'Par de focos LED 9005', 12, 'H-01', 
        'Sin cod.43', 2000.0, 'Ampolleta');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (187, 'PROD-3717', 'Luz de trabajo foco redondo lámpara de irradiación 24LED 45W 12-36V Blanco', 4, 'H-01', 
        'Sin cod.44', 2000.0, 'Interno');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (188, 'PROD-7904', 'Farol Lateral Led 12V-24V - Ambar 2', 7, 'H-01', 
        'Sin cod.45', 2000.0, 'Farol Lateral');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (189, 'PROD-3832', 'Farol Lateral Led 12V-24V - Blanco', 12, 'H-01', 
        'Sin cod.46', 2000.0, 'Farol Lateral');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (190, 'PROD-2074', 'Farol Lateral Led 12V-24V - Rojo', 6, 'H-01', 
        'Sin cod.47', 2000.0, 'Farol Lateral');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (191, 'PROD-2615', 'Led headlight ROHS DC9-32V ', 1, 'H-01', 
        'Sin cod.67', 2000.0, 'Revisar Walter');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (192, 'PROD-2039', 'Foco Gauss H4 24V 90/100W', 1, 'H-02', 
        '7899751902410', 2000.0, 'Ampolleta 24V');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (193, 'PROD-9637', 'Ampolleta Hella H7 12v 55w Px26d Halógeno - Standard', 4, 'H-02', 
        '4082300255833', 2000.0, 'Ampolleta 12V');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (194, 'PROD-8646', 'Foco Gauss H27 W/1 12V/270W', 4, 'H-02', 
        '7898541343365', 2000.0, 'Ampolleta 12V');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (195, 'PROD-2945', 'Foco Gauss HB3 12V/60W', 8, 'H-02', 
        '7898252655535', 2000.0, 'Ampolleta 12V');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (196, 'PROD-8310', 'Foco Gauss H4 12V 60/55W', 6, 'H-02', 
        '7898252655337', 2000.0, 'Ampolleta 12V');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (197, 'PROD-4760', 'Foco Gauss H8 12V/35W', 1, 'H-02', 
        '7899751900430', 2000.0, 'Ampolleta 12V');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (198, 'PROD-7210', 'Foco Gauss H9 12V/65W', 6, 'H-02', 
        '7899751900454', 2000.0, 'Ampolleta 12V');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (199, 'PROD-1048', 'Foco Gauss H11 12V/55W', 6, 'H-02', 
        '7898252655450', 2000.0, 'Ampolleta 12V');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (200, 'PROD-4037', 'Foco Gauss H11 24V/70W', 6, 'H-02', 
        '7899751916851', 2000.0, 'Ampolleta 24V');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (201, 'PROD-6948', 'Foco Gauss H13 12V 60/55W', 4, 'H-02', 
        '7899751900478', 2000.0, 'Ampolleta 12V');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (202, 'PROD-3621', 'Ampolleta Gauss miniatura GL-0067A 12V (rev.x und o caja)', 1, 'H-02', 
        '7898252654781', 2000.0, 'Ampolleta 12V');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (203, 'PROD-4782', 'Ampolleta Gauss miniatura GL-00667B 24W (rev.xund o caja)', 4, 'H-02', 
        '7898252655115', 2000.0, 'Ampolleta');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (204, 'PROD-8729', 'Ampolleta Gauss miniatura GL-2825B 24V (rev.xund o caja)', 1, 'H-02', 
        '7898252655184', 2000.0, 'Ampolleta 24V');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (205, 'PROD-5864', 'Ampolleta Gauss miniatura GL-922 12V (rev.xund o caja)', 2, 'H-02', 
        '7898252656372', 2000.0, 'Ampolleta 12V');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (206, 'PROD-9490', 'Ampolleta Gauss miniatura GL7505 W21W 12V (rev.xund o caja)', 2, 'H-02', 
        '7898252656891', 2000.0, 'Ampolleta 12V');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (207, 'PROD-3052', 'Ampolleta Gauss miniatura GL1056B Ambar 24V (rev.xund o caja)', 1, 'H-02', 
        '7898541349336', 2000.0, 'Ampolleta 24V');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (208, 'PROD-4574', 'Ampolleta Gauss miniatura GL3156 P27W 12V (rev.xund o caja)', 1, 'H-02', 
        '7898252654941', 2000.0, 'Ampolleta 12V');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (209, 'PROD-3407', 'Ampolleta Gauss miniatura 2841 24V (rev. x und o caja) //6 unds / 1 caja', 6, 'H-02', 
        '7898541342177', 2000.0, 'Ampolleta 24V');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (210, 'PROD-6048', 'Ampolleta Flotop Auto Buls T10 24V5W W21*9.5D  (rev.xund o caja) // 6 unds / 1 caja', 6, 'H-02', 
        'Sin cod.48', 2000.0, 'Ampolleta 24V');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (211, 'PROD-4563', 'Lampara Halogena Beijing 881 12V/27W ', 10, 'H-02', 
        'Sin cod.49', 2000.0, 'Ampolleta 12V');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (212, 'PROD-2774', 'Lampara Halogena Beijing H11 12V/55W', 10, 'H-02', 
        'Sin cod.50', 2000.0, 'Ampolleta 12V');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (213, 'PROD-6114', 'Lampara Halogena BRM H7 24V100W PX26D', 1, 'H-02', 
        'Sin cod.56', 2000.0, 'Ampolleta 24V');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (214, 'PROD-5076', 'Lampara Michiba G18 BA15S 24V5W', 5, 'H-02', 
        'Sin cod.74', 2000.0, 'Revisar Walter');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (215, 'PROD-8859', 'Lampara Halogena Beijing T10 12V/5W (rev.xund o caja) // 91 Unds / caja 100 unds', 91, 'H-03', 
        'Sin cod.51', 2000.0, 'Ampolleta 12V');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (216, 'PROD-5363', 'Lampara Halogena BRM H3 12V55W PK22S', 7, 'H-03', 
        'Sin cod.52', 2000.0, 'Ampolleta 12V');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (217, 'PROD-8963', 'Lampara Halogena BUM H1 12V55W P14.5S', 1, 'H-03', 
        'Sin cod.53', 2000.0, 'Ampolleta 12V');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (218, 'PROD-9777', 'Lampara Halogena BRM H1 24V70W P14.5S', 1, 'H-03', 
        'Sin cod.54', 2000.0, 'Ampolleta 24V');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (219, 'PROD-7587', 'Lampara Halogena BRM H3 24V70W PK22S', 6, 'H-03', 
        'Sin cod.55', 2000.0, 'Ampolleta 24V');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (220, 'PROD-3306', 'Lampara Halogena BRM H4 24V 75/70W P43T', 1, 'H-03', 
        'Sin cod.57', 2000.0, 'Ampolleta 24V');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (221, 'PROD-9065', 'Lampara Halogena BRM 9004 12V 65/45W HB1', 4, 'H-03', 
        'Sin cod.58', 2000.0, 'Ampolleta 12V');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (222, 'PROD-8707', 'Lampara Halogen Bulb H4B 12V 60/55W P45T', 9, 'H-03', 
        'Sin cod.59', 2000.0, 'Ampolleta 12V');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (223, 'PROD-1770', 'Lampara Halogena TUV H3-1 H3 12V 55W', 4, 'H-03', 
        'Sin cod.60', 2000.0, 'Ampolleta 12V');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (224, 'PROD-6174', 'Lampara Halogena TUV 090410170 H3 24V 100W', 1, 'H-03', 
        'Sin cod.61', 2000.0, 'Ampolleta 24V');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (225, 'PROD-8723', 'Lampara Halogena TUV 889 12V 27W', 10, 'H-03', 
        'Sin cod.62', 2000.0, 'Ampolleta 12V');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (226, 'PROD-1603', 'Lampara Halogena Super Bright H1 12V 55W', 10, 'H-03', 
        '0876469949552', 2000.0, 'Ampolleta 12V');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (227, 'PROD-5543', 'Lampara Halogena Super Bright H3 12V 100W', 10, 'H-03', 
        'Sin cod.63', 2000.0, 'Ampolleta 12V');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (228, 'PROD-3528', 'Lampara Halogena Super Bright 880 12V 27W', 10, 'H-03', 
        'Sin cod.64', 2000.0, 'Ampolleta 12V');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (229, 'PROD-1027', 'Lampara Halogena Super Bright H7 12V 55W', 20, 'H-03', 
        'Sin cod.65', 2000.0, 'Ampolleta 12V');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (230, 'PROD-4608', 'Lampara Halogena Super Bright H4 12V 60/55W', 11, 'H-03', 
        'Sin cod.66', 2000.0, 'Ampolleta 12V');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (231, 'PROD-7742', 'Ampolleta Miniatura Gauss GL 1034A 12V 21/5W (rev.xund o caja)', 11, 'H-04', 
        '7898252654835', 2000.0, 'Ampolleta 12V');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (232, 'PROD-7352', 'Ampolleta Miniatura Gauss GL 1141 P21W 12V', 1, 'H-04', 
        '7898252654859', 2000.0, 'Ampolleta 12V');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (233, 'PROD-8107', 'Lampara Halogena Beijing S25 12V 21W BAU15S AMBER', 47, 'H-04', 
        'Sin cod.68', 2000.0, 'Ampolleta 12V');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (234, 'PROD-4742', 'Lampara Halogena Beijing S25 12V 21W BA15S', 25, 'H-04', 
        'Sin cod.69', 2000.0, 'Ampolleta 12V');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (235, 'PROD-2795', 'Lampara Halogena Beijing S25 12V 21/5W BAY15D', 13, 'H-04', 
        'Sin cod.70', 2000.0, 'Ampolleta 12V');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (236, 'PROD-3981', 'Ampolleta HELLA 24V 21W BAU15s AMBAR', 6, 'H-04', 
        '760687158240', 2000.0, 'Ampolleta 24V');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (237, 'PROD-4306', 'Ampolleta HELLA 24V 21W BA15s', 4, 'H-04', 
        '760687145073', 2000.0, 'Ampolleta 24V');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (238, 'PROD-3698', 'Ampolleta Narva RW Standard 12V 5W', 7, 'H-04', 
        '4013790234056', 2000.0, 'Ampolleta 12V');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (239, 'PROD-6651', 'Ampolleta Narva STOP P25 Standard 12V 21/5W', 8, 'H-04', 
        '4013790979056', 2000.0, 'Ampolleta 12V');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (240, 'PROD-4028', 'Ampolleta Narva P21/5W Standard 24V 21/5W', 3, 'H-04', 
        '401390269058', 2000.0, 'Ampolleta 24V');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (241, 'PROD-4661', 'Led HeadLight 12V/24V Color 6000K H11', 1, 'H-04', 
        'Sin cod.71', 2000.0, 'Revisar Walter');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (242, 'PROD-8966', 'Led HeadLight 12V/24V Color 6000K H4', 1, 'H-04', 
        'Sin cod.72', 2000.0, 'Revisar Walter');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (243, 'PROD-4400', 'Led HeadLight 12V/24V Color 6000K 5202', 1, 'H-04', 
        'Sin cod.73', 2000.0, 'Revisar Walter');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (244, 'PROD-5148', 'Kit Ampolletas Luces Turbo Led R12 280W 28.000Lm', 1, 'H-04', 
        'Sin cod.75', 2000.0, 'Ampolleta');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (245, 'PROD-5132', 'Farol faena 6Led 10-30V 18W - Rectangular', 2, 'H-04', 
        '2024664217244', 2000.0, 'Revisar Walter');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (246, 'PROD-9520', 'Led RV Dome Light C/Switch RV 10V-24V - White', 3, 'H-04', 
        'Sin cod.76', 2000.0, 'Revisar Walter');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (247, 'PROD-1470', 'Led RV Dome Light RV 10V-24V - White', 2, 'H-04', 
        'Sin cod.77', 2000.0, 'Revisar Walter');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (248, 'PROD-6334', 'Auxiliar de partida Delco ZM 4408 39MT 24V', 3, 'I-01', 
        '7892684006965', 2000.0, 'Revisar Walter');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (249, 'PROD-5939', 'Cruceta  IAO 30x88mm Ext SY6480', 2, 'I-01', 
        'Sin cod.78', 2000.0, 'Revisar Walter');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (250, 'PROD-3223', 'Flujometro Sensor Ssangyon - Meter Air Mass', 1, 'I-01', 
        '6710940048', 2000.0, 'Revisar Walter');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (251, 'PROD-3149', 'Bomba de Agua 1201-G1 (Diente Redondo)', 1, 'I-01', 
        'Sin cod.79', 2000.0, 'Revisar Walter');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (252, 'PROD-4016', 'Filter R12T Fue Filter /Water Separator', 2, 'I-01', 
        'Sin cod.80', 20.07, 'Filtro Petroleo');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (253, 'PROD-4921', 'Kit Sensor Velosidad 6DCT', 1, 'I-01', 
        'Sin cod.81', 28.72, 'Art. Electrico');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (254, 'PROD-2792', 'LCD Medidor universal de voltaje y temperatura de agua 10V/33V ', 7, 'I-02', 
        '724417608120', 2000.0, 'Art. Electrico');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (255, 'PROD-8642', 'Juego de anillos STD 94/98 1.2/1.5/2.8', 1, 'I-02', 
        'Sin cod.83', 2000.0, 'Interno');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (256, 'PROD-2600', 'Thermostato Nisan 110605RBOA', 3, 'I-02', 
        'Sin Cod.84', 2000.0, 'Interno');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (257, 'PROD-9919', 'Bomba de Aceite Prisma A14XE', 1, 'I-02', 
        'Sin cod.85', 2000.0, 'Interno');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (258, 'PROD-1584', 'Bomba de Agua Water Pump - Sonata EF A 25100-38002', 1, 'I-02', 
        'Sin cod.86', 2000.0, 'Interno');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (259, 'PROD-7300', 'Electroventilador Univ 10 Pul 24V 80W - Reversible', 1, 'I-05', 
        'Sin cod.91', 2000.0, 'Art. Electrico');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (260, 'PROD-1648', 'Transmision 948T Jeep', 1, 'I-03', 
        'Sin cod.88', 2000.0, 'Filtro caja cambio');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (261, 'PROD-8581', 'KIT 545 RFE', 8, 'I-03', 
        'Sin cod.89', 2000.0, 'Filtro caja cambio');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (262, 'PROD-3854', 'Parlante Fulmintors modelo FCT-1065F de 6 pulgadas 600 Watt', 1, 'I-04', 
        '012562847191', 2000.0, 'Interno');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (263, 'PROD-9385', 'Sensor de retroceso - Car Parking negro 12V', 1, 'I-04', 
        'Sin cod.92', 2000.0, 'Interno');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (264, 'PROD-7755', 'Transmision DPO AL4', 4, 'I-04', 
        'Sin cod.90', 2000.0, 'Filtro caja cambio');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (265, 'PROD-8299', 'Valvula Electromagnetica Zf 0501.319.200 009', 11, 'J-01', 
        '4053202026244', 2000.0, 'Valvula Electromagnetica');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (266, 'PROD-4180', 'Valvula Electromagnetica ZF 0501328503 009', 2, 'J-01', 
        '4053202159546', 2000.0, 'Valvula Electromagnetica');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (267, 'PROD-7023', 'Filtro Aceite Caja de Cambios Volvo 3098081', 12, 'J-01', 
        'Sin cod.96', 2000.0, 'Filtro caja cambio');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (268, 'PROD-2263', 'Filtro hidráulico Caja de cambios  Volvo 31256837', 6, 'J-01', 
        'Sin cod.97', 2000.0, 'Filtro caja cambio');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (269, 'PROD-7167', 'Electrovalvula Volvo 85101638', 3, 'J-01', 
        '85101638', 2000.0, 'Art. Electrico');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (270, 'PROD-9494', 'Cono Electrovalv Volvo C/cambios B9 309 ', 1, 'J-01', 
        'Sin cod.98', 2000.0, 'Interno');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (271, 'PROD-3964', 'Sensor de Impulsos Segunda Volvo B-9', 4, 'J-01', 
        'Sin cod.99', 2000.0, 'Sensor de Impulso');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (272, 'PROD-7286', 'Sensor de Impulsos Segunda Volvo 3095538', 2, 'J-01', 
        'Sin cod.100', 2000.0, 'Sensor de Impulso');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (273, 'PROD-8884', 'Sistema Electrico Bosch para camiones', 2, 'J-01', 
        'Sin cod.101', 2000.0, 'Interno');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (274, 'PROD-1342', 'Computador ecu Hyundai H1-H100 2.5 año 2011', 1, 'J-01', 
        'Sin cod.102', 2000.0, 'Interno');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (275, 'PROD-3238', 'Refrigerante Ciclont Coolant JP500 3.79L', 12, 'K-01', 
        'Sin cod.93', 2000.0, 'Refrigerante');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (276, 'PROD-2799', 'Coolant Refrigerante Vistony 50/50 4L.Verde', 3, 'K-02', 
        '7750804005369', 2000.0, 'Refrigerante');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (277, 'PROD-2326', 'Coolant Refrigerante Vistony 50/50 4L. Fuchsia', 5, 'K-02', 
        '7750804005178', 2000.0, 'Refrigerante');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (278, 'PROD-3272', 'Refrigerante Ciclon JP500 10Litros', 6, 'K-03', 
        'CICLON_JP500_10', 2000.0, 'Refrigerante');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (279, 'PROD-3272', 'Refrigerante Ciclon JP500 10Litros', 6, 'K-04', 
        'CICLON_JP500_10', 2000.0, 'Refrigerante');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (280, 'PROD-5636', 'Anticongelante Refrigerante Ciclon Concentrado 50/50 3.79L - Verde', 11, 'Piso1', 
        'Sin cod.95', 2000.0, 'Refrigerante');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (281, 'PROD-2036', 'Ciclon Agua Desmineralizada 5L', 14, 'Piso1', 
        'Sin cod.30', 2000.0, 'Cuidado Vehiculo');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (282, 'PROD-4190', 'OIL Filter Derco DFO 712/12', 6, 'A-00', 
        '7807368008807', 2000.0, 'Filtro de Aceite');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (283, 'PROD-5909', 'OIL Filter Derco DFO 818/4', 6, 'A-00', 
        '7807368008746', 2000.0, 'Filtro de Aceite');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (284, 'PROD-1978', 'OIL Filter Troop TFO 818/8', 6, 'B-00', 
        '7807368009408', 2000.0, 'Filtro de Aceite');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (285, 'PROD-4076', 'OIL Filter Troop TFO 712/22', 6, 'B-00', 
        '7807368009385', 2000.0, 'Filtro de Aceite');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (286, 'PROD-5070', 'OIL Filter Troop DFO 713/34', 6, 'B-00', 
        '7807368008937', 2000.0, 'Filtro de Aceite');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (287, 'PROD-1657', 'Carter de Aceite - Mercedez Benz B4 021 20 041', 1, 'A-00', 
        'Sin cod.103', 2000.0, 'Filtro caja cambio');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (288, 'PROD-9340', 'Filtro de Caja ZF GHP26Z Ref. 05012162343', 1, 'A-00', 
        'Sin cod.104', 2000.0, 'Filtro caja cambio');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (289, 'PROD-3916', 'Carter transmision automatica ZF 8HP Ref.24116812901', 3, 'A-00', 
        'Sin cod.105', 2000.0, 'Filtro caja cambio');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (290, 'PROD-4946', 'Elemento Filtro Olio CNH TN', 1, 'C-01', 
        '5801592277', 2000.0, 'Repuesto Filtros');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (291, 'PROD-2845', 'Filtro de Oleo Volvo Ref.21077132', 4, 'B-00', 
        'P21707132', 2000.0, 'Filtro de Aceite');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (292, 'PROD-3125', 'Filtro de Oleo Volvo Ref.21707134', 1, 'B-00', 
        'P21707134', 2000.0, 'Filtro de Aceite');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (293, 'PROD-7765', 'Filtro de Oleo Volvo Ref.22480372', 2, 'B-00', 
        'P22480372', 2000.0, 'Filtro de Aceite');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (294, 'PROD-6348', 'Filtro de Oleo Donaldson P550529', 1, 'B-00', 
        '74233013773', 2000.0, 'Filtro de Aceite');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (295, 'PROD-7237', 'Filtro de Oleo Donaldson P550425', 1, 'B-00', 
        '742330107744', 2000.0, 'Filtro de Aceite');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (296, 'PROD-5878', 'Filtro Aceite Motor Fleetguard LF3000', 1, 'C-00', 
        'Sin cod.106', 2000.0, 'Filtro de Aceite');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (297, 'PROD-1969', 'Filtro Aceite Motor Fleetguard LF3620', 6, 'C-00', 
        'Sin cod.107', 2000.0, 'Filtro de Aceite');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (298, 'PROD-8917', 'Filtro Aceite Motor Fleetguard LF3654', 2, 'C-00', 
        'Sin cod.108', 2000.0, 'Filtro de Aceite');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (299, 'PROD-2209', 'Filtro Aceite Motor Fleetguard FS36247', 1, 'C-00', 
        'Sin cod.109', 2000.0, 'Filtro de Aceite');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (300, 'PROD-8572', 'Filtro Aceite Motor Fleetguard FS3346', 1, 'C-00', 
        'Sin cod.110', 2000.0, 'Filtro de Aceite');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (301, 'PROD-9890', 'Filtro Aceite Motor Fleetguard FS3349', 2, 'C-00', 
        'Sin cod.111', 2000.0, 'Filtro de Aceite');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (302, 'PROD-3836', 'Filtro de Aceite Balowin B236', 1, 'C-00', 
        'Sin cod.112', 2000.0, 'Filtro de Aceite');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (303, 'PROD-6523', 'Kixx GS Geartec API GL-5 75W-90 1L', 24, 'D-00', 
        '8801470296212', 2000.0, 'Aceite Caja de Cambios');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (304, 'PROD-8634', 'Aceite Transmision Automatica Vistony ATF MDIII 1/4 Gl', 24, 'D-00', 
        '7750804002016', 2000.0, 'Aceite Hidraulico');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (305, 'PROD-1662', 'Aceite Direccion Hidraulica Vistony ATF tipo F 1L', 24, 'D-00', 
        '7750804000210', 2000.0, 'Aceite Hidraulico');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (306, 'PROD-8583', 'Aceite Valvoline DEX/MERC ATF 1L - Mexico', 6, 'E-00', 
        '074130069060', 2000.0, 'Aceite Hidraulico');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (307, 'PROD-1202', 'Aceite Full Synthetic MaxLife Multi-Vehicle ATF 1L', 24, 'E-00', 
        '074130000087', 2000.0, 'Aceite Hidraulico');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (308, 'PROD-6482', 'Aceite Valvoline DEX/MERC ATF 1L', 6, 'E-00', 
        '074130003538', 2000.0, 'Aceite Hidraulico');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (309, 'PROD-1503', 'Aceite Motor Valvoline Durablend 10W-40 1L', 12, 'F-00', 
        '0764451422162', 2000.0, 'Aceite Motor');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (310, 'PROD-5281', 'Aceite Valvoline Valvolube HD-A 80W90 1L', 24, 'F-00', 
        '0764451421950', 2000.0, 'Aceite Caja de Cambios');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (311, 'PROD-3272', 'Refrigerante Ciclon JP500 10Litros', 19, 'Piso2', 
        'CICLON_JP500_10', 2000.0, 'Refrigerante');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (312, 'PROD-8071', 'Aceite Total Quartz 7000 4L', 3, 'Piso2', 
        '7804627181905', 2000.0, 'Lubricante Motor');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (313, 'PROD-2457', 'YPF ELAION AURO D2 530 5W-30 4L', 5, 'Piso2', 
        '7790968914473', 2000.0, 'Lubricante');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (314, 'PROD-4575', 'Aceite Motor Valvoline SYNPower MST C3 5W30 4L', 4, 'Piso2', 
        '8710941022277', 2000.0, 'Aceite Motor');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (315, 'PROD-3844', 'Aceite Valvoline All-Fleet E900 Plus Motor 15W-40 4L', 2, 'Piso2', 
        '2050000896446', 2000.0, 'Lubricante Motor');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (316, 'PROD-5422', 'Aceite Motor Valvoline Durablend 10W-40 4L', 3, 'Piso2', 
        '2050000228728', 2000.0, 'Aceite Motor');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (317, 'PROD-2967', 'Aceite Valvoline ALL FLEET PLUS CK-4 15W40 BL19LT', 3, 'Piso2', 
        'Sin cod.113', 2000.0, 'Lubricante Motor');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (318, 'PROD-5422', 'Aceite Motor Valvoline Durablend 10W-40 4L', 12, 'Piso2', 
        '2050000228728', 2000.0, 'Aceite Motor');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (319, 'PROD-3844', 'Aceite Valvoline All-Fleet E900 Plus Motor 15W-40 4L', 4, 'Piso2', 
        '2050000896446', 2000.0, 'Aceite Motor');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (320, 'PROD-1353', 'HD1 GS Kixx 10W-40 1Lt', 24, 'Piso2', 
        '8801470206112', 2000.0, 'Lubricante');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (321, 'PROD-8773', 'Aceite GS Kixx D1 ACEA C3 5W-30 1L', 12, 'Piso2', 
        '8801470201117', 2000.0, 'Lubricante Motor');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (322, 'PROD-2849', 'Electroventilador Univ 10 Pul 24V 80W - Reversible', 1, 'I-05', 
        'Sin cod.91', 2000.0, 'Art. Electrico');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (323, 'PROD-1001', 'Kixx GS HD1 10W-40 1Lt', 12, 'Piso2', 
        '8801470206174', 2000.0, 'Lubricante Motor');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (324, 'PROD-2326', 'Coolant Refrigerante Vistony 50/50 4L. Fuchsia', 8, 'Piso2', 
        '7750804005178', 2000.0, 'Refrigerante');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (325, 'PROD-2799', 'Coolant Refrigerante Vistony 50/50 4L.Verde', 4, 'Piso2', 
        '7750804005369', 2000.0, 'Refrigerante');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (326, 'PROD-8536', 'Aceite Valvoline Valvolube G.O. 75W90 1L', 12, 'Piso2', 
        'Sin cod.21', 2000.0, 'Lubricante Caja');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (327, 'PROD-3505', 'Junta Homocinetica Opel Corsa', 1, 'H-00', 
        'Sin cod.114', 2000.0, 'Interno');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (328, 'PROD-4714', 'Faro trasero Stop Lampa Ref.510371', 1, 'H-00', 
        '8682022900456', 2000.0, 'Interno');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (329, 'PROD-2957', 'Kit Alzavidrios Nemesis Universal - Puerta2 Doors', 1, 'H-00', 
        'Sin cod.115', 2000.0, 'Interno');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (330, 'PROD-3937', 'Tapa distribucion YEC LUV 2.3 Inyeccion Ref.YD-243', 5, 'C-01', 
        '010730014', 2000.0, 'Encendido');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (331, 'PROD-1705', 'Carter Transmision ZF8HP Getiebre ref.1087.298.364', 2, 'H-00', 
        '4053202267913', 2000.0, 'Filtro caja cambio');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (332, 'PROD-7016', 'Filtro 2F GHP26G', 3, 'I-00', 
        'Sin cod.116', 2000.0, 'Filtro caja cambio');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (333, 'PROD-3491', 'Kit Embrague PHC Valeo', 1, 'I-05', 
        'Sin cod.117', 2000.0, 'Interno');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (334, 'PROD-2648', 'Cruceta Cardan Universal - Koller', 1, 'I-05', 
        'Sin cod.118', 2000.0, 'Interno');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (335, 'PROD-5810', 'Reten Corteco Casco 130X160X14/13.5', 1, 'I-05', 
        '3358960565631', 2000.0, 'Interno');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (336, 'PROD-9656', 'Kit Mantencion mecatronica VW DSG7 DQ200', 1, 'I-05', 
        'Sin cod.119', 2000.0, 'Caja de cambios');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (337, 'PROD-4718', 'Filtro Aceite de Caja Automatica Ref. Part N35330-12050', 3, 'J-00', 
        'Sin cod.120', 2000.0, 'Filtro caja cambio');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (338, 'PROD-1127', 'Kit HT Ref.09G32', 3, 'J-00', 
        'Sin cod.121', 2000.0, 'Revisar Walter');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (339, 'PROD-5227', 'Kit solenoide Jeep 42RLE', 1, 'J-00', 
        'Sin cod.122', 2000.0, 'Caja de cambios');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (340, 'PROD-9530', 'Transmision OIL Filter Ford MPS6 6DCT450', 2, 'J-00', 
        '75389968357', 2000.0, 'Filtro caja cambio');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (341, 'PROD-3387', 'Perno Culata Corsa (juego10)', 1, 'J-01', 
        'Sin cod.123', 2000.0, 'Interno');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (342, 'PROD-4885', 'Filtro cambio transmision automatico', 1, 'J-02', 
        'Sin cod.124', 2000.0, 'Revisar Walter');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (343, 'PROD-9620', 'Sistema de cierre centralizado Milano TMC', 1, 'J-02', 
        'Sin cod.125', 2000.0, 'Interno');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (344, 'PROD-8872', 'MP3 Car Player con USB/SD sport', 1, 'J-02', 
        'Sin cod.126', 2000.0, 'Interno');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (345, 'PROD-9002', 'Led Super Lamp M609 IP65', 1, 'J-02', 
        'Sin cod.127', 2000.0, 'Interno');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (346, 'PROD-9312', 'Pästillas de Freno ceramica 2.5 (Ford/mazda) ', 1, 'J-02', 
        'Sin cod.128', 2000.0, 'Interno');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (347, 'PROD-4808', 'Pastillas de Freno Mahindra scorpio 2.2/2.6', 1, 'J-02', 
        'Sin cod.129', 2000.0, 'Interno');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (348, 'PROD-4099', 'Xenon H7 Hid Kit 55w H4 Bi-xenon Lapm Fuente De Luz', 1, 'J-03', 
        'Sin cod.130', 2000.0, 'Interno');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (349, 'PROD-4331', 'Filtro Kendall TS16949', 4, 'J-03', 
        '060821372', 2000.0, 'Revisar Walter');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (350, 'PROD-7470', 'Filtro Kendall 96182220', 1, 'J-03', 
        '6933236922201', 2000.0, 'Revisar Walter');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (351, 'PROD-2010', 'Filtro SPT Model Chery TIGGO 2', 1, 'J-03', 
        'J69110911', 2000.0, 'Revisar Walter');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (352, 'PROD-1840', 'Filtro Mann H182 KIT', 1, 'J-03', 
        '4011558283407', 2000.0, 'Revisar Walter');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (353, 'PROD-3935', 'Sistema de Alarma Modelo CC-A01', 1, 'J-02', 
        'Sin cod.131', 2000.0, 'Interno');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (354, 'PROD-5436', 'Solenoide Konigmann SOL-SNLS167', 1, 'J-02', 
        'Sin cod.132', 2000.0, 'Interno');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (355, 'PROD-7360', 'Filtro AIR FilTec cod.24087-7', 1, 'J-03', 
        '2408700000005', 2000.0, 'Filtro de Aceite');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (356, 'PROD-1010', 'Filtro AIR FilTec cod.23536-9', 2, 'J-03', 
        '2353600000009', 2000.0, 'Filtro de Aceite');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (357, 'PROD-7530', 'Filtro AIR FilTec cod.21637-2', 1, 'J-03', 
        'Sin cod.133', 2000.0, 'Filtro de Aceite');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (358, 'PROD-4922', 'Filtro AIR FilTec cod.23645-4', 1, 'J-03', 
        '2364500000006', 2000.0, 'Filtro de Aceite');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (359, 'PROD-9205', 'Filtro aceite caja de cambios T/A TRANSPEED BC5A', 5, 'J-02', 
        'Sin cod.134', 2000.0, 'Repuesto Filtro Aceite');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (360, 'PROD-2698', 'Filtro aceite caja de cambios T/A TRANSPEED DQ500', 4, 'J-02', 
        'Sin cod.135', 2000.0, 'Repuesto Filtro Aceite');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (361, 'PROD-2215', 'Filtro Kendall TD16949', 2, 'J-02', 
        '060820203', 2000.0, 'Revisar Walter');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (362, 'PROD-8844', 'Filtro Petroleo 1901-A3C', 1, 'J-02', 
        'Sin cod.136', 2000.0, 'Revisar Walter');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (363, 'PROD-2433', 'Conversor de Voltaje DC20-30V DC12V', 1, 'J-02', 
        'Sin cod.137', 2000.0, 'Interno');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (364, 'PROD-2899', 'Filtro Petroleo MecaFilter M1E374A', 1, 'J-02', 
        '000204081-6', 2000.0, 'Revisar Walter');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (365, 'PROD-6024', 'Filtro Petroleo MecaFilter M1E354B', 1, 'J-02', 
        '00020427-1', 2000.0, 'Revisar Walter');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (366, 'PROD-5374', 'Valvula SORL medida conexion M16X1', 3, 'J-02', 
        'Sin cod.138', 2000.0, 'Interno');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (367, 'PROD-1918', 'Tensor de Corre FEBI Ref.11281427252', 1, 'J-02', 
        'Sin cod.139', 2000.0, 'Interno');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (368, 'PROD-5128', 'Bomba de Agua 1202-84 (Base Grande)', 1, 'I-01', 
        'Sin cod.140', 2000.0, 'Interno');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (369, 'PROD-3333', 'Filtro Caja Jeep Chrysler Transmision W5A580', 3, 'J-03', 
        'Sin cod.141', 2000.0, 'Filtro caja cambio');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (370, 'PROD-4919', 'Filtro Habitaculo CU 2040 6479-E0', 2, 'J-03', 
        'Sin  cod.142', 2000.0, 'Revisar Walter');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (371, 'PROD-7741', 'Filtro AIR STP 13780-60G00', 1, 'J-03', 
        '0009781', 2000.0, 'Filtro de Aceite');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (372, 'PROD-1042', 'OIL Filter Man MDWO 8010', 1, 'B-03', 
        'Sin cod.143', 2000.0, 'Filtro de Aceite');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (373, 'PROD-1234', 'OIL Filter Hyundai 26300-02752', 1, 'B-03', 
        'Sin cod.144', 2000.0, 'Filtro de Aceite');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (374, 'PROD-2439', 'OIL Filter Geely 1106013221', 1, 'B-03', 
        'Sin cod.145', 2000.0, 'Filtro de Aceite');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (375, 'PROD-2342', 'Filter Man WK 854/1', 1, 'J-01', 
        'Sin cod.146', 2000.0, 'Revisar Walter');

INSERT INTO inventario (id, sku, descripcion, cantidad, ubicacion, codigo_barras, costo, categoria) 
VALUES (2550, 'PROD-5505', 'Barca', 2, 'Z-02', 
        'No tiene', 2000.0, 'Barca');
