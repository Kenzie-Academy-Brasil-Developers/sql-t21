/* Criar um banco de dados */
CREATE DATABASE t21_sql;
/* Selecionar banco de dados */
\c nome_do_banco 
\c t21_sql

/*
 texto - string 
número - number
boolean - boolean
*/

/* Criar uma tabela */
CREATE TABLE products (
    "id" SERIAL PRIMARY KEY,
    "name" VARCHAR(80) NOT NULL,
    "description" TEXT,
    "price" INTEGER NOT NULL,
    "createdAt" TIMESTAMP,
    "updatedAt" TIMESTAMP
);

/* Listar todas as tabelas de um banco */
\dt

CREATE TABLE categories (
    "id" SERIAL PRIMARY KEY,
    "name" VARCHAR(50) NOT NULL,
    "createdAt" TIMESTAMP,
    "updatedAt" TIMESTAMP
);
