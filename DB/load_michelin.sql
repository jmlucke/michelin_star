LOAD DATA INFILE 'michelin_my_maps.csv' 
INTO TABLE michelin.michelin_star 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
