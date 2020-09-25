# Create all tables

CREATE TABLE IF NOT EXISTS `accounts` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `name` varchar(125) DEFAULT NULL,
    `type` varchar(45) DEFAULT NULL,
    `user_id` int(11) DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE IF NOT EXISTS `repeat_transactions` (
   `id` int(11) NOT NULL AUTO_INCREMENT,
   `created_date` date DEFAULT NULL,
   `upcoming_date` date DEFAULT NULL,
   `transaction_id` int(11) DEFAULT NULL,
   `frequency` varchar(45) DEFAULT NULL,
   PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `settings` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `setting_name` varchar(45) DEFAULT NULL,
    `user_id` int(11) DEFAULT NULL,
    `setting_value` varchar(45) DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `transactions` (
    `transaction_id` int(11) NOT NULL AUTO_INCREMENT,
    `trans_date` date DEFAULT NULL,
    `amount` varchar(45) DEFAULT NULL,
    `description` varchar(45) DEFAULT NULL,
    `category` varchar(45) DEFAULT NULL,
    `account_id` int(11) DEFAULT NULL,
    `type` varchar(45) DEFAULT NULL,
    `memo` varchar(125) DEFAULT NULL,
    PRIMARY KEY (`transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `user_categories` (
   `id` int(11) NOT NULL AUTO_INCREMENT,
   `name` varchar(45) DEFAULT NULL,
   `userid` int(11) DEFAULT NULL,
   PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `users` (
     `id` int(11) NOT NULL AUTO_INCREMENT,
     `username` varchar(45) DEFAULT NULL,
     `email` varchar(45) DEFAULT NULL,
     `password` varchar(65) DEFAULT NULL,
     `createdAt` datetime DEFAULT CURRENT_TIMESTAMP,
     `userType` int(11) DEFAULT NULL,
     PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `settings`
(`setting_name`,`user_id`,`setting_value`)
VALUES('setup',null,'true');

INSERT INTO `settings`
(`setting_name`, `user_id`,`setting_value`)
VALUES
('app_version',NULL,'0.0.7');

INSERT INTO `categories` (`name`) VALUES
('food'),
('bills'),
('transportation'),
('home'),
('car'),
('entertainment'),
('shopping'),
('clothing'),
('insurance'),
('tax'),
('telephone'),
('salary'),
('fitness'),
('health'),
('sport'),
('baby'),
('pet'),
('beauty'),
('electronics'),
('vegetables'),
('snacks'),
('gifts'),
('social'),
('travel'),
('education'),
('fruits'),
('book'),
('office'),
('general'),
('other'),
('subscriptions'),
('hobbies'),
('business');