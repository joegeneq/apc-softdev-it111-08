SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';


-- -----------------------------------------------------
-- Table `it111_excercise`.`Region`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `it111_excercise`.`Region` (
  `idRegion` INT NOT NULL AUTO_INCREMENT,
  `region_code` VARCHAR(32) NULL,
  `region_description` VARCHAR(32) NULL,
  PRIMARY KEY (`idRegion`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `it111_excercise`.`Province`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `it111_excercise`.`Province` (
  `idProvince` INT NOT NULL AUTO_INCREMENT,
  `province_code` VARCHAR(32) NULL,
  `province_description` VARCHAR(32) NULL,
  `Region_idRegion` INT NOT NULL,
  PRIMARY KEY (`idProvince`, `Region_idRegion`),
  INDEX `fk_Province_Region_idx` (`Region_idRegion` ASC),
  CONSTRAINT `fk_Province_Region`
    FOREIGN KEY (`Region_idRegion`)
    REFERENCES `it111_excercise`.`Region` (`idRegion`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `it111_excercise`.`City`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `it111_excercise`.`City` (
  `idCity` INT NOT NULL AUTO_INCREMENT,
  `city_code` VARCHAR(32) NULL,
  `city_description` VARCHAR(32) NULL,
  `Province_idProvince` INT NOT NULL,
  `Province_Region_idRegion` INT NOT NULL,
  PRIMARY KEY (`idCity`, `Province_idProvince`, `Province_Region_idRegion`),
  INDEX `fk_City_Province1_idx` (`Province_idProvince` ASC, `Province_Region_idRegion` ASC),
  CONSTRAINT `fk_City_Province1`
    FOREIGN KEY (`Province_idProvince` , `Province_Region_idRegion`)
    REFERENCES `it111_excercise`.`Province` (`idProvince` , `Region_idRegion`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
