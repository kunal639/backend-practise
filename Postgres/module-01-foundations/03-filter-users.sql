/*
Problem 3 — Filter Users

Objective:
Learn how to retrieve only rows that satisfy a condition.

Requirements:
- Using the users table from Problem 1.
- Write queries that accomplish the given task

Constraints:
- Do not modify the table.
- Do not insert additional users.
- Use SQL statements only.
*/


/* Retrieve all users whose username is "abc" */
SELECT * FROM users
WHERE username = 'abc';

/* Retrieve all users whose username is either "xyz" or "asd" */
SELECT * FROM users
WHERE username = 'xyz' or username = 'asd';

/* Retrieve all users whose email contains "gmail.com" */
SELECT * FROM users
WHERE email LIKE '%gmail.com';

/* Retrieve all users whose id is >2 */
SELECT * FROM users
WHERE id > 2;

/* Retrieve all users whose id is between 2 and 4 (inclusive) */
SELECT * FROM users
WHERE id >= 2 AND id<=4;

/* Retrieve all users whose username starts with a */
SELECT * FROM users
WHERE username LIKE 'a%';

/* Retrieve all users whose username does not equal abc */
SELECT * FROM users
WHERE username != 'abc';