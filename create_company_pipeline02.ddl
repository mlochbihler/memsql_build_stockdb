CREATE PIPELINE company_pipeline 
AS LOAD DATA S3 '<your S3 Bucket>'
CONFIG '{"region": "<your region"}'
INTO TABLE company
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;
