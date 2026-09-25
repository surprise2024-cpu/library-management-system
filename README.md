# Libray Management System

A PostgreSQL-based Library Management System for managing books, authors, and patrons.

---

## Features

- Add books, authors, and patrons
- View books, authors, and patrons
- Search books by title or author
- Update book availability
- Update patron borrowed books
- Delete books and authors
- Run advanced SQL queries

## Technologies

- PostgreSQL'
- pgAdmin 4
- SQL
- VS Code

## Database Tables

### Authors

Stores author information:

- id 
- name
- nationality
- birth_year
- death_year

### Books

Stores book information:

- id
- title
- author_id
- genres
- published_year
- available

`author_id` is a foreign key that references `author.id`.

### Patrons

Stores patron information:

- id
- name
- email
- borrowed_books

## Project Structure

```text
sql/
    assets/
    advancedQueries.sql
    createDatabase.sql
    createTables.sql
    deleteQueries.sql
    insertData.sql
    readQueries.sql
    updateQueries.sql
.gitignore
README.md
```
---

## Running the Project

Download pgAdmin 4

https://www.pgadmin.org/download/

Download PostgreSQL

https://www.postgresql.org/download/

Clone repository:

```bash
git clone https://github.com/surprise2024-cpu/library-management-system.git
```

### pgAdmin

1. Open pgAdmin.
2. Connect to your PostgreSQL.
3. Run `createDatabase.sql`.
4. Right click `Databases` and refresh.
4. Connect to `LibraryDB`.
5. Run `createTables.sql`.
6. Run `insertData.sql`.
7. Run the remaining query files as needed.

## Screenshots

### Database Created

![Database creation](/sql/assets/database-creation.png)

### Table Created

![Table creation](/sql/assets/table-creation.png)

### Sample Data

#### Authors:

![author samples](/sql/assets/author-sample-data.png)

#### Books:

![book samples](/sql/assets/books-sample-data.png)

#### Patrons:

![patrons](/sql/assets/patrons-sample-data.png)

### Read Query

#### Getting all books:

![all books](/sql/assets/all-books.png)

#### Getting book by title:

![books by title](/sql/assets/get-book-by-title.png)

#### Get all books by specific author:

![books by author](/sql/assets/get-books-by-author.png)

#### Get all available books:

![avalilable books](/sql/assets/get-all-available-books.png)

### Update Query

#### Mark a book as borrowed:

![updating availability](/sql/assets/update-book-availability.png)

#### Add a new genre to a book:

`Before:`

![adding new genre](/sql/assets/adding-book-genre%20(2).png)

`After:`

![adding new genre](/sql/assets/after-adding-genre.png)

#### Add a borrowed book to a patron:

`Before:` 

![borrowing a book](/sql/assets/borrowing-book.png)

`After:`

![after borrowing a book](/sql/assets/borrowing-book-after.png)

### Delete Query

#### Deleting an author before deleting their book(s):

`Before:`

![Before deleting](/sql/assets/all-authors.png)

`Processing:`

![During deletion](/sql/assets/author-with-book.png)

`After:`

![After deleting](/sql/assets/after-author-deletion.png)

#### Deleting a book:

`Before:`

![Before book deletion](/sql/assets/all-books.png)

`Processing:`

![Before book deletion](/sql/assets/book-deletion.png)

`After:`

![deleting a book](/sql/assets/after-deletion.png)

### Advanced Queries

#### Find books published after 1950:

![books published after 1950](/sql/assets/find-books-by-published-year.png)

#### Find all American authors:

![all American authors](/sql/assets/find-authors-by-nationality.png)

#### Set all books as available:

![all books available](/sql/assets/update-book-availability.png)

#### Find all available books after 1950:

![all available books after 1950](/sql/assets/find-available-books-by-year.png)

#### Find authors whose names contain "George":

![authors whose names contain "George"](/sql/assets/find-author-whose-name-contains-something.png)

#### Increment published year 1869 by 1:

`Before:`

![Before increment](/sql/assets/all-books.png)

`Processing:`

![During increment](/sql/assets/increment-processing.png)


`After:`

![After increment](/sql/assets/after-increment.png)

## Author

`Suprise Nkosi`

