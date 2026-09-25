-- Mark a book as borrowed
UPDATE books
SET available = FALSE
WHERE id = 1;

-- Add a new genre to a book
UPDATE books
SET genres = array_append(genres, 'Classic')
WHERE id = 1;

-- Add a borrowed book to a patron
UPDATE patrons
SET borrowed_books = array_append(borrowed_books, 3)
WHERE id = 1;