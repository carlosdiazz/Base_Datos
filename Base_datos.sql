-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema contabilidad
-- -----------------------------------------------------

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
  UNIQUE INDEX `Email_UNIQUE` (`Email` ASC) VISIBLE)
ENGINE = InnoDB
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
  INDEX `bancos_usuario_idx` (`Usuario_id` ASC) VISIBLE,
  CONSTRAINT `bancos_usuario`
    FOREIGN KEY (`Usuario_id`)
    REFERENCES `contabilidad`.`usuarios` (`Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
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
  INDEX `cuentas_usuario_idx` (`Usuario_id` ASC) VISIBLE,
  INDEX `cuentas_bancos_idx` (`Banco_id` ASC) VISIBLE,
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
ENGINE = InnoDB
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
  INDEX `rublos_user_idx` (`Usuario_id` ASC) VISIBLE,
  CONSTRAINT `rublos_user`
    FOREIGN KEY (`Usuario_id`)
    REFERENCES `contabilidad`.`usuarios` (`Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `contabilidad`.`libretas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `contabilidad`.`libretas` (
  `Id` INT(11) NOT NULL,
  `Tipo_movimiento` VARCHAR(45) NOT NULL,
  `Monto` DECIMAL(10,0) NOT NULL,
  `fecha` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `numero_transacion` VARCHAR(45) NULL DEFAULT NULL,
  `Cuenta_id` INT(11) NOT NULL,
  `Rublo_id` INT(11) NOT NULL,
  PRIMARY KEY (`Id`),
  INDEX `libretas_cuenta_idx` (`Cuenta_id` ASC) VISIBLE,
  INDEX `libreta_rublo_idx` (`Rublo_id` ASC) VISIBLE,
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
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
