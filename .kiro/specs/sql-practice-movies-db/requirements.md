# Requirements Document

## Introduction

This feature defines a SQL practice repository for GitHub (Ayushagrawal2005/SQL_PRACTISE) containing a structured collection of DBMS SQL queries. The initial focus is a movies database that demonstrates foundational SELECT query patterns, progressing from simple column retrieval to full table scans. The repository serves as a learning and reference resource for SQL beginners and students.

## Glossary

- **Repository**: The GitHub repository `Ayushagrawal2005/SQL_PRACTISE` containing all SQL practice files
- **Movies_DB**: The relational database containing a `movies` table used for SQL practice queries
- **Movies_Table**: A table within Movies_DB with columns including `title`, `director`, and `year`
- **Query_File**: A `.sql` file containing one or more SQL statements with explanatory comments
- **README**: A markdown file describing the repository structure, purpose, and usage instructions

## Requirements

### Requirement 1: Repository Structure

**User Story:** As a student, I want a well-organized SQL practice repository, so that I can easily navigate and find relevant query examples.

#### Acceptance Criteria

1. THE Repository SHALL contain a `README.md` file at the root level describing the purpose and structure of the repository
2. THE Repository SHALL organize SQL files into topic-based folders (e.g., `movies-db/`)
3. THE Repository SHALL include a dedicated folder for the movies database queries
4. WHEN a new database topic is added, THE Repository SHALL contain a corresponding subfolder with its own SQL files

---

### Requirement 2: Movies Database Schema

**User Story:** As a student, I want a clearly defined movies database schema, so that I can understand the table structure before running queries.

#### Acceptance Criteria

1. THE Movies_DB SHALL contain a `movies` table with at minimum the columns: `title` (text), `director` (text), and `year` (integer)
2. THE Query_File SHALL include a schema creation script (`schema.sql`) that defines the `movies` table structure
3. THE Query_File SHALL include a seed data script (`seed.sql`) that inserts sample rows into the `movies` table
4. WHEN the schema script is executed, THE Movies_DB SHALL create the `movies` table without errors
5. WHEN the seed script is executed after the schema script, THE Movies_DB SHALL contain at least 5 sample movie records

---

### Requirement 3: Basic SELECT Queries

**User Story:** As a student, I want a set of foundational SELECT query examples, so that I can learn how to retrieve specific columns and all columns from a table.

#### Acceptance Criteria

1. THE Query_File SHALL contain a query that retrieves only the `title` column from the `movies` table
2. THE Query_File SHALL contain a query that retrieves only the `director` column from the `movies` table
3. THE Query_File SHALL contain a query that retrieves both the `title` and `director` columns from the `movies` table
4. THE Query_File SHALL contain a query that retrieves both the `title` and `year` columns from the `movies` table
5. THE Query_File SHALL contain a query that retrieves all columns from the `movies` table using `SELECT *`
6. WHEN any SELECT query is executed against a populated Movies_Table, THE Movies_DB SHALL return at least one row of results

---

### Requirement 4: Query File Documentation

**User Story:** As a student, I want each SQL file to include inline comments, so that I can understand what each query does without prior SQL knowledge.

#### Acceptance Criteria

1. THE Query_File SHALL include a comment block at the top of each file describing the file's purpose
2. THE Query_File SHALL include an inline comment above each SQL statement explaining what the query retrieves
3. WHEN a query uses `SELECT *`, THE Query_File SHALL include a comment noting that it retrieves all columns
4. THE Query_File SHALL use consistent comment style (`--` single-line comments) throughout all SQL files

---

### Requirement 5: Query Correctness and Executability

**User Story:** As a student, I want all provided SQL queries to be syntactically correct and executable, so that I can run them without encountering errors.

#### Acceptance Criteria

1. THE Query_File SHALL contain only syntactically valid SQL statements compatible with standard SQL (SQLite or MySQL)
2. WHEN all queries in the movies query file are executed sequentially against the Movies_Table, THE Movies_DB SHALL return results without syntax errors
3. IF a query is intended for a specific SQL dialect, THEN THE Query_File SHALL include a comment indicating the target dialect
4. THE Query_File SHALL terminate each SQL statement with a semicolon
