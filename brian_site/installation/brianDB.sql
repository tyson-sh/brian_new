CREATE TABLE CD (
    cd_id INT AUTO_INCREMENT,
    serialNo CHAR(9) NOT NULL UNIQUE,
    title VARCHAR(100) NOT NULL,
    subtitle VARCHAR(150) NOT NULL,
    difficulty_level varchar(50) NOT NULL,
    category INT,
    photo MEDIUMBLOB,
    PRIMARY KEY(cd_id),
    FOREIGN KEY (category) REFERENCES category(category_id)
);

CREATE TABLE track (
	track_id INT AUTO_INCREMENT,
	cd_id INT NOT NULL,
	name VARCHAR(100) NOT NULL,
	PRIMARY KEY(track_id),
	FOREIGN KEY (cd_id) REFERENCES CD(cd_id)
);

CREATE TABLE category (
	category_id INT AUTO_INCREMENT,
	name VARCHAR(100) NOT NULL,
	PRIMARY KEY(category_id)
);

