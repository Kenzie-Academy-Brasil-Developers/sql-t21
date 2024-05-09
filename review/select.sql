SELECT * FROM books;
SELECT * FROM books WHERE "id" = 1;
SELECT * FROM books WHERE "pages" < 400;
SELECT * FROM books WHERE "pages" > 400;

SELECT * FROM books WHERE "name" = 'Harry Potter - A Pedra Filosofal';
/* Se começa com, termina com, inclui */ 
LIKE 
ILIKE

SELECT * FROM books WHERE "name" LIKE '%A historia%' OR "bio" LIKE '%A historia%';
SELECT * FROM books WHERE "name" LIKE '%Harry%' AND "bio" LIKE '%A historia%';
SELECT * FROM books WHERE "bio" ILIKE '%a historia%';