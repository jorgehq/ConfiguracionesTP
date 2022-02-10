drop database if exists SistemaCursosOnline;
create database SistemaCursosOnline;
use SistemaCursosOnline;

DROP TABLE IF EXISTS profesor ;

CREATE TABLE profesor (
  `idProfesor` INT NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(45) NULL,
  `Apellido` VARCHAR(45) NULL,
  `DNI` VARCHAR(30) NULL,
  `Estudios` VARCHAR(45) NULL,
  PRIMARY KEY (`idProfesor`));


-- -----------------------------------------------------
-- Table `SistemaCursos`.`Cursos`
-- -----------------------------------------------------
DROP TABLE IF EXISTS cursos ;

CREATE TABLE cursos (
  `idCursos` INT NOT NULL,
  `NombreCur` VARCHAR(45) NOT NULL,
  `Duracion` INT NULL,
  `Dedicacion` INT NULL,
  `Precio` INT NULL,
  `Especialidad` VARCHAR(45) NULL,
  PRIMARY KEY (`idCursos`));


-- -----------------------------------------------------
-- Table `SistemaCursos`.`Cursos disponibles`
-- -----------------------------------------------------
DROP TABLE IF EXISTS cursos_disponibles ;

CREATE TABLE cursos_disponibles (
  `idCursos_disponibles` INT NOT NULL auto_increment,
  `Profesor_idProfesor` INT NOT NULL,
  `Cursos_idCursos` INT NOT NULL,
  PRIMARY KEY (`idCursos_disponibles`, `Profesor_idProfesor`, `Cursos_idCursos`),
  INDEX `fk_Cursos_disponibles_Profesor_idx` (`Profesor_idProfesor` ASC),
  INDEX `fk_Cursos_disponibles_Cursos1_idx` (`Cursos_idCursos` ASC),
  CONSTRAINT `fk_Cursos_disponibles_Profesor`
    FOREIGN KEY (`Profesor_idProfesor`)
    REFERENCES profesor (`idProfesor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Cursos_disponibles_Cursos1`
    FOREIGN KEY (`Cursos_idCursos`)
    REFERENCES cursos (`idCursos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table `SistemaCursos`.`usuario`
-- -----------------------------------------------------
DROP TABLE IF EXISTS usuario ;

CREATE TABLE usuario (
  `DNI` INT NOT NULL,
  `Nombre` VARCHAR(45) NULL,
  `Email` VARCHAR(45) NULL,
  `telefono` VARCHAR(45) NULL,
  `FormaCompra` VARCHAR(45) NULL,
  `contrasena` VARCHAR(45) NULL,
  PRIMARY KEY (`DNI`));


-- -----------------------------------------------------
-- Table `SistemaCursos`.`Inscripcion`
-- -----------------------------------------------------
DROP TABLE IF EXISTS inscripcion ;

CREATE TABLE inscripcion (
  `Id_Facturacion` INT NOT NULL auto_increment,
  `idCursos_disponiblesCur` INT NOT NULL,
  `usuario_DNI` INT NOT NULL,
  `Facturacon_Total` INT NULL,
  `descuento` VARCHAR(45) NULL,
  PRIMARY KEY (`Id_Facturacion`,`idCursos_disponiblesCur`, `usuario_DnI`),
  INDEX `fk_Inscripcion_Cursos disponibles1_idx` (`idCursos_disponiblesCur` ASC),
  INDEX `fk_Inscripcion_usuario1_idx` (`usuario_DNI` ASC),
  CONSTRAINT `fk_Inscripcion_Cursos disponibles1`
    FOREIGN KEY (`idCursos_disponiblesCur`)
    REFERENCES `cursos_disponibles` (`idCursos_disponibles`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Inscripcion_usuario1`
    FOREIGN KEY (`usuario_DNI`)
    REFERENCES usuario (`DNI`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);