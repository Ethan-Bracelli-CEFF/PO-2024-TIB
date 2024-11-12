-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema tib
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `tib` ;

-- -----------------------------------------------------
-- Schema tib
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `tib` DEFAULT CHARACTER SET utf8mb3 ;
USE `tib` ;

-- -----------------------------------------------------
-- Table `tib`.`questions`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tib`.`questions` ;

CREATE TABLE IF NOT EXISTS `tib`.`questions` (
  `idquestions` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `texte` VARCHAR(255) NOT NULL,
  `type` TINYINT UNSIGNED NOT NULL DEFAULT '0',
  `diff` TINYINT UNSIGNED NOT NULL,
  `theme` TINYINT UNSIGNED NOT NULL,
  PRIMARY KEY (`idquestions`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `tib`.`reponses`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tib`.`reponses` ;

CREATE TABLE IF NOT EXISTS `tib`.`reponses` (
  `idreponses` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `questions_idquestions` INT UNSIGNED NOT NULL,
  `texte` VARCHAR(255) NOT NULL,
  `bonne` TINYINT(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idreponses`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `tib`.`user`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tib`.`user` ;

CREATE TABLE IF NOT EXISTS `tib`.`user` (
  `iduser` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nom` VARCHAR(45) NOT NULL,
  `date_naissance` DATE NOT NULL,
  `points` TINYINT UNSIGNED NOT NULL,
  `question` TINYINT UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`iduser`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
