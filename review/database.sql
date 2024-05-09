CREATE DATABASE t21_review;

\l 

\c t21_review 

CREATE TABLE books (
  "id" SERIAL PRIMARY KEY,
  "name" VARCHAR(100) NOT NULL,
  "pages" INTEGER NOT NULL,
  "bio" TEXT,
  "createdAt" TIMESTAMP DEFAULT NOW(),
  "updatedAt" TIMESTAMP
);

\dt