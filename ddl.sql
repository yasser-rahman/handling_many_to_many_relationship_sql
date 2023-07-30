/* Business rules 
- username and email addresse of a user should be unique.
- Book's isbn should be unique.
- Usernames need to have a minimum of 5 characters.
- A book's name cannot be empty.
- A book's name must start with a capital letter.
- A user's book preferences have to be distinct
*/

-- Craete a Table for users
DROP TABLE IF EXISTS users;
CREATE TABLE users(
	id SERIAL PRIMARY KEY,
	username VARCHAR  UNIQUE CHECK (LENGTH(username) >= 5),
	email VARCHAR UNIQUE
);

-- Create a table for books
DROP TABLE IF EXISTS books;
CREATE TABLE books(
	id SERIAL PRIMARY KEY, 
	isbn VARCHAR UNIQUE,
	title VARCHAR CHECK (LENGTH(title) > 0 ),
	      CONSTRAINT "books title must start with cap" CHECK
		        (LEFT(title, 1) = UPPER(LEFT(title, 1)))
);

-- Create an association table
CREATE TABLE user_book_preferenes(
	user_id INTEGER,
	book_id INTEGER,
	preference INTEGER,
	PRIMARY KEY(user_id, book_id),
	FOREIGN KEY(user_id) REFERENCES users(id),
	FOREIGN KEY(book_id) REFERENCES books(id),
	UNIQUE(user_id, preference)
);
