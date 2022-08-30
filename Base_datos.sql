-- -----------------------------------------------------
-- Schema contabilidad
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `contabilidad` DEFAULT CHARACTER SET latin1 ;
USE `contabilidad` ;

-- -----------------------------------------------------
-- Table `contabilidad`.`usuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `contabilidad`.`usuarios` (
  `Id` INT(11) NOT NULL,
  `First_name` VARCHAR(45) NOT NULL,
  `Last_name` VARCHAR(45) NOT NULL,
  `Nickname` VARCHAR(45) NOT NULL,
  `Email` VARCHAR(45) NOT NULL,
  `Password` VARCHAR(200) NOT NULL,
  `Tipo_plan` VARCHAR(45) NOT NULL,
  `Phone` VARCHAR(45) NOT NULL,
  `Fecha_registro` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Status` VARCHAR(45) NOT NULL,
  `imagen_url` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE INDEX `Email_UNIQUE` (`Email` ASC),
  UNIQUE INDEX `Nickname_UNIQUE` (`Nickname` ASC),
  UNIQUE INDEX `Id_UNIQUE` (`Id` ASC) )
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `contabilidad`.`bancos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `contabilidad`.`bancos` (
  `Id` INT(11) NOT NULL,
  `Nombre_banco` VARCHAR(45) NOT NULL,
  `Pais_banco` VARCHAR(45) NOT NULL,
  `Tipo_banco` VARCHAR(45) NOT NULL,
  `Imagen_banco` VARCHAR(45) NULL DEFAULT NULL,
  `Status` VARCHAR(45) NOT NULL,
  `Descripcion` VARCHAR(45) NULL DEFAULT NULL,
  `Usuario_id` INT(11) NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE INDEX `Id_UNIQUE` (`Id` ASC),
  INDEX `bancos_usuario_idx` (`Usuario_id` ASC) ,
  CONSTRAINT `bancos_usuario`
    FOREIGN KEY (`Usuario_id`)
    REFERENCES `contabilidad`.`usuarios` (`Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `contabilidad`.`cuentas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `contabilidad`.`cuentas` (
  `Id` INT(11) NOT NULL,
  `Nombre_cuenta` VARCHAR(45) NOT NULL,
  `Tipo_cuenta` VARCHAR(45) NOT NULL,
  `Moneda_cuenta` VARCHAR(45) NOT NULL,
  `Status` VARCHAR(45) NOT NULL,
  `Numero_cuenta` INT(11) NOT NULL,
  `Usuario_id` INT(11) NOT NULL,
  `Banco_id` INT(11) NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE INDEX `Id_UNIQUE` (`Id` ASC) ,
  INDEX `cuentas_usuario_idx` (`Usuario_id` ASC) ,
  INDEX `cuentas_bancos_idx` (`Banco_id` ASC),
  CONSTRAINT `cuentas_bancos`
    FOREIGN KEY (`Banco_id`)
    REFERENCES `contabilidad`.`bancos` (`Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `cuentas_user`
    FOREIGN KEY (`Usuario_id`)
    REFERENCES `contabilidad`.`usuarios` (`Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `contabilidad`.`rublos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `contabilidad`.`rublos` (
  `Id` INT(11) NOT NULL,
  `Nombre_rublo` VARCHAR(45) NOT NULL,
  `Tipo_rublo` VARCHAR(45) NOT NULL,
  `Usuario_id` INT(11) NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE INDEX `Id_UNIQUE` (`Id` ASC) ,
  INDEX `rublos_user_idx` (`Usuario_id` ASC),
  CONSTRAINT `rublos_user`
    FOREIGN KEY (`Usuario_id`)
    REFERENCES `contabilidad`.`usuarios` (`Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `contabilidad`.`libretas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `contabilidad`.`libretas` (
  `Id` INT(11) NOT NULL,
  `Tipo_movimiento` VARCHAR(45) NOT NULL,
  `Monto` DECIMAL(10,0) NOT NULL,
  `fecha` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `numero_transacion` VARCHAR(45) NOT NULL,
  `Cuenta_id` INT(11) NOT NULL,
  `Rublo_id` INT(11) NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE INDEX `numero_transacion_UNIQUE` (`numero_transacion` ASC) ,
  INDEX `libretas_cuenta_idx` (`Cuenta_id` ASC),
  INDEX `libreta_rublo_idx` (`Rublo_id` ASC) ,
  CONSTRAINT `libreta_rublo`
    FOREIGN KEY (`Rublo_id`)
    REFERENCES `contabilidad`.`rublos` (`Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `libretas_cuenta`
    FOREIGN KEY (`Cuenta_id`)
    REFERENCES `contabilidad`.`cuentas` (`Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `contabilidad`.`roles`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `contabilidad`.`roles` (
  `Id` INT(11) NOT NULL,
  `Nombre_rol` VARCHAR(45) NOT NULL,
  `Tipo_rol` VARCHAR(45) NOT NULL,
  `Descripcion_rol` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE INDEX `Id_UNIQUE` (`Id` ASC) )
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `contabilidad`.`usuarios_roles`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `contabilidad`.`usuarios_roles` (
  `Id` INT(11) NOT NULL,
  `Usuario_id` INT(11) NOT NULL,
  `Rol_id` INT(11) NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE INDEX `Id_UNIQUE` (`Id` ASC),
  INDEX `usuarios_roles_usuarios_idx` (`Usuario_id` ASC),
  INDEX `usuarios_roles_rol_idx` (`Rol_id` ASC),
  CONSTRAINT `usuarios_roles_rol`
    FOREIGN KEY (`Rol_id`)
    REFERENCES `contabilidad`.`roles` (`Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `usuarios_roles_usuarios`
    FOREIGN KEY (`Usuario_id`)
    REFERENCES `contabilidad`.`usuarios` (`Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
DEFAULT CHARACTER SET = latin1;