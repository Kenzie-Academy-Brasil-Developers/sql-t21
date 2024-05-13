CREATE DATABASE t21_delivery_db;

\c t21_delivery_db

CREATE TABLE users (
    "id" SERIAL PRIMARY KEY,
    "name" VARCHAR(100) NOT NULL,
    "email" VARCHAR(100) NOT NULL,
    "password" VARCHAR(20) NOT NULL
);

/* 1p1 - Um usuário pode cadastrar um ÚNICO endereço */
CREATE TABLE addresses (
    "id" SERIAL PRIMARY KEY,
    "street" VARCHAR(100) NOT NULL,
    "number" INTEGER NOT NULL,
    "complement" VARCHAR(20),
    "city" VARCHAR(50) NOT NULL,
    "userId" INTEGER UNIQUE NOT NULL,
    FOREIGN KEY ("userId") REFERENCES users("id") ON DELETE CASCADE
);

/* 1pN - Um usuário pode cadastrar vários pedidos */

CREATE TABLE orders(
    "id" SERIAL PRIMARY KEY,
    "status" VARCHAR(20) NOT NULL,
    "createdAt" TIMESTAMP DEFAULT NOW(),
    "updatedAt" TIMESTAMP,
    "userId" INTEGER,
    FOREIGN KEY ("userId") REFERENCES users("id") ON DELETE SET NULL
);

/* Altera configurações de tabelas */

ALTER TABLE users
ALTER COLUMN "password" SET NOT NULL;
