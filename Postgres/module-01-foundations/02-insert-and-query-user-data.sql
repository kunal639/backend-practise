/*
Problem 2 — Insert and Query User Data

Objective:
Populate your users table with data and retrieve it using basic queries.

Scenario:
Your application has started receiving user registrations. You need to store them
and verify that the data can be retrieved correctly.

Requirements:
- Using the users table from Problem 1.
- Insert at least 5 users.
- Ensure each user has a different username and email.
- Do not manually provide a value for created_at.
- Query all users.

Constraints:
- Do not modify the table structure.
- Do not manually assign id values.
- Do not manually assign created_at.
- Use SQL statements only.
*/

INSERT INTO users(username, email) VALUES
('xyz', 'xyzr@gmail.com'),
('abc', 'abcr@gmail.com'),
('uxc', 'uxcr@gmail.com'),
('asd', 'asdr@gmail.com'),
('bnm', 'bnmr@gmail.com');

SELECT username, email FROM users;

SELECT * FROM users
ORDER BY id ASC;

SELECT * FROM users
ORDER BY username ASC;