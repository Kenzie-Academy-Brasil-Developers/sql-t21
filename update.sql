UPDATE products SET price = 400000 WHERE "id" = 1;

UPDATE products SET price = 400000 WHERE "id" = 1 RETURNING *;

UPDATE products SET price = 999999; 
/* Se não houver WHERE, todos os recursos da tabela serão atualizados */

UPDATE products 
SET "price" = 350000, "description" = 'Computador nota mil!' 
WHERE "id" = 1 RETURNING *;

UPDATE products
SET ("price", "description") = ROW (420000, 'Notebook futurístico') WHERE "id" = 2
RETURNING *;