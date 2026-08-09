/*
Problem 5 — Constraints

Objective:
Learn how PostgreSQL constraints enforce rules on data.

Scenario:
You are turning your simple users table into something closer to a real application's user table.

Tasks:
- Modify your existing users table so that:
- username cannot contain duplicate values.
- email cannot contain duplicate values.
- Verify that the constraints exist.
- Attempt to insert a new user with an existing username.
- Attempt to insert a new user with an existing email.
- Observe what PostgreSQL does.

Constraints:
- Don't delete your existing users.
- Don't modify the existing id values.
- Don't manually inspect the database's internal system tables yet.
- Don't use application-level validation.
- The uniqueness rules must be enforced by PostgreSQL itself.

*/


ALTER TABLE users
ADD CONSTRAINT username_unique UNIQUE(username),
ADD CONSTRAINT email_unique UNIQUE(email);

/* Verified constraint exists usig \d users psql command. username and email column now contains a UNIQUE constraint. */

-- Attempt Duplicate username test
INSERT INTO users(username,email) VALUES ('uxc', 'dude@gmail.com'); -- username -> duplicate. email -> new

-- Attempt Duplicate email test
INSERT INTO users(username,email) VALUES ('dude', 'uxcr@gmail.com');; -- username -> new. email -> duplicate
-- PostgreSQL enforces the UNIQUE constraint and rejects the operation if it would create a duplicate value, returning an error.