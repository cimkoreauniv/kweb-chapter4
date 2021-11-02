CREATE TABLE `users` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `userid` VARCHAR(30) NOT NULL,
    `password` VARCHAR(30) NOT NULL,
    `nickname` VARCHAR(30) NOT NULL,
    `pf_image_link` VARCHAR(70) NOT NULL,
    `pf_status_msg` VARCHAR(50) NOT NULL,
    `quitted` TINYINT(1) NOT NULL DEFAULT 0,
    `reg_date` VARCHAR(10) NOT NULL,
    PRIMARY KEY (`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `channels` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(30) NOT NULL,
    `owner` INT NOT NULL,
    `channel_link` VARCHAR(70) NOT NULL,
    `max_users` INT NOT NULL,
    `quitted` TINYINT(1) NOT NULL DEFAULT 0,
    `create_date` VARCHAR(10) NOT NULL,
    PRIMARY KEY (`id`),
    FOREIGN KEY (`owner`)
    REFERENCES `users`(`id`) ON DELETE CASCADE
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `chats` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `content` VARCHAR(100) NOT NULL,
    `speaker` INT NOT NULL,
    `channel` INT NOT NULL,
    PRIMARY KEY (`id`),
    FOREIGN KEY (`speaker`)
    REFERENCES `users`(`id`) ON DELETE CASCADE,
    FOREIGN KEY (`channel`)
    REFERENCES `channels`(`id`) ON DELETE CASCADE
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `follows` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `follower` INT NOT NULL,
    `followee` INT NOT NULL,
    `follow_date` VARCHAR(10) NOT NULL,
    PRIMARY KEY (`id`),
    FOREIGN KEY (`follower`)
    REFERENCES `users`(`id`) ON DELETE CASCADE,
    FOREIGN KEY (`followee`)
    REFERENCES `users`(`id`) ON DELETE CASCADE
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `blocks` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `blocker` INT NOT NULL,
    `blockee` INT NOT NULL,
    `block_date` VARCHAR(10) NOT NULL,
    PRIMARY KEY (`id`),
    FOREIGN KEY (`blocker`)
    REFERENCES `users`(`id`) ON DELETE CASCADE,
    FOREIGN KEY (`blockee`)
    REFERENCES `users`(`id`) ON DELETE CASCADE
)ENGINE=InnoDB DEFAULT CHARSET=utf8;