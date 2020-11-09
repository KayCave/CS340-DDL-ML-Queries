CREATE TABLE `Genres`(
	`genreID` INT AUTO_INCREMENT NOT NULL, 
	`genreName` varchar(255) NOT NULL,
	PRIMARY KEY (`genreID`)
)ENGINE=InnoDB;
 
INSERT INTO `Genres` (`id`, `genreName`) VALUES
	(1, 'SciFi'),
	(2, 'Fantasy'),
	(3, 'Non-Fiction'),
	(4, 'Biography'),
	(5, 'Young Adult'),
	(6, 'Horror'),
	(7, 'Historical')
	(8, 'Fiction'); 
  
CREATE TABLE `Books`(
	`ISBN` INT UNIQUE NOT NULL, 
	`bookTitle` varchar(225) NOT NULL,
	`publisher` varchar(225),
	`publishedDate` DATE,
	PRIMARY KEY(`ISBN`)
	)ENGINE=InnoDB;

INSERT INTO `Books`(`ISBN`, `bookTitle`, `publisher`, `publishedDate`) VALUES
	('9780446310789', 'To Kill a Mocking Bird', 'Grand Central Publishing', '1988-10-28'),
	('9781982127794', 'It', 'Scribner', '1986-09-15'),
	('9780451531568', 'The Story of My Life', 'Random House','2010-06-01'),
	('9780316007443', 'Twilight', 'Little Brown', '2007-07-18'),
	('9780261103252', 'The Lord of the Rings', 'Allen & Unwin', '1954-07-29'),
	('9780261103252', 'The Lord of the Rings', 'Allen & Unwin', '1954-07-29'),
	('9780618260300', 'The Hobbit', 'Allen & Unwin', '1937-09-27'),
	('9780812550702', 'Ender''s Game', 'St Martin''s Press', '1998-11-30');
 
CREATE TABLE `BookGenres`(
	`genreID` INT NOT NULL, 
	`ISBN` INT UNIQUE NOT NULL,
	PRIMARY KEY(`genreID`, `ISBN`),
	CONSTRAINT `fk_genreID` FOREIGN KEY(`genreID`) REFERENCES `Genres`(`genreID`) 
		ON DELETE CASCADE,
	CONSTRAINT `fk_ISBN` FOREIGN KEY(`ISBN`) REFERENCES `Books`(`ISBN`)
		ON DELETE CASCADE
	)ENGINE=InnoDB;

INSERT INTO `BookGenres`(`genreID`, `ISBN`) VALUES
	(7, '9781982127794'),
	(8, '9780446310789'),
	(4, '9780451531568'),
	(5, '9780316007443'),
	(2, '9780261103252'),
	(1, '9780812550702'),
	(2, '9780618260300');

CREATE TABLE `Users`(
	`userID` INT AUTO_INCREMENT UNIQUE NOT NULL,
	`username` varchar(225) NOT NULL,
	`userFirstName` varchar(225) NOT NULL,
	`userLastName` varchar(225) NOT NULL,
	`userCreationDate` DATE,
	PRIMARY KEY(`userID`));

INSERT INTO `Users`(`userID`, `username`, `userFirstName`, `userLastName`, `userCreationDate`) VALUES
	(1, 'SydyKitty', 'Sydney', 'Cave', '2018-07-23'),
	(2, 'Ramruzzle', 'Raymond', 'Miller', '2013-8-18'),
	(3, 'MCay13', 'Megan', 'Gregory', '2015-02-02'),
	(4, 'BookLover25', 'Bilbo', 'Baggins', '2019-12-25'),
	(5, 'Bookworm', 'Frodo', 'Baggins', '2019-11-17');
