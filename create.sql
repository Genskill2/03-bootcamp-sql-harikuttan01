DROP TABLE IF EXISTS publisher;
DROP TABLE IF EXISTS books;
DROP TABLE IF EXISTS subjects;
DROP TABLE IF EXISTS book_subjects;

CREATE TABLE publisher(
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    name text,
    country text
);

CREATE TABLE books(
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    title text,
    publisher INTEGER NOT NULL,
    FOREIGN KEY (publisher) REFERENCES publisher(id)
);

-- INSERT INTO publisher(name,country) VALUES ('HELLO','INDIA');

CREATE TABLE subjects(
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    name text
);

CREATE TABLE book_subjects(
    book INTEGER NOT NULL,
    subject INTEGER NOT NULL,
    FOREIGN KEY (book) REFERENCES books(id),
    FOREIGN KEY (subject) REFERENCES subjects (id)
);