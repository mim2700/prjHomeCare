LOAD DATA INFILE '/opt/workspace/RCFE-Data-CA-Aug-2018_01.csv' 
 INTO TABLE rcfe 
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
;
;