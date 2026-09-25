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
4. Connect to `LibraryDB`.
5. Run `createTables.sql`.
6. Run `insertData.sql`.
7. Run the remaining query files as needed.

