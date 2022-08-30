
-- Insertar Datos en la tabla de Usuarios --
INSERT INTO `usuarios` (`Id`,`First_name`,`Last_name`,`Nickname`,`Email`,`Password`,`Tipo_plan`,`Phone`,`Fecha_registro`,`Status`,`imagen_url`) VALUES (1,'Carlos','Diaz','carlos0008','correo1@prueba.com','623jdfshkfgi3jkg4','Basico','809-000-0000','2022-05-03 00:00:00','Activo','http://logo.com');
INSERT INTO `usuarios` (`Id`,`First_name`,`Last_name`,`Nickname`,`Email`,`Password`,`Tipo_plan`,`Phone`,`Fecha_registro`,`Status`,`imagen_url`) VALUES (2,'Jose','Abrue','jose00034','correo2@prueba.com','623jhkf123gi3jkg4','Basico','809-000-0000','2022-05-03 00:00:00','Activo','http://logo.com');
INSERT INTO `usuarios` (`Id`,`First_name`,`Last_name`,`Nickname`,`Email`,`Password`,`Tipo_plan`,`Phone`,`Fecha_registro`,`Status`,`imagen_url`) VALUES (3,'Maria','Adrian','maria23','correo3@prueba.com','623jhkfgi3jkg4','Basico','809-000-0000','2022-05-03 00:00:00','Activo','http://logo.com');
INSERT INTO `usuarios` (`Id`,`First_name`,`Last_name`,`Nickname`,`Email`,`Password`,`Tipo_plan`,`Phone`,`Fecha_registro`,`Status`,`imagen_url`) VALUES (4,'Pedro','Guzman','pedro423','correo4@prueba.com','623jhkfgi3jkg4','Basico','809-000-0000','2022-05-03 00:00:00','Activo','http://logo.com');
INSERT INTO `usuarios` (`Id`,`First_name`,`Last_name`,`Nickname`,`Email`,`Password`,`Tipo_plan`,`Phone`,`Fecha_registro`,`Status`,`imagen_url`) VALUES (5,'Mateo','Rosario','mateo32','correo5@prueba.com','623jhkfgi3jkg4','Basico','809-000-0000','2022-07-03 00:00:00','Activo','http://logo.com');
INSERT INTO `usuarios` (`Id`,`First_name`,`Last_name`,`Nickname`,`Email`,`Password`,`Tipo_plan`,`Phone`,`Fecha_registro`,`Status`,`imagen_url`) VALUES (6,'Juan','Vidal','juan354','correo6@prueba.com','623jhkfgi3jkg4','Basico','809-000-0000','2022-07-03 00:00:00','Activo','http://logo.com');
INSERT INTO `usuarios` (`Id`,`First_name`,`Last_name`,`Nickname`,`Email`,`Password`,`Tipo_plan`,`Phone`,`Fecha_registro`,`Status`,`imagen_url`) VALUES (7,'Jesus','Cepeda','jesus34','correo7@prueba.com','623jhkfgi3jkg4','Basico','809-000-0000','2022-06-03 00:00:00','Activo','http://logo.com');
INSERT INTO `usuarios` (`Id`,`First_name`,`Last_name`,`Nickname`,`Email`,`Password`,`Tipo_plan`,`Phone`,`Fecha_registro`,`Status`,`imagen_url`) VALUES (8,'Cecilia','Gonzales','Cecilia','correo8@prueba.com','623jhkfgi3jkg4','Pro','809-000-0000','2022-08-03 00:00:00','Activo','http://logo.com');
INSERT INTO `usuarios` (`Id`,`First_name`,`Last_name`,`Nickname`,`Email`,`Password`,`Tipo_plan`,`Phone`,`Fecha_registro`,`Status`,`imagen_url`) VALUES (9,'Gisell','Lenn','gisell34','correo9@prueba.com','623jhkfgi3jkg4','Pro','809-000-0000','2022-08-03 00:00:00','Activo','http://logo.com');
INSERT INTO `usuarios` (`Id`,`First_name`,`Last_name`,`Nickname`,`Email`,`Password`,`Tipo_plan`,`Phone`,`Fecha_registro`,`Status`,`imagen_url`) VALUES (10,'Mateo','Guzman','mateo23','correo10@prueba.com','623jhkfgi3jkg4','Pro','809-000-0000','2022-08-03 00:00:00','Activo','http://logo.com');

-- Insertar Datos en la tabla de Rublos --
INSERT INTO `rublos` (`Id`,`Nombre_rublo`,`Tipo_rublo`,`Usuario_id`) VALUES (1,'Combustible','Retiro',1);
INSERT INTO `rublos` (`Id`,`Nombre_rublo`,`Tipo_rublo`,`Usuario_id`) VALUES (2,'Comida','Retiro',1);
INSERT INTO `rublos` (`Id`,`Nombre_rublo`,`Tipo_rublo`,`Usuario_id`) VALUES (3,'Bebida','Retiro',1);
INSERT INTO `rublos` (`Id`,`Nombre_rublo`,`Tipo_rublo`,`Usuario_id`) VALUES (4,'Ropa','Retiro',1);
INSERT INTO `rublos` (`Id`,`Nombre_rublo`,`Tipo_rublo`,`Usuario_id`) VALUES (5,'Servicios Casa','Retiro',1);
INSERT INTO `rublos` (`Id`,`Nombre_rublo`,`Tipo_rublo`,`Usuario_id`) VALUES (6,'Efectivo','Ingreso',1);
INSERT INTO `rublos` (`Id`,`Nombre_rublo`,`Tipo_rublo`,`Usuario_id`) VALUES (7,'Comision','Ingreso',1);
INSERT INTO `rublos` (`Id`,`Nombre_rublo`,`Tipo_rublo`,`Usuario_id`) VALUES (8,'Regalo','Ingreso',1);
INSERT INTO `rublos` (`Id`,`Nombre_rublo`,`Tipo_rublo`,`Usuario_id`) VALUES (9,'Transferencia','Ingreso',1);
INSERT INTO `rublos` (`Id`,`Nombre_rublo`,`Tipo_rublo`,`Usuario_id`) VALUES (10,'Ahorro','Ingreso',1);

-- Insertar Datos en la tabla de Bancos --
INSERT INTO `bancos` (`Id`,`Nombre_banco`,`Pais_banco`,`Tipo_banco`,`Imagen_banco`,`Status`,`Descripcion`,`Usuario_id`) VALUES (1,'Banco Popular','Republica Dominicana','Banco','http://banco.com','Activo','Banco de los dominicanos',1);
INSERT INTO `bancos` (`Id`,`Nombre_banco`,`Pais_banco`,`Tipo_banco`,`Imagen_banco`,`Status`,`Descripcion`,`Usuario_id`) VALUES (2,'Banco Banreserva','Republica Dominicana','Banco','http://banco2dfssfd.com','Activo','Banco BANRESERVSASDSS',1);
INSERT INTO `bancos` (`Id`,`Nombre_banco`,`Pais_banco`,`Tipo_banco`,`Imagen_banco`,`Status`,`Descripcion`,`Usuario_id`) VALUES (3,'Banco BHD','Republica Dominicana','Banco','http://banco3dfsf.com','Activo','Banco BHDDDD',1);
INSERT INTO `bancos` (`Id`,`Nombre_banco`,`Pais_banco`,`Tipo_banco`,`Imagen_banco`,`Status`,`Descripcion`,`Usuario_id`) VALUES (4,'Asociacion Popular','Republica Dominicana','Asociacion','http://banco3dfsf.com','Activo','Banco de la asociacion',1);


