CREATE DATABASE IF NOT EXISTS shirts_db;
USE shirts_db;

DROP TABLE IF EXISTS shirts;
CREATE TABLE shirts (
	shirt_id INT PRIMARY KEY AUTO_INCREMENT,
    article VARCHAR(20),
    color VARCHAR(20),
    shirt_size VARCHAR(5),
    last_worn INT
);

# 1
SET GLOBAL local_infile = ON;
# Expected to be at C:\shirts.txt
LOAD DATA LOCAL INFILE '/shirts.txt' INTO TABLE shirts;

# 2
INSERT INTO shirts VALUES (
	0, 'polo shirt', 'purple', 'M', 50
);

# 3
SELECT article, color
FROM shirts;

# 4
SELECT article, color, shirt_size, last_worn
FROM shirts
WHERE shirt_size = 'M'; 

# 5
UPDATE shirts
SET shirt_size = 'L'
WHERE article = 'polo shirt';

# 6
UPDATE shirts
SET last_worn = 0
WHERE last_worn = 15;

# 7
UPDATE shirts
SET shirt_size = 'XS', color = 'off white'
WHERE color = 'white';

# 8
DELETE FROM shirts
WHERE last_worn >= 200;

# 9
DELETE FROM shirts
WHERE article = 'tank top';

# 10
DELETE FROM shirts;

# 11
DROP TABLE shirts;
