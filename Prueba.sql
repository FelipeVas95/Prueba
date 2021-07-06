
-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;


-- -----------------------------------------------------
-- Table `mydb`.`Materia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Materia` (
  `idMateria` INT NOT NULL AUTO_INCREMENT,
  `num_creditos` INT NULL,
  `docente` VARCHAR(45) NULL,
  `nom_materia` VARCHAR(45) NULL,
  PRIMARY KEY (`idMateria`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Horario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Horario` (
  `idHorario` INT NOT NULL AUTO_INCREMENT,
  `Salon` VARCHAR(45) NULL,
  `Horario` VARCHAR(45) NULL,
  PRIMARY KEY (`idHorario`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Materia_horario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Materia_horario` (
  `idMateria_horario` INT NOT NULL,
  `fk_idMateria` INT NOT NULL,
  `fk_idHorario` INT NOT NULL,
  PRIMARY KEY (`idMateria_horario`, `fk_idMateria`, `fk_idHorario`),
  INDEX `fk_idMateria_idx` (`fk_idMateria` ASC) VISIBLE,
  INDEX `fk_idHorario_idx` (`fk_idHorario` ASC) VISIBLE,
  CONSTRAINT `fk_idMateria`
    FOREIGN KEY (`fk_idMateria`)
    REFERENCES `mydb`.`Materia` (`idMateria`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_idHorario`
    FOREIGN KEY (`fk_idHorario`)
    REFERENCES `mydb`.`Horario` (`idHorario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


