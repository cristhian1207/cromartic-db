-- MySQL Script generated by MySQL Workbench
-- Sun Feb 24 17:24:12 2019
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema db_cromartic_security
-- -----------------------------------------------------
-- Security database.

-- -----------------------------------------------------
-- Schema db_cromartic_security
--
-- Security database.
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `db_cromartic_security` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin ;
USE `db_cromartic_security` ;

-- -----------------------------------------------------
-- Table `db_cromartic_security`.`tb_user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_cromartic_security`.`tb_user` (
  `id` BIGINT NOT NULL,
  `username` NVARCHAR(25) NOT NULL,
  `name` NVARCHAR(50) NOT NULL,
  `pat_lastname` NVARCHAR(30) NOT NULL,
  `mat_lastname` NVARCHAR(30) NOT NULL,
  `email` NVARCHAR(60) NOT NULL,
  `password` NVARCHAR(100) NOT NULL,
  `image` NVARCHAR(255) NOT NULL,
  `created_date` DATETIME NOT NULL,
  `updated_date` DATETIME NOT NULL,
  `status` TINYINT(1) NOT NULL,
  `description` NVARCHAR(255) NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `username_UNIQUE` (`username` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_cromartic_security`.`tb_role`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_cromartic_security`.`tb_role` (
  `id` BIGINT NOT NULL,
  `rolename` NVARCHAR(20) NOT NULL,
  `description` NVARCHAR(250) NOT NULL,
  `created_date` DATETIME NOT NULL,
  `updated_date` DATETIME NOT NULL,
  `created_user` NVARCHAR(25) NULL,
  `updated_user` NVARCHAR(25) NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `rolename_UNIQUE` (`rolename` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_cromartic_security`.`tb_user_role`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_cromartic_security`.`tb_user_role` (
  `user_id` BIGINT NOT NULL,
  `role_id` BIGINT NOT NULL,
  PRIMARY KEY (`user_id`, `role_id`),
  INDEX `fk_tb_user_role_tb_role1_idx` (`role_id` ASC) VISIBLE,
  CONSTRAINT `fk_tb_user_role_tb_user`
    FOREIGN KEY (`user_id`)
    REFERENCES `db_cromartic_security`.`tb_user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tb_user_role_tb_role1`
    FOREIGN KEY (`role_id`)
    REFERENCES `db_cromartic_security`.`tb_role` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;