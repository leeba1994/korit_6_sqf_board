--DROP TABLE IF EXISTS USER;
--DROP TABLE IF EXISTS ROLE;
--DROP TABLE IF EXISTS USER_ROLES;
--DROP TABLE IF EXISTS COMMENT;
--
--CREATE TABLE USER (
--    id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
--    username VARCHAR(255) UNIQUE NOT NULL,
--    password VARCHAR(255) not null,
--    name VARCHAR(255) not null,
--    email VARCHAR(255) not null,
--    img TEXT not null DEFAULT 'https://firebasestorage.googleapis.com/v0/b/userprofile-cfdff.appspot.com/o/user%2Fdefault.png?alt=media&token=7113a54b-a2b7-48b6-ac96-4e803358bbbf'
--);
--
--CREATE TABLE ROLE (
--    id BIGINT AUTO_INCREMENT PRIMARY KEY,
--    name VARCHAR(255) UNIQUE not null
--);
--
--INSERT INTO ROLE
--VALUES  (DEFAULT, 'ROLE_USER'),
--        (DEFAULT, 'ROLE_MANAGER'),
--        (DEFAULT, 'ROLE_ADMIN');

--CREATE TABLE USER_ROLES (
--    id BIGINT AUTO_INCREMENT PRIMARY KEY,
--    user_id BIGINT not null,
--    role_id BIGINT not null
--);

--CREATE TABLE OAUTH2_USER (
--    id BIGINT AUTO_INCREMENT PRIMARY KEY,
--    user_id BIGINT not null,
--    oauth2_name VARCHAR(255) UNIQUE not null,
--    provider VARCHAR(255) not null
--);

--CREATE TABLE BOARD (
--    id BIGINT AUTO_INCREMENT PRIMARY KEY,
--    title VARCHAR(255) NOT NULL,
--    content LONGTEXT NOT NULL,
--    user_id BIGINT NOT NULL,
--    view_count INT NOT NULL DEFAULT 0
--);

--ALTER TABLE BOARD ADD COLUMN view_count INT NOT NULL DEFAULT 0;

--CREATE TABLE board_like(
--    id BIGINT AUTO_INCREMENT PRIMARY KEY,
--    board_id BIGINT not null,
--    user_id BIGINT not null
--);


--CREATE TABLE COMMENT (
--    id BIGINT AUTO_INCREMENT PRIMARY KEY,
--    board_id BIGINT NOT NULL,
--    parent_id BIGINT NULL,
--    content TEXT NOT NULL,
--    writer_id BIGINT NOT NULL,
--    create_date DATETIME NOT NULL
--);


--CREATE TRIGGER before_delete_comment    -- 트리거 이름
--BEFORE DELETE ON content    -- content 테이블에서 DELETE가 발생할 때
--FOR EACH ROW    -- 한 행씩 처리
--BEGIN   -- 트리거 시작
--    DELETE FROM comment WHERE parent_id = OLD.id;   -- comment 테이블에서 parent_id가 old.id인 행 삭제
--END;    -- 트리거 종료







