SELECT * FROM products;
SELECT "name", "description" FROM products;
SELECT * FROM products WHERE "id" = 1;
SELECT * FROM products WHERE "price" < 50000;

SELECT * FROM products WHERE "name" = 'Mouse';

/* LIKE é case sensitive - maiúsculo e minúsculo importa */
SELECT * FROM products WHERE "name" LIKE 'Mou%'; /* Iniciar com o termo */
SELECT * FROM products WHERE "name" LIKE 'mou%';
SELECT * FROM products WHERE "name" LIKE '%se'; /* Terminar com o termo */
SELECT * FROM products WHERE "name" LIKE '%ouse%'; /* Incluir o termo */
SELECT * FROM products WHERE "description" LIKE '%bacana%';

/* ILIKE NÃO é case sensitive */
SELECT * FROM products WHERE "name" ILIKE 'MOU%';