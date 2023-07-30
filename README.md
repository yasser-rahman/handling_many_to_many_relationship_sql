# handling_many_to_many_relationship_sql
This is an example of handling Many-to-Mnay relationships in SQL. 
we have users table that contains: id, username, and email. 
we also have a books table that contains the following: id, ISBN, and title.
The association table should perform the required mapping between these two tables via two foreign key constraints, namely, user_id and book_id.
we also need to enforece these business rules in the design:

- username and email address of a user should be unique.
- The book's ISBN should be unique.
- Usernames need to have a minimum of 5 characters.
- A book's name cannot be empty.
- A book's name must start with a capital letter.
- A user's book preferences have to be distinct
