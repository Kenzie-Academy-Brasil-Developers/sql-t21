INSERT INTO todos ("title", "description")
VALUES 
('Revisando SQL', 'Estou revisando o SQL com o Alex'), 
('Estou ficando uma fera do SQL', 'Ta ficando cada vez mais divertido aprender essa parada.')
RETURNING *;

INSERT INTO links ("title", "url", "todoId") 
VALUES
('PostgreSQL Docs', 'https://www.postgresql.org/', 1)
RETURNING *;

INSERT INTO categories ("name")
VALUES
('Estudo'), ('Programação'), ('Tecnologia')
RETURNING *;

INSERT INTO todos_categories ("todoId", "categoryId")
VALUES
(1, 1), (1, 2), (2, 1), (2, 3)
RETURNING *;

INSERT INTO todos_categories ("todoId", "categoryId")
VALUES
(3, 4)
RETURNING *;