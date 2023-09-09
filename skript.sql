-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`user` (
  `id_user` INT NOT NULL,
  `login` VARCHAR(45) NOT NULL,
  `passw` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_user`),
  UNIQUE INDEX `id_user_UNIQUE` (`id_user` ASC) VISIBLE,
  UNIQUE INDEX `login_UNIQUE` (`login` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`profile`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`profile` (
  `id_profile` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `birthday` DATE NULL,
  `user_id` INT NOT NULL,
  PRIMARY KEY (`id_profile`, `user_id`),
  UNIQUE INDEX `id_profile_UNIQUE` (`id_profile` ASC) VISIBLE,
  INDEX `fk_profile_user1_idx` (`user_id` ASC) VISIBLE,
  CONSTRAINT `fk_profile_user1`
    FOREIGN KEY (`user_id`)
    REFERENCES `mydb`.`user` (`id_user`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`artist`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`artist` (
  `id_artist` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `descrip` VARCHAR(45) NULL,
  PRIMARY KEY (`id_artist`),
  UNIQUE INDEX `id_artist_UNIQUE` (`id_artist` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`genre`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`genre` (
  `id_genre` INT GENERATED ALWAYS AS () VIRTUAL,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_genre`),
  UNIQUE INDEX `id_genre_UNIQUE` (`id_genre` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`album`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`album` (
  `id_album` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `date` DATE NOT NULL,
  `duration` INT NOT NULL,
  `description` VARCHAR(45) NULL,
  `artist_id` INT NOT NULL,
  `genre_id` INT NOT NULL,
  PRIMARY KEY (`id_album`, `artist_id`, `genre_id`),
  UNIQUE INDEX `id_album_UNIQUE` (`id_album` ASC),
  INDEX `fk_album_artist1_idx` (`artist_id` ASC),
  INDEX `fk_album_genre1_idx` (`genre_id` ASC),
  CONSTRAINT `fk_album_artist1`
    FOREIGN KEY (`artist_id`)
    REFERENCES `mydb`.`artist` (`id_artist`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_album_genre1`
    FOREIGN KEY (`genre_id`)
    REFERENCES `mydb`.`genre` (`id_genre`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`song`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`song` (
  `id_song` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `duration` INT NOT NULL,
  `lyrics` VARCHAR(45) NULL,
  `date` DATE NOT NULL,
  `artist_id` INT NOT NULL,
  `genre_id` INT NOT NULL,
  PRIMARY KEY (`id_song`, `artist_id`, `genre_id`),
  INDEX `fk_song_artist1_idx` (`artist_id` ASC),
  INDEX `fk_song_genre1_idx` (`genre_id` ASC),
  CONSTRAINT `fk_song_artist1`
    FOREIGN KEY (`artist_id`)
    REFERENCES `mydb`.`artist` (`id_artist`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_song_genre1`
    FOREIGN KEY (`genre_id`)
    REFERENCES `mydb`.`genre` (`id_genre`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`album_song`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`album_song` (
  `id_alb_song` INT NOT NULL,
  `album_id` INT NOT NULL,
  `song_id` INT NOT NULL,
  PRIMARY KEY (`id_alb_song`, `album_id`, `song_id`),
  INDEX `fk_album_has_song_song1_idx` (`song_id` ASC),
  INDEX `fk_album_has_song_album1_idx` (`album_id` ASC),
  UNIQUE INDEX `id_alb_song_UNIQUE` (`id_alb_song` ASC),
  CONSTRAINT `fk_album_has_song_album1`
    FOREIGN KEY (`album_id`)
    REFERENCES `mydb`.`album` (`id_album`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_album_has_song_song1`
    FOREIGN KEY (`song_id`)
    REFERENCES `mydb`.`song` (`id_song`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`playlist`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`playlist` (
  `id_playlist` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `upd_date` DATE NOT NULL,
  `duration` INT NOT NULL,
  PRIMARY KEY (`id_playlist`),
  UNIQUE INDEX `id_playlist_UNIQUE` (`id_playlist` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`user_playlist`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`user_playlist` (
  `id_us_pl` INT NOT NULL,
  `user_id` INT NOT NULL,
  `playlist_id` INT NOT NULL,
  PRIMARY KEY (`id_us_pl`, `user_id`, `playlist_id`),
  INDEX `fk_user_has_playlist_playlist1_idx` (`playlist_id` ASC),
  INDEX `fk_user_has_playlist_user1_idx` (`user_id` ASC),
  UNIQUE INDEX `id_us_pl_UNIQUE` (`id_us_pl` ASC),
  CONSTRAINT `fk_user_has_playlist_user1`
    FOREIGN KEY (`user_id`)
    REFERENCES `mydb`.`user` (`id_user`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_user_has_playlist_playlist1`
    FOREIGN KEY (`playlist_id`)
    REFERENCES `mydb`.`playlist` (`id_playlist`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`song_playlist`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`song_playlist` (
  `id_song_pl` INT NOT NULL,
  `song_id` INT NOT NULL,
  `playlist_id` INT NOT NULL,
  PRIMARY KEY (`id_song_pl`, `song_id`, `playlist_id`),
  INDEX `fk_song_has_playlist_playlist1_idx` (`playlist_id` ASC),
  INDEX `fk_song_has_playlist_song1_idx` (`song_id` ASC),
  UNIQUE INDEX `id_song_pl_UNIQUE` (`id_song_pl` ASC),
  CONSTRAINT `fk_song_has_playlist_song1`
    FOREIGN KEY (`song_id`)
    REFERENCES `mydb`.`song` (`id_song`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_song_has_playlist_playlist1`
    FOREIGN KEY (`playlist_id`)
    REFERENCES `mydb`.`playlist` (`id_playlist`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
