USE `session03_exercise`;

CREATE TABLE `students` (
	`student_id` INT NOT NULL,
	`name` VARCHAR(100) NOT NULL,
	`age` INT NOT NULL,
	`major` VARCHAR(100) NOT NULL,
    PRIMARY KEY (`student_id`)
);

INSERT INTO `students`
VALUES 
(1,  'Alice', 20, 'Computer Science'),
(2,  'Bob', 22, 'Mathematics'),
(3,  'Charlie', 21, 'Physics');

UPDATE `students` 
SET `age` = 23
WHERE (`student_id` = 2);