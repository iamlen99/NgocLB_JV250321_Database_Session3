CREATE SCHEMA `session03_exercise5`;

USE `session03_exercise5`;

CREATE TABLE `students` (
	`student_id` INT,
	`student_name` VARCHAR(50) NOT NULL,
	`major` VARCHAR(50) NOT NULL,
    PRIMARY KEY (`student_id`)
);


CREATE TABLE `courses` (
	`course_id` INT,
	`course_name` VARCHAR(100) NOT NULL,
	`instructor` VARCHAR(50) NOT NULL,
    PRIMARY KEY (`course_id`)
);

-- INSERT
INSERT INTO `students`
VALUES 
(1,  'Alice', 'Computer Science'),
(2,  'Bob', 'Mathematics'),
(3,  'Lenz', 'Mathematics'),
(4,  'Charlie', 'Physics');

INSERT INTO `courses`
VALUES 
(1,  'Math', 'Diep'),
(2,  'History', 'Ngoc'),
(3,  'English', 'Linh');

-- UPDATE
UPDATE `courses`
SET `course_name` = 'Advanced Mathematics'
WHERE (`course_id` = 2);

UPDATE `students`
SET `major` = 'Engineering'
WHERE (`student_id` = 3);

-- DELETE 
DELETE FROM `students`
WHERE (`student_id` = 1);

DELETE FROM `courses`
WHERE (`course_id` = 3);

