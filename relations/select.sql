INSERT INTO users ("name", "email", "password")
VALUES ('Alex', 'alex@email.com', '@12Patinhos');

INSERT INTO addresses ("street", "number", "complement", "city", "userId")
VALUES ('Rua Qualquer Coisa', 123, 'Apto 323', 'Curitiba', 1) RETURNING *;

/*
CREATE TABLE addresses (
    "id" SERIAL PRIMARY KEY,
    "street" VARCHAR(100) NOT NULL,
    "number" INTEGER NOT NULL,
    "complement" VARCHAR(20),
    "city" VARCHAR(50) NOT NULL,
    "userId" INTEGER UNIQUE NOT NULL,
    FOREIGN KEY ("userId") REFERENCES users("id") ON DELETE CASCADE
);
*/

/* Join */

/* Usuários junto de seus respectivos endereços */

SELECT 
users."id" AS "userId",
users."name",
users."email",
addresses."id" AS "addressId",
addresses."street",
addresses."number",
addresses."complement",
addresses."city"
FROM users
JOIN addresses 
ON users."id" = addresses."userId";

/*
CREATE TABLE orders(
    "id" SERIAL PRIMARY KEY,
    "status" VARCHAR(20) NOT NULL,
    "createdAt" TIMESTAMP DEFAULT NOW(),
    "updatedAt" TIMESTAMP,
    "userId" INTEGER,
    FOREIGN KEY ("userId") REFERENCES users("id") ON DELETE SET NULL
);
*/

INSERT INTO orders ("status", "userId")
VALUES ('Em preparação', 1), ('Aguardando', 1) RETURNING *;

SELECT 
users."id" AS "userId",
users."name",
users."email",
orders."id" AS "orderId",
orders."status",
orders."createdAt"
FROM users 
JOIN orders ON users."id" = orders."userId";