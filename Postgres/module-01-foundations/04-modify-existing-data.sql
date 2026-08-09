/*
Problem 4 — Modify Existing Data

Objective:
Learn how to modify existing rows using UPDATE and remove rows using DELETE.

Requirements:
- Using the users table from Problem 1.
- Write queries that accomplish the given task

Constraints:
- Do not modify the table.
- Do not insert additional users.
- Use SQL statements only.
*/


/* Change abc's mail to abc_updated@gmail.com */
UPDATE users
SET email = 'abc_updated@gmail.com'
WHERE username = 'abc';

/* Change xyz's username to xyz_updated */
UPDATE users
SET username = 'xyz_updated'
WHERE username = 'xyz';

/* Change the email of the user whose id is 3 */
UPDATE users
SET email = 'updated_user@gmail.com'
WHERE id = 3;

/* Delete the user whose username is bnm */
DELETE FROM users
WHERE username = 'bnm';

/* Retrieve all users after the modifications */
SELECT * FROM users
order by id asc;