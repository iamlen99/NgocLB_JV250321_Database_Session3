CREATE SCHEMA `session03_exercise6`;

USE `session03_exercise6`;


CREATE TABLE `suppliers` (
	`supplier_id` INT,
	`supplier_name` VARCHAR(100) NOT NULL,
	`contact_email` VARCHAR(100) NOT NULL,
    PRIMARY KEY (`supplier_id`)
);

CREATE TABLE `products` (
	`product_id` INT,
	`product_name` VARCHAR(100) NOT NULL,
    `supplier_id` INT,
	`price` DECIMAL(10, 2) NOT NULL,
    `stock` INT NOT NULL,
    PRIMARY KEY (`product_id`),
    CONSTRAINT `supplier_fk`
		FOREIGN KEY (`supplier_id`)
        REFERENCES `suppliers` (`supplier_id`)
        ON DELETE CASCADE
);

-- INSERT
INSERT INTO `suppliers`
VALUES
(1, 'Ngoc', 'allblue@gmail.com'),
(2, 'Linh', 'allblue2@gmail.com'),
(3, 'Long', 'allblue3@gmail.com');

INSERT INTO `products`
VALUES
(1, 'television', 1, 1000, 300),
(2, 'fan', 2, 100, 200),
(3, 'pen', 3, 10, 3000),
(4, 'laptop', 1, 1000, 420);

-- UPDATE
UPDATE `products`
SET `price` = 45.99
WHERE (`product_id` = 2);

UPDATE `suppliers`
SET `supplier_name` = 'MrNgoc'
WHERE (`supplier_id` = 1);

-- DELETE
DELETE FROM `suppliers`
WHERE (`supplier_id` = 3);

DELETE FROM `products`
WHERE (`product_id` = 4);

-- SELECT
SELECT * FROM `products`;

SELECT * FROM `suppliers`;
