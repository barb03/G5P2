DROP DATABASE IF EXISTS goal_db;
CREATE DATABASE goal_db;
USE goal_db;

CREATE TABLE teams(
id int NOT NULL AUTO_INCREMENT,
user_team VARCHAR(255),
PRIMARY KEY (id)
);

CREATE TABLE categories(
id int NOT NULL AUTO_INCREMENT,
category_name VARCHAR(255),
PRIMARY KEY (id)
);
INSERT INTO categories (category_name) VALUES ("fitness");
INSERT INTO categories (category_name) VALUES ("finance");
INSERT INTO categories (category_name) VALUES ("education");
INSERT INTO categories (category_name) VALUES ("books");
INSERT INTO categories (category_name) VALUES ("health");
INSERT INTO categories (category_name) VALUES ("spiritual");
INSERT INTO categories (category_name) VALUES ("career");
INSERT INTO categories (category_name) VALUES ("diet");

CREATE TABLE user_goal(
id int NOT NULL AUTO_INCREMENT,
goal_name VARCHAR(255),
user_team INT NULL,
FOREIGN KEY(user_team) REFERENCES teams(id),
PRIMARY KEY (id)
);

CREATE TABLE users(
id int NOT NULL AUTO_INCREMENT,
user_name VARCHAR(255) NOT NULL,
password VARCHAR(255) NOT NULL,
category_name INT NULL,
goal VARCHAR(255),
start_date date,
goal_status VARCHAR(255),
end_date date,
user_goal INT NULL,
FOREIGN KEY(category_name) REFERENCES categories(id),
FOREIGN KEY(user_goal) REFERENCES user_goal(id),
PRIMARY KEY (id)
);
