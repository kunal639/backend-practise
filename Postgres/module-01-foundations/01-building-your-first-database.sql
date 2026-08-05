/*
Problem 1 — Build Your First Database

Objective:
Create a PostgreSQL database and a table for storing users.

Scenario:
You're starting a new backend project. The first task is to set up the database.

Requirements:
- Create a database named: backend_practice
- Create a table named: users
- Columns:
  - id
  - username
  - email
  - created_at

Constraints:
- id must uniquely identify each user.
- username must not be NULL.
- email must not be NULL.
- created_at should be populated automatically.
*/

CREATE DATABASE backend_practice;

-- Connect to backend_practice

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(20) NOT NULL,
    email VARCHAR(40) NOT NULL,
    created_at TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP
);
