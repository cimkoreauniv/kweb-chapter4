CREATE TABLE `students` (
    `name` VARCHAR(15) NOT NULL,
    `admission_year` INT NOT NULL,
    `major_id` INT NOT NULL,
    `personal_id` INT NOT NULL,
    `major` VARCHAR(20) NOT NULL,
    `phone_num` VARCHAR(15) NOT NULL,
    `house_address` VARCHAR(70) NOT NULL,
    `total_credit` INT NOT NULL DEFAULT 0,
    `average_grade` FLOAT NOT NULL,
    `in_school` TINYINT(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;