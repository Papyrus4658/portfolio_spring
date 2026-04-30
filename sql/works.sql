-- Active: 1777536934072@@127.0.0.1@3306@portfolio
CREATE TABLE works (
    id BIGINT AUTO_INCREMENT PRIMARY KEY, -- ID
    title VARCHAR(100) NOT NULL, -- 題名
    thumbnail VARCHAR(255), -- サムネイル
    summary TEXT, -- 概要
    repo_url VARCHAR(255), -- リポジトリURL
    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP, -- 登録日時
    updated_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP, -- 更新日時
    deleted TINYINT(1) NOT NULL DEFAULT 0 -- 削除フラグ
);