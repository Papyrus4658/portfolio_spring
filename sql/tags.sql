-- Active: 1777536934072@@127.0.0.1@3306@portfolio
CREATE TABLE tags (
    id BIGINT AUTO_INCREMENT PRIMARY KEY, -- ID
    name VARCHAR(50) NOT NULL UNIQUE -- タグ名、"Java", "Python" など
);

CREATE TABLE work_tags (
    work_id BIGINT NOT NULL, -- 作品ID
    tag_id BIGINT NOT NULL, -- タグID
    PRIMARY KEY (work_id, tag_id),
    FOREIGN KEY (work_id) REFERENCES works (id),
    FOREIGN KEY (tag_id) REFERENCES tags (id)
);