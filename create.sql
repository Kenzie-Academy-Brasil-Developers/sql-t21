
/* Inserir um recurso por vez */
INSERT INTO products ("name", "description", "price", "createdAt") 
VALUES ('Computador', 'Computador bonito', 300000, '06-05-2024');

INSERT INTO products ("name", "description", "price", "createdAt") 
VALUES ('Notebook', 'Notebook bonito', 300000, '06-05-2024') RETURNING *;

/* Inserir múltiplos recursos */
INSERT INTO products ("name", "description", "price", "createdAt")
VALUES ('Mouse', 'Mouse bacana', 20000, '08-05-2024'), 
('Teclado', 'Teclado com luzes', 30000, '08-05-2024'), 
('Headphone', 'Headphone muito bacana', 25000, '08-05-2024') RETURNING *;

/*
    "name" VARCHAR(80) NOT NULL,
    "description" TEXT,
    "price" INTEGER NOT NULL,
    "createdAt" TIMESTAMP,
    "updatedAt" TIMESTAMP
*/

/*
CREATE TABLE categories (
    "id" UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    "name" VARCHAR(50) NOT NULL,
    "createdAt" TIMESTAMP DEFAULT NOW(),
    "updatedAt" TIMESTAMP
);
*/

INSERT INTO categories ("name") 
VALUES ('Tecnologia'), ('Games') RETURNING *;