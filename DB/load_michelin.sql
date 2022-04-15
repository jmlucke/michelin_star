LOAD DATA local INFILE 'michelin__cleaned.csv' 
INTO TABLE michelin.michelin_star 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
