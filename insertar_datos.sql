-- Insertar Datos en la tabla de Usuarios --
INSERT INTO `usuarios` (`Id`,`First_name`,`Last_name`,`Nickname`,`Email`,`Password`,`Tipo_plan`,`Phone`,`Fecha_registro`,`Status`) VALUES (1,'Carlos','Diaz','carlos0008','correo@prueba.com','623jhkfgi3jkg4','Basico','809-000-0000','2022-05-03 00:00:00','Activo');
INSERT INTO `usuarios` (`Id`,`First_name`,`Last_name`,`Nickname`,`Email`,`Password`,`Tipo_plan`,`Phone`,`Fecha_registro`,`Status`) VALUES (2,'Jose','Adrian','jose0008','correo@prueba2.com','623jhdssffdkfgi3jkg4','Basico','809-000-0000','2022-08-28 00:00:00','Activo');
INSERT INTO `usuarios` (`Id`,`First_name`,`Last_name`,`Nickname`,`Email`,`Password`,`Tipo_plan`,`Phone`,`Fecha_registro`,`Status`) VALUES (3,'Maria','Guzman','maria4343','correo@prueba3.com','dsfsdffdsfds623jhdsddfsssffdkfgi3jkg4','Master','809-748-0000','2022-08-27 00:00:00','Activo');


-- Insertar Datos en la tabla de Rublos --
INSERT INTO `rublos` (`Id`,`Nombre_rublo`,`Tipo_rublo`,`Usuario_id`) VALUES (1,'Combustible','Retiro',1);
INSERT INTO `rublos` (`Id`,`Nombre_rublo`,`Tipo_rublo`,`Usuario_id`) VALUES (2,'Comida','Retiro',1);
INSERT INTO `rublos` (`Id`,`Nombre_rublo`,`Tipo_rublo`,`Usuario_id`) VALUES (3,'Bebida','Retiro',1);
INSERT INTO `rublos` (`Id`,`Nombre_rublo`,`Tipo_rublo`,`Usuario_id`) VALUES (4,'Efectivo','Retiro',1);
INSERT INTO `rublos` (`Id`,`Nombre_rublo`,`Tipo_rublo`,`Usuario_id`) VALUES (5,'Combustible','Retiro',2);
INSERT INTO `rublos` (`Id`,`Nombre_rublo`,`Tipo_rublo`,`Usuario_id`) VALUES (6,'Comida','Retiro',2);
INSERT INTO `rublos` (`Id`,`Nombre_rublo`,`Tipo_rublo`,`Usuario_id`) VALUES (7,'Nomina','Ingreso',1);
INSERT INTO `rublos` (`Id`,`Nombre_rublo`,`Tipo_rublo`,`Usuario_id`) VALUES (8,'Efectivo extra','Ingreso',1);


-- Insertar Datos en la tabla de Bancos --
INSERT INTO `bancos` (`Id`,`Nombre_banco`,`Pais_banco`,`Tipo_banco`,`Imagen_banco`,`Status`,`Descripcion`,`Usuario_id`) VALUES (1,'Banco Popular','Republica Dominicana','Banco','http://banco.com','Activo','Banco de los dominicanos',1);
INSERT INTO `bancos` (`Id`,`Nombre_banco`,`Pais_banco`,`Tipo_banco`,`Imagen_banco`,`Status`,`Descripcion`,`Usuario_id`) VALUES (2,'Banco Reserva','Republica Dominicana','Banco','http://banco2dfssfd.com','Activo','Banco BANRESERVSASDSS',1);
INSERT INTO `bancos` (`Id`,`Nombre_banco`,`Pais_banco`,`Tipo_banco`,`Imagen_banco`,`Status`,`Descripcion`,`Usuario_id`) VALUES (3,'Banco BHD','Republica Dominicana','Banco','http://banco3dfsf.com','Activo','Banco BHDDDD',1);


-- Insertar Datos en la tabla de Cuentas --
INSERT INTO `cuentas` (`Id`,`Nombre_cuenta`,`Tipo_cuenta`,`Moneda_cuenta`,`Status`,`Usuario_id`,`Banco_id`) VALUES (1,'Nomina','Ahorro','DO','Activo',1,1);
INSERT INTO `cuentas` (`Id`,`Nombre_cuenta`,`Tipo_cuenta`,`Moneda_cuenta`,`Status`,`Usuario_id`,`Banco_id`) VALUES (2,'Nomina USA','Ahorro','DO','Activo',1,1);
INSERT INTO `cuentas` (`Id`,`Nombre_cuenta`,`Tipo_cuenta`,`Moneda_cuenta`,`Status`,`Usuario_id`,`Banco_id`) VALUES (3,'Nomina Argentina','Ahorro','DO','Activo',1,2);
INSERT INTO `cuentas` (`Id`,`Nombre_cuenta`,`Tipo_cuenta`,`Moneda_cuenta`,`Status`,`Usuario_id`,`Banco_id`) VALUES (4,'Nomina ','Ahorro','DO','Activo',2,1);
INSERT INTO `cuentas` (`Id`,`Nombre_cuenta`,`Tipo_cuenta`,`Moneda_cuenta`,`Status`,`Usuario_id`,`Banco_id`) VALUES (5,'Nomina ','Ahorro','DO','Activo',2,2);


-- Insertar Datos en la tabla de Libretas --
INSERT INTO `libretas` (`Id`,`Tipo_movimiento`,`Monto`,`Fecha`,'numero_transacion',`Rublo_id`,`Cuenta_id`) VALUES (1,'Retiro',-400,'2022-08-28 00:00:00','000000001',1,1);
INSERT INTO `libretas` (`Id`,`Tipo_movimiento`,`Monto`,`Fecha`,'numero_transacion',`Rublo_id`,`Cuenta_id`) VALUES (2,'Retiro',-500,'2022-08-28 00:00:00','000000002',2,1);
INSERT INTO `libretas` (`Id`,`Tipo_movimiento`,`Monto`,`Fecha`,'numero_transacion',`Rublo_id`,`Cuenta_id`) VALUES (3,'Retiro',-300,'2022-08-28 00:00:00','000000003',3,1);
INSERT INTO `libretas` (`Id`,`Tipo_movimiento`,`Monto`,`Fecha`,'numero_transacion',`Rublo_id`,`Cuenta_id`) VALUES (4,'Ingreso',1000,'2022-08-28 00:00:00','000000004',7,1);

