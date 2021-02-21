CREATE SCHEMA `eco` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin ;

CREATE TABLE `eco`.`products` (
  `pro_id` INT NOT NULL AUTO_INCREMENT,
  `pro_name` VARCHAR(45) NOT NULL,
  `pro_description` VARCHAR(45) NOT NULL,
  `pro_weight` VARCHAR(45) NOT NULL,
  `pro_price` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`pro_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_bin;

CREATE TABLE `eco`.`clients` (
  `cli_id` INT NOT NULL AUTO_INCREMENT,
  `cli_nif` VARCHAR(45) NULL,
  `cli_name` VARCHAR(45) NULL,
  `cli_last_name` VARCHAR(45) NULL,
  `cli_phone` VARCHAR(45) NULL,
  `cli_email` VARCHAR(45) NULL,
  PRIMARY KEY (`cli_id`));
  
  CREATE TABLE `eco`.`invoices` (
  `inv_id` INT NOT NULL AUTO_INCREMENT,
  `pro_id` VARCHAR(45) NOT NULL,
  `quantity` VARCHAR(45) NULL,
  PRIMARY KEY (`inv_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_bin;

INSERT INTO `eco`.`clients` (`cli_id`, `cli_nif`, `cli_name`, `cli_last_name`, `cli_phone`, `cli_email`) VALUES ('1', '40000000J', 'Ana', 'Gales', '654454454', 'agales@email.com');
INSERT INTO `eco`.`clients` (`cli_id`, `cli_nif`, `cli_name`, `cli_last_name`, `cli_phone`, `cli_email`) VALUES ('2', '40000000K', 'Roberto', 'Fernandez', '654454455', 'rfernandez@email.com');
INSERT INTO `eco`.`clients` (`cli_id`, `cli_nif`, `cli_name`, `cli_last_name`, `cli_phone`, `cli_email`) VALUES ('3', '40000000L', 'Juan', 'Luna', '654454456', 'jluna@email.com');
INSERT INTO `eco`.`clients` (`cli_id`, `cli_nif`, `cli_name`, `cli_last_name`, `cli_phone`, `cli_email`) VALUES ('4', '40000000M', 'Julia', 'Galia', '654454457', 'jgalia@email.com');

INSERT INTO `eco`.`products` (`pro_id`, `pro_name`, `pro_description`, `pro_weight`, `pro_price`) VALUES ('1', 'cereal', 'Cereales hechos a partir de copos de avena', '250g', '3');
INSERT INTO `eco`.`products` (`pro_id`, `pro_name`, `pro_description`, `pro_weight`, `pro_price`) VALUES ('2', 'especias', 'Variado de sal y especias varias', '300g', '5');
INSERT INTO `eco`.`products` (`pro_id`, `pro_name`, `pro_description`, `pro_weight`, `pro_price`) VALUES ('3', 'lotion', 'Contiene acido hialuronico y aloe vera', '25g', '7');
INSERT INTO `eco`.`products` (`pro_id`, `pro_name`, `pro_description`, `pro_weight`, `pro_price`) VALUES ('4', 'tea', 'Infusion hecha unicamente con hojas de te verde ', '100g', '4');
INSERT INTO `eco`.`products` (`pro_id`, `pro_name`, `pro_description`, `pro_weight`, `pro_price`) VALUES ('5', 'detergent', 'Contiene jabon y tensioactivos no ionicos ', '600g', '9');
INSERT INTO `eco`.`products` (`pro_id`, `pro_name`, `pro_description`, `pro_weight`, `pro_price`) VALUES ('6', 'candy', 'Bombones hechos unicamente con chocolate negro y almendras', '300g', '4');

INSERT INTO `eco`.`invoices` (`inv_id`, `pro_id`, `quantity`) VALUES ('1', '3', '1');
INSERT INTO `eco`.`invoices` (`inv_id`, `pro_id`, `quantity`) VALUES ('2', '2', '3');
INSERT INTO `eco`.`invoices` (`inv_id`, `pro_id`, `quantity`) VALUES ('3', '5', '2');
INSERT INTO `eco`.`invoices` (`inv_id`, `pro_id`, `quantity`) VALUES ('4', '1', '4');


