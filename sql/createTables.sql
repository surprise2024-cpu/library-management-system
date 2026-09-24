-- Author table structure
CREATE TABLE authors (
    id INT PRIMARY KEY,
    name VARCHAR(150) NOT NULL,
    nationality VARCHAR(100),
    birth_year INT,
    death_year INT
);

-- books table structure
CREATE TABLE books (
    id INT PRIMARY KEY,
    title VARCHAR(150) NOT NULL,
    author_id INT NOT NULL,
    genres TEXT[],
    published_year INT,
    available BOOLEAN DEFAULT TRUE,

    CONSTRAINT fk_author
        FOREIGN KEY (author_id)
        REFERENCES authors(id)
        ON DELETE RESTRICT 
);

-- patrons table structure
CREATE TABLE patrons (
    id INT PRIMARY KEY,
    name VARCHAR(150) NOT NULL,
    email VARCHAR(200) UNIQUE NOT NULL,
    borrowed_books INT[] DEFAULT '{}'
);
