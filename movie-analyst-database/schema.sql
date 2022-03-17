-- SET @user = "alex";

-- CREATE SCHEMA `movie_db` ;
use `movie_db`;


CREATE TABLE `publications` (
	`name` VARCHAR(250) NOT NULL COLLATE 'utf8mb4_0900_ai_ci',
	`avatar` VARCHAR(250) NULL DEFAULT NULL COLLATE 'utf8mb4_0900_ai_ci',
	PRIMARY KEY (`name`) USING BTREE
)
COLLATE='utf8mb4_0900_ai_ci'
ENGINE=InnoDB
;

CREATE TABLE `reviewers` (
	`name` VARCHAR(255) NOT NULL COLLATE 'utf8mb4_0900_ai_ci',
	`publication` VARCHAR(250) NULL DEFAULT NULL COLLATE 'utf8mb4_0900_ai_ci',
	`avatar` VARCHAR(250) NULL DEFAULT NULL COLLATE 'utf8mb4_0900_ai_ci',
	PRIMARY KEY (`name`) USING BTREE,
	INDEX `publication_fk` (`publication`) USING BTREE,
	CONSTRAINT `publication_fk` FOREIGN KEY (`publication`) REFERENCES `movie_db`.`publications` (`name`) ON UPDATE NO ACTION ON DELETE NO ACTION
)
COLLATE='utf8mb4_0900_ai_ci'
ENGINE=InnoDB
;


CREATE TABLE `movies` (
	`title` VARCHAR(250) NOT NULL COLLATE 'utf8mb4_0900_ai_ci',
	`release` VARCHAR(250) NULL DEFAULT NULL COLLATE 'utf8mb4_0900_ai_ci',
	`score` INT NULL DEFAULT NULL,
	`reviewer` VARCHAR(250) NULL DEFAULT NULL COLLATE 'utf8mb4_0900_ai_ci',
	PRIMARY KEY (`title`) USING BTREE,
	INDEX `reviewer_id` (`reviewer`) USING BTREE,
	CONSTRAINT `reviewer_id` FOREIGN KEY (`reviewer`) REFERENCES `movie_db`.`reviewers` (`name`) ON UPDATE NO ACTION ON DELETE NO ACTION
)
COLLATE='utf8mb4_0900_ai_ci'
ENGINE=InnoDB
;

