CREATE TABLE users
(
  id INT NOT NULL AUTO_INCREMENT,
  username VARCHAR(100) NOT NULL,
  password VARCHAR(100) NOT NULL,
  role_id INT NOT NULL,
  enabled boolean NOT NULL,
  PRIMARY KEY (id),
  UNIQUE INDEX users_username_UNIQUE (username ASC),
  FOREIGN KEY (role_id) REFERENCES roles(id)
)
DEFAULT CHARACTER SET = utf8;

INSERT INTO users(enabled, password, username, role_id)
VALUES (true, 'test', 'admin',
	(SELECT id FROM roles WHERE name='admin' LIMIT 1)
);