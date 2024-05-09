UPDATE books SET "pages" = 383 WHERE "id" = 1 RETURNING *;
UPDATE books SET 
"name" = 'Harry Potter - E a Pedra Filosofal', 
"pages" = 363 
WHERE "id" = 1 RETURNING *;

UPDATE books SET ("pages", "bio") = 
ROW ('1640', 'A história de um hoobit e um anel e um mundo de fantasia.')
WHERE "id" = 2 RETURNING *;
