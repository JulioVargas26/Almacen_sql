-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema basa
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `basa` ;

-- -----------------------------------------------------
-- Schema basa
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `basa` DEFAULT CHARACTER SET utf8mb3 ;
USE `basa` ;

-- -----------------------------------------------------
-- Table `basa`.`tb_insumo`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `basa`.`tb_insumo` ;

CREATE TABLE IF NOT EXISTS `basa`.`tb_insumo` (
  `id_insumo` INT NOT NULL AUTO_INCREMENT,
  `descripcion` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`id_insumo`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `basa`.`tb_serigrafiado`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `basa`.`tb_serigrafiado` ;

CREATE TABLE IF NOT EXISTS `basa`.`tb_serigrafiado` (
  `id_serigrafiado` INT NOT NULL AUTO_INCREMENT,
  `insumo` INT NOT NULL,
  `cantSalida` INT NOT NULL,
  `guiaSalida` VARCHAR(45) NOT NULL,
  `cantIngreso` INT NOT NULL,
  `guiaIngreso` VARCHAR(45) NOT NULL,
  `merma` INT NOT NULL,
  `fecha` DATE NOT NULL,
  PRIMARY KEY (`id_serigrafiado`),
  INDEX `fk_serigrafiado_insumo_idx` (`insumo` ASC) VISIBLE,
  CONSTRAINT `fk_serigrafiado_insumo`
    FOREIGN KEY (`insumo`)
    REFERENCES `basa`.`tb_insumo` (`id_insumo`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;

INSERT INTO `basa`.`tb_serigrafiado` (`insumo`, `cantSalida`, `guiaSalida`, `cantIngreso`, `guiaIngreso`, `merma`, `fecha`) VALUES ('1', '12000', 'g035-13256', '11998', 'g152-15236', '2', '2023-12-12');


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;