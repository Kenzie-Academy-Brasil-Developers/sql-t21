INSERT INTO products ("name", "description", "price", "createdAt") 
VALUES ('Computador', 'Computador bonito', 300000, '06-05-2024');

INSERT INTO products ("name", "description", "price", "createdAt") 
VALUES ('Notebook', 'Notebook bonito', 300000, '06-05-2024') RETURNING *;

/*
    "name" VARCHAR(80) NOT NULL,
    "description" TEXT,
    "price" INTEGER NOT NULL,
    "createdAt" TIMESTAMP,
    "updatedAt" TIMESTAMP
*/