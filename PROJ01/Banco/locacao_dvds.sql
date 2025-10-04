-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema locacao_dvds
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema locacao_dvds
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS locacao_dvds DEFAULT CHARACTER SET utf8 ;
USE locacao_dvds ;

-- -----------------------------------------------------
-- Table locacao_dvds.genero
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS locacao_dvds.genero (
  id INT NOT NULL AUTO_INCREMENT,
  descricao VARCHAR(40) NOT NULL,
  PRIMARY KEY (id))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table locacao_dvds.classificacao_etaria
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS locacao_dvds.classificacao_etaria (
  id INT NOT NULL AUTO_INCREMENT,
  descricao VARCHAR(40) NOT NULL,
  PRIMARY KEY (id))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table locacao_dvds.ator
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS locacao_dvds.ator (
  id INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(45) NOT NULL,
  sobrenome VARCHAR(45) NOT NULL,
  data_estreia DATE NOT NULL,
  PRIMARY KEY (id))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table locacao_dvds.dvd
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS locacao_dvds.dvd (
  id INT NOT NULL AUTO_INCREMENT,
  titulo VARCHAR(100) NOT NULL,
  ano_lancamento INT NOT NULL,
  ator_principal_id INT NOT NULL,
  ator_coadjuvante_id INT NOT NULL,
  data_lancamento DATE NOT NULL,
  duracao_minutos INT NOT NULL,
  classificacao_etaria_id INT NOT NULL,
  genero_id INT NOT NULL,
  PRIMARY KEY (id),
  INDEX fk_dvd_ator_principal_idx (ator_principal_id ASC),
  INDEX fk_dvd_ator_coadjuvante_idx (ator_coadjuvante_id ASC),
  INDEX fk_dvd_classificacao_etaria_idx (classificacao_etaria_id ASC),
  INDEX fk_dvd_genero_idx (genero_id ASC),
  CONSTRAINT fk_dvd_ator_principal
    FOREIGN KEY (ator_principal_id)
    REFERENCES locacao_dvds.ator (id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT fk_dvd_ator_coadjuvante
    FOREIGN KEY (ator_coadjuvante_id)
    REFERENCES locacao_dvds.ator (id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT fk_dvd_classificacao_etaria
    FOREIGN KEY (classificacao_etaria_id)
    REFERENCES locacao_dvds.classificacao_etaria (id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT fk_dvd_genero
    FOREIGN KEY (genero_id)
    REFERENCES locacao_dvds.genero (id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