-- Insertar Datos en la tabla de Cuentas --
INSERT INTO `cuentas` (`Id`,`Nombre_cuenta`,`Tipo_cuenta`,`Moneda_cuenta`,`Status`,`Numero_cuenta`,`Usuario_id`,`Banco_id`) VALUES (1,'Cuenta 1 popular carlos','Ahorro','DO','Activo',235543,1,1);
INSERT INTO `cuentas` (`Id`,`Nombre_cuenta`,`Tipo_cuenta`,`Moneda_cuenta`,`Status`,`Numero_cuenta`,`Usuario_id`,`Banco_id`) VALUES (2,'Cuenta 2 popular carlos','Ahorro','DO','Activo',3235543,1,1);
INSERT INTO `cuentas` (`Id`,`Nombre_cuenta`,`Tipo_cuenta`,`Moneda_cuenta`,`Status`,`Numero_cuenta`,`Usuario_id`,`Banco_id`) VALUES (3,'Cuenta 1 BHD carlos','Ahorro','DO','Activo',13235543,1,3);
INSERT INTO `cuentas` (`Id`,`Nombre_cuenta`,`Tipo_cuenta`,`Moneda_cuenta`,`Status`,`Numero_cuenta`,`Usuario_id`,`Banco_id`) VALUES (4,'Cuenta 2 BHD carlos','Ahorro','DO','Activo',23235543,1,3);
INSERT INTO `cuentas` (`Id`,`Nombre_cuenta`,`Tipo_cuenta`,`Moneda_cuenta`,`Status`,`Numero_cuenta`,`Usuario_id`,`Banco_id`) VALUES (5,'Cuenta 3 BHD carlos','Ahorro','DO','Activo',333235543,1,3);
INSERT INTO `cuentas` (`Id`,`Nombre_cuenta`,`Tipo_cuenta`,`Moneda_cuenta`,`Status`,`Numero_cuenta`,`Usuario_id`,`Banco_id`) VALUES (6,'Cuenta 1 popular jose','Ahorro','DO','Activo',43235543,2,1);
INSERT INTO `cuentas` (`Id`,`Nombre_cuenta`,`Tipo_cuenta`,`Moneda_cuenta`,`Status`,`Numero_cuenta`,`Usuario_id`,`Banco_id`) VALUES (7,'cuenta 2 popular jose','Ahorro','DO','Activo',43209543,2,1);
INSERT INTO `cuentas` (`Id`,`Nombre_cuenta`,`Tipo_cuenta`,`Moneda_cuenta`,`Status`,`Numero_cuenta`,`Usuario_id`,`Banco_id`) VALUES (8,'cuenta 1 banreserva jose','Ahorro','DO','Activo',43895543,2,2);
INSERT INTO `cuentas` (`Id`,`Nombre_cuenta`,`Tipo_cuenta`,`Moneda_cuenta`,`Status`,`Numero_cuenta`,`Usuario_id`,`Banco_id`) VALUES (9,'Cuenta 1 asocia maria','Ahorro','DO','Activo',46735543,3,4);

-- Insertar Datos en la tabla de Libretas --
INSERT INTO `libretas` (`Id`,`Tipo_movimiento`,`Monto`,`Fecha`,`numero_transacion`,`Rublo_id`,`Cuenta_id`) VALUES (1,'Ingreso',500,'2022-09-28 00:00:00','000000001',6,1);
INSERT INTO `libretas` (`Id`,`Tipo_movimiento`,`Monto`,`Fecha`,`numero_transacion`,`Rublo_id`,`Cuenta_id`) VALUES (2,'Ingreso',25,'2022-09-28 00:00:00','000000002',6,1);
INSERT INTO `libretas` (`Id`,`Tipo_movimiento`,`Monto`,`Fecha`,`numero_transacion`,`Rublo_id`,`Cuenta_id`) VALUES (3,'Ingreso',200,'2022-09-28 00:00:00','000000003',6,1);
INSERT INTO `libretas` (`Id`,`Tipo_movimiento`,`Monto`,`Fecha`,`numero_transacion`,`Rublo_id`,`Cuenta_id`) VALUES (4,'Ingreso',75,'2022-07-28 00:00:00','000000004',6,1);
INSERT INTO `libretas` (`Id`,`Tipo_movimiento`,`Monto`,`Fecha`,`numero_transacion`,`Rublo_id`,`Cuenta_id`) VALUES (5,'Ingreso',400,'2022-07-28 00:00:00','000000005',8,2);
INSERT INTO `libretas` (`Id`,`Tipo_movimiento`,`Monto`,`Fecha`,`numero_transacion`,`Rublo_id`,`Cuenta_id`) VALUES (6,'Ingreso',150,'2022-07-28 00:00:00','000000006',8,2);
INSERT INTO `libretas` (`Id`,`Tipo_movimiento`,`Monto`,`Fecha`,`numero_transacion`,`Rublo_id`,`Cuenta_id`) VALUES (7,'Ingreso',50,'2023-08-28 00:00:00','000000007',8,2);
INSERT INTO `libretas` (`Id`,`Tipo_movimiento`,`Monto`,`Fecha`,`numero_transacion`,`Rublo_id`,`Cuenta_id`) VALUES (8,'Ingreso',100,'2023-08-28 00:00:00','000000008',9,5);
INSERT INTO `libretas` (`Id`,`Tipo_movimiento`,`Monto`,`Fecha`,`numero_transacion`,`Rublo_id`,`Cuenta_id`) VALUES (9,'Ingreso',150,'2023-08-28 00:00:00','000000009',9,5);
INSERT INTO `libretas` (`Id`,`Tipo_movimiento`,`Monto`,`Fecha`,`numero_transacion`,`Rublo_id`,`Cuenta_id`) VALUES (10,'Ingreso',250,'2021-08-28 00:00:00','0000000010',9,5);
INSERT INTO `libretas` (`Id`,`Tipo_movimiento`,`Monto`,`Fecha`,`numero_transacion`,`Rublo_id`,`Cuenta_id`) VALUES (11,'Ingreso',200,'2021-08-28 00:00:00','0000000011',6,7);
INSERT INTO `libretas` (`Id`,`Tipo_movimiento`,`Monto`,`Fecha`,`numero_transacion`,`Rublo_id`,`Cuenta_id`) VALUES (12,'Ingreso',200,'2021-08-28 00:00:00','0000000012',7,7);
INSERT INTO `libretas` (`Id`,`Tipo_movimiento`,`Monto`,`Fecha`,`numero_transacion`,`Rublo_id`,`Cuenta_id`) VALUES (13,'Ingreso',300,'2022-08-28 00:00:00','0000000013',8,7);
INSERT INTO `libretas` (`Id`,`Tipo_movimiento`,`Monto`,`Fecha`,`numero_transacion`,`Rublo_id`,`Cuenta_id`) VALUES (14,'Ingreso',300,'2022-08-28 00:00:00','0000000014',9,7);
INSERT INTO `libretas` (`Id`,`Tipo_movimiento`,`Monto`,`Fecha`,`numero_transacion`,`Rublo_id`,`Cuenta_id`) VALUES (15,'Ingreso',100,'2022-08-28 00:00:00','0000000015',10,9);
INSERT INTO `libretas` (`Id`,`Tipo_movimiento`,`Monto`,`Fecha`,`numero_transacion`,`Rublo_id`,`Cuenta_id`) VALUES (16,'Ingreso',200,'2022-08-28 00:00:00','0000000016',10,9);
INSERT INTO `libretas` (`Id`,`Tipo_movimiento`,`Monto`,`Fecha`,`numero_transacion`,`Rublo_id`,`Cuenta_id`) VALUES (17,'Ingreso',300,'2022-08-28 00:00:00','0000000017',10,9);
INSERT INTO `libretas` (`Id`,`Tipo_movimiento`,`Monto`,`Fecha`,`numero_transacion`,`Rublo_id`,`Cuenta_id`) VALUES (18,'Ingreso',500,'2022-08-28 00:00:00','0000000018',10,9);

-- Insertar Datos en la tabla de ROl
INSERT INTO `roles` (`Id`,`Nombre_rol`,`Tipo_rol`,`Descripcion_rol`) VALUES (1,'Gerente','Ninguno','Es el gerente');
INSERT INTO `roles` (`Id`,`Nombre_rol`,`Tipo_rol`,`Descripcion_rol`) VALUES (2,'Sub-Gerente','Ninguno','Es el Sub-gerente');
INSERT INTO `roles` (`Id`,`Nombre_rol`,`Tipo_rol`,`Descripcion_rol`) VALUES (3,'Vendedor','Ninguno','Es el Vendedor');
INSERT INTO `roles` (`Id`,`Nombre_rol`,`Tipo_rol`,`Descripcion_rol`) VALUES (4,'Cajero','Ninguno','Es el Cajero');

-- Insertar Datos en la tabla de relacion de Usuario y Rol
INSERT INTO `usuarios_roles` (`Id`,`Usuario_id`,`Rol_id`) VALUES (1,1,1);
INSERT INTO `usuarios_roles` (`Id`,`Usuario_id`,`Rol_id`) VALUES (2,1,2);
INSERT INTO `usuarios_roles` (`Id`,`Usuario_id`,`Rol_id`) VALUES (3,1,3);
INSERT INTO `usuarios_roles` (`Id`,`Usuario_id`,`Rol_id`) VALUES (4,1,4);
INSERT INTO `usuarios_roles` (`Id`,`Usuario_id`,`Rol_id`) VALUES (5,2,3);
INSERT INTO `usuarios_roles` (`Id`,`Usuario_id`,`Rol_id`) VALUES (6,2,4);
INSERT INTO `usuarios_roles` (`Id`,`Usuario_id`,`Rol_id`) VALUES (7,3,3);
INSERT INTO `usuarios_roles` (`Id`,`Usuario_id`,`Rol_id`) VALUES (8,4,4);