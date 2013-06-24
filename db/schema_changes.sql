-- Shuki 2013-06-24
ALTER TABLE `mission`
	ADD COLUMN `due_time` TIME NULL DEFAULT NULL AFTER `due_date`,
	ADD COLUMN `end_date` DATE NULL DEFAULT NULL AFTER `due_time`,
	ADD COLUMN `end_time` TIME NULL DEFAULT NULL AFTER `end_date`;

ALTER TABLE `mission`
	CHANGE COLUMN `comments` `comments` TEXT NULL AFTER `delivery_date`;
