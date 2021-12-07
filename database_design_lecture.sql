USE tables_lecture_db;

CREATE TABLE authors (
                         id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                         first_name VARCHAR(50),
                         last_name  VARCHAR(100) NOT NULL,
                         PRIMARY KEY (id)
);

INSERT INTO authors(first_name, last_name) VALUES
                                               ('Douglas', 'Adams'),
                                               ('Mark', 'Twain'),
                                               ('Kurt', 'Vonnegut');

SELECT * FROM authors;

CREATE TABLE quotes (
                        id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                        content TEXT NOT NULL,
                        author_id INT UNSIGNED NOT NULL,
                        PRIMARY KEY (id),
                        FOREIGN KEY (author_id) REFERENCES authors (id)
);

SELECT * FROM quotes;

INSERT INTO quotes (author_id, content)
VALUES ((select id from authors where first_name = 'Douglas' and last_name = 'Adams'),
        'I love deadlines. I love the whooshing noise they make as they go by.');
INSERT INTO quotes (author_id, content)
VALUES ((select id from authors where first_name = 'Douglas' and last_name = 'Adams'),
        'Time is an illusion. Lunchtime doubly so.');
INSERT INTO quotes (author_id, content)
values ((select id from authors where first_name = 'Mark' and last_name = 'Twain'),
        'Clothes make the man. Naked people have little or no influence on society.');
INSERT INTO quotes (author_id, content)
values ((select id from authors where first_name = 'Kurt' and last_name = 'Vonnegut'),
        'The universe is a big place, perhaps the biggest.');
INSERT INTO quotes (author_id, content)
VALUES ((select id from authors where first_name = 'Douglas' and last_name = 'Adams'), 'Don''t Panic.');

SELECT * FROM quotes;

CREATE TABLE topics (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(255),
    PRIMARY KEY (id)
);

INSERT INTO topics(name) VALUES
     ('Space and Time'),
     ('Humor'),
     ('Office Life'),
     ('Hitchiker''s Guide to the Galaxy');

DROP TABLE