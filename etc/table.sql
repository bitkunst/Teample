CREATE TABLE board (
    idx INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(40) NOT NULL,
    content TEXT NULL,
    nickname VARCHAR(20) NOT NULL,
    date TIMESTAMP NOT NULL,
    likes INT NOT NULL DEFAULT 0,
    view INT NOT NULL DEFAULT 0,
    userid VARCHAR(20) NOT NULL
);

CREATE TABLE comment (
    cid INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    comment TEXT NOT NULL,
    c_nickname VARCHAR(20) NOT NULL,
    c_date TIMESTAMP NOT NULL,
    bid INT NOT NULL,
    c_userid VARCHAR(20) NOT NULL
);

CREATE TABLE user (
    userid VARCHAR(20) NOT NULL PRIMARY KEY,
    userpw VARCHAR(20) NOT NULL,
    username VARCHAR(20) NOT NULL,
    nickname VARCHAR(20) NOT NULL,
    birth INT NOT NULL,
    gender VARCHAR(10) NOT NULL,
    phone INT NULL,
    mobile INT NOT NULL,
    level INT NOT NULL DEFAULT 3
);

CREATE TABLE scrap (
    s_idx INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    s_userid VARCHAR(20) NOT NULL,
    bid INT NOT NULL
);