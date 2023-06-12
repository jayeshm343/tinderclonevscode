DROP DATABASE IF EXISTS tinder_clone;

CREATE DATABASE tinder_clone;

USE tinderclone;

CREATE TABLE user_account (
	id BIGINT NOT NULL AUTO_INCREMENT,
	user_email VARCHAR(255) NOT NULL,
	user_password VARCHAR(255) NOT NULL,
	user_full_name VARCHAR(255) NOT NULL,
	user_age INT NOT NULL,
    user_phoneno INT(10) NOT NULL,
    user_otp INT(6) NOT NULL,
    user_dob DATETIME NOT NULL,
    user_mother_tongue VARCHAR NOT NULL,
    user_religion VARCHAR NOT NULL,
    user_location VARCHAR NOT NULL,
    user_marital_status VARCHAR NOT NULL,
    user_height VARCHAR NOT NULL,
    user_cast VARCHAR NOT NULL,
    user_birth_star VARCHAR NOT NULL,
    user_disabled VARCHAR NOT NULL,
    user_education VARCHAR NOT NULL,
    user_bio VARCHAR NOT NULL,
    user_food VARCHAR NOT NULL,
    user_drinking VARCHAR NOT NULL,
    user_smoking VARCHAR NOT NULL,
    user_ideologies_beliefs VARCHAR NOT NULL,
    user_interests_hobbies json NOT NULL,
    user_show_full_name bool NOT NULL,
    user_show_dob bool NOT NULL,
    user_show_location NOT NULL,
    user_referral_code VARCHAR NOT NULL,
	user_avatar VARCHAR(255) NOT NULL,
	user_gender VARCHAR(255) NOT NULL,
	user_cometchat_uid VARCHAR(255) NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE match_request (
	id BIGINT NOT NULL AUTO_INCREMENT,
	match_request_from VARCHAR(255) NOT NULL,
	match_request_to VARCHAR(255) NOT NULL,
	match_request_sender VARCHAR(255) NOT NULL,
	match_request_receiver VARCHAR(255) NOT NULL,
	match_request_status INT NOT NULL,
	created_date DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
	accepted_date DATETIME NULL,
	PRIMARY KEY (id)
);
