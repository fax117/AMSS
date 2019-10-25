-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema irps_tec_db
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema irps_tec_db
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `irps_tec_db` DEFAULT CHARACTER SET utf8 ;
USE `irps_tec_db` ;

-- -----------------------------------------------------
-- Table `irps_tec_db`.`Usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `irps_tec_db`.`Usuario` (
  `id_usuario` INT NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(45) NOT NULL,
  `Apellido` VARCHAR(90) NOT NULL,
  `Fecha de Nacimiento` DATE NOT NULL,
  `Direccion` VARCHAR(255) NOT NULL,
  `Codigo Postal` INT(5) NOT NULL,
  `IndicePersonalizado` INT(2) NULL,
  `Correo electronico` VARCHAR(255) NOT NULL,
  `Contrasena` VARCHAR(25) NOT NULL,
  `NumeroRecordatorio` INT(2) NULL,
  PRIMARY KEY (`id_usuario`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `irps_tec_db`.`Cuestionario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `irps_tec_db`.`Cuestionario` (
  `Tipo` VARCHAR(255) NOT NULL,
  `FechaCreacion` DATE NOT NULL,
  `id_Cuestionario` INT(10) NOT NULL AUTO_INCREMENT,
  `RespuestaA` VARCHAR(255) NOT NULL,
  `RespuestaB` VARCHAR(255) NOT NULL,
  `RespuestaC` VARCHAR(255) NOT NULL,
  `Usuarioid_Usuario` INT(10) NOT NULL,
  PRIMARY KEY (`id_Cuestionario`),
  INDEX `Usuarioid_Usuario_idx` (`Usuarioid_Usuario` ASC) VISIBLE,
  CONSTRAINT `Cuestionario_Usuario`
    FOREIGN KEY (`Usuarioid_Usuario`)
    REFERENCES `irps_tec_db`.`Usuario` (`id_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `irps_tec_db`.`Consulta`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `irps_tec_db`.`Consulta` (
  `id_Consulta` INT(10) NOT NULL AUTO_INCREMENT,
  `Contenido` VARCHAR(1000) NOT NULL,
  `Respuesta` VARCHAR(1000) NULL,
  `Usuarioid_Usuario` INT(10) NOT NULL,
  PRIMARY KEY (`id_Consulta`),
  INDEX `Usuarioid_Usuario_idx` (`Usuarioid_Usuario` ASC) VISIBLE,
  CONSTRAINT `Consulta_Usuario`
    FOREIGN KEY (`Usuarioid_Usuario`)
    REFERENCES `irps_tec_db`.`Usuario` (`id_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `irps_tec_db`.`Condicion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `irps_tec_db`.`Condicion` (
  `Nombre` VARCHAR(255) NOT NULL,
  `Descripcion` VARCHAR(500) NOT NULL,
  `id_Condicion` INT(10) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_Condicion`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `irps_tec_db`.`Recomendaciones`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `irps_tec_db`.`Recomendaciones` (
  `id_Recomendaciones` INT(10) NOT NULL AUTO_INCREMENT,
  `Descripcion` VARCHAR(500) NOT NULL,
  `Nombre` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`id_Recomendaciones`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `irps_tec_db`.`Investigador`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `irps_tec_db`.`Investigador` (
  `Clearance` INT(1) NOT NULL,
  `Nombre` VARCHAR(255) NOT NULL,
  `Correo` VARCHAR(255) NOT NULL,
  `Contrasena` VARCHAR(255) NOT NULL,
  `id_Investigador` INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_Investigador`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `irps_tec_db`.`Usuario_Condicion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `irps_tec_db`.`Usuario_Condicion` (
  `Usuarioid_Usuario` INT(10) NOT NULL,
  `Condicionid_Condicion` INT(10) NOT NULL,
  PRIMARY KEY (`Usuarioid_Usuario`, `Condicionid_Condicion`),
  INDEX `Link_Condicion_idx` (`Condicionid_Condicion` ASC) VISIBLE,
  CONSTRAINT `Link_Usuario`
    FOREIGN KEY (`Usuarioid_Usuario`)
    REFERENCES `irps_tec_db`.`Usuario` (`id_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Link_Condicion`
    FOREIGN KEY (`Condicionid_Condicion`)
    REFERENCES `irps_tec_db`.`Condicion` (`id_Condicion`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;