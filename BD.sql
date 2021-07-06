
-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`UNIC_department`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`UNIC_department` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `department_name` VARCHAR(45) NOT NULL,
  `city` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`UNIC_educationlevel`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`UNIC_educationlevel` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `description` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`UNIC_employee`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`UNIC_employee` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `firstname` VARCHAR(45) NOT NULL,
  `lastname` VARCHAR(45) NOT NULL,
  `department_id` INT NOT NULL,
  `salary` INT NOT NULL,
  `educationlevel_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `department_id`
    FOREIGN KEY (`id`)
    REFERENCES `mydb`.`UNIC_department` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `educationlevel_id`
    FOREIGN KEY (`id`)
    REFERENCES `mydb`.`UNIC_educationlevel` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
