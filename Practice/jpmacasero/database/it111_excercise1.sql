SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';


-- -----------------------------------------------------
-- Table `it111_excercise1`.`region`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `it111_excercise1`.`region` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `region_code` VARCHAR(32) NULL,
  `region_description` VARCHAR(32) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `it111_excercise1`.`province`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `it111_excercise1`.`province` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `province_code` VARCHAR(32) NULL,
  `province_description` VARCHAR(32) NULL,
  `Region_id` INT NOT NULL,
  PRIMARY KEY (`id`, `Region_id`),
  INDEX `fk_Province_Region_idx` (`Region_id` ASC),
  CONSTRAINT `fk_Province_Region`
    FOREIGN KEY (`Region_id`)
    REFERENCES `it111_excercise1`.`region` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `it111_excercise1`.`city`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `it111_excercise1`.`city` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `city_code` VARCHAR(32) NULL,
  `city_description` VARCHAR(32) NULL,
  `Province_id` INT NOT NULL,
  PRIMARY KEY (`id`, `Province_id`),
  INDEX `fk_City_Province1_idx` (`Province_id` ASC),
  CONSTRAINT `fk_City_Province1`
    FOREIGN KEY (`Province_id`)
    REFERENCES `it111_excercise1`.`province` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
