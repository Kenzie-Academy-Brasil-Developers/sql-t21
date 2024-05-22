UPDATE todos SET "title" = 'Virando uma entidade SQL' WHERE id = 1 RETURNING *;

UPDATE todos 
SET ("title", "description") = 
ROW ('Sou o badass do SQL', 'Estou ficando uma verdadeira maquina absurda deste negócio')
WHERE id = 2
RETURNING *;