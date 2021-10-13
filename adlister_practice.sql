CREATE DATABASE ad_lister_test;

USE ad_lister_test;
CREATE TABLE created_ads(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    ads_id INT UNSIGNED NOT NULL,
    FOREIGN KEY (ads_id) REFERENCES users(id), ads(id)
);
CREATE TABLE users(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    email VARCHAR(50) NOT NULL,
    password VARCHAR(25) NOT NULL,

)