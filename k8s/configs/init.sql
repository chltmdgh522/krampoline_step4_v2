CREATE SCHEMA IF NOT EXISTS `krampoline` DEFAULT CHARACTER SET utf8mb4;

GRANT ALL ON *.* TO 'root'@'localhost' IDENTIFIED BY 'root' WITH GRANT OPTION;
GRANT ALL ON krampoline.* TO 'root'@'localhost';
FLUSH PRIVILEGES;

USE `krampoline`;


CREATE TABLE `member` (
                          `member_id` VARCHAR(255) NOT NULL,
                          `phone` VARCHAR(255) NULL,
                          PRIMARY KEY (`member_id`)
) DEFAULT CHARSET=utf8mb4;

CREATE TABLE `note` (
                        `id` BIGINT NOT NULL AUTO_INCREMENT,
                        `alarm` BIT NOT NULL,
                        `execute` BIT NOT NULL,
                        `favorite` BIT NOT NULL,
                        `favorite_pre` INT NOT NULL,
                        `frequency` INT NOT NULL,
                        `station` INT NOT NULL,
                        `departure` VARCHAR(255) NULL,
                        `destination` VARCHAR(255) NULL,
                        `member_id` VARCHAR(255) NULL,
                        `notion_id` VARCHAR(255) NULL,
                        `station_id` VARCHAR(255) NULL,
                        `time` VARCHAR(255) NULL,
                        PRIMARY KEY (`id`),
                        CONSTRAINT `FK_note_member`
                            FOREIGN KEY (`member_id`) REFERENCES `member` (`member_id`)
) DEFAULT CHARSET=utf8mb4;


