CREATE SCHEMA `universitate2023` DEFAULT CHARACTER SET utf8 ;

CREATE TABLE `universitate2023`.`utlizatori` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nume` VARCHAR(45) NOT NULL,
  `prenume` VARCHAR(45) NOT NULL,
  `email` VARCHAR(145) NULL,
  `telefon` CHAR(10) NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

--Aplicatia 1

CREATE SCHEMA `magazin2023` DEFAULT CHARACTER SET utf8 ;

CREATE TABLE `universitate2023`.`produse` (
  `id produs` INT NOT NULL,
  `nume_produs` VARCHAR(45) NOT NULL,
  `cantitate` VARCHAR(45) NOT NULL,
  `id_firma` VARCHAR(45) NOT NULL,
  `firma` VARCHAR(45) NOT NULL,
  `adresa_firma` VARCHAR(445) NOT NULL,
  `model_produs` VARCHAR(45) NOT NULL,
  `stoc_produs` VARCHAR(45) NOT NULL,
  `pret` DECIMAL(7,2) NOT NULL,
  `categorie_produs` VARCHAR(45) NOT NULL,
  `descriere_produs` VARCHAR(545) NOT NULL,
  `data_add_produs` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id produs`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE SCHEMA `facultate2023` DEFAULT CHARACTER SET utf8 ;

CREATE TABLE `studenti` (
  `idstudenti` int(10) unsigned NOT NULL,
  `nume` varchar(45) NOT NULL,
  `prenume` varchar(45) NOT NULL,
  `grupa` set('1','2','3','4') DEFAULT NULL,
  `email` varchar(145) DEFAULT NULL,
  `data_add` varchar(45) DEFAULT NULL,
  `status` enum('admis','respins','neevaluat') DEFAULT 'neevaluat',
  PRIMARY KEY (`idstudenti`),
  UNIQUE KEY `nume_unic` (`nume`,`prenume`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
