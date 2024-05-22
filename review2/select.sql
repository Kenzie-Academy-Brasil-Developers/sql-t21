SELECT * FROM todos;
SELECT "title", "description" FROM todos;
SELECT * FROM todos WHERE id = 1;
SELECT * FROM todos WHERE title = 'Revisando SQL';
SELECT * FROM todos WHERE title LIKE 'Revisando%';
SELECT * FROM todos WHERE title LIKE '%SQL%';
SELECT * FROM todos WHERE title LIKE '%sql%';
SELECT * FROM todos WHERE title ILIKE '%sql%';

SELECT * FROM todos
JOIN links ON  todos."id" = links."todoId";

SELECT 
todos."id" AS "todoId", 
todos."title" AS "todoTitle",
todos."description",
links."id" AS "linkId",
links."title" as "linkTitle",
links."url"
FROM todos
JOIN links ON  todos."id" = links."todoId";

SELECT
todos."id" AS "todoId",
todos."title" AS "todoTitle",
todos."description" AS "todoDescription",
categories."id" AS "categoryId",
categories."name" AS "categoryName"
FROM todos
JOIN todos_categories ON todos."id" = todos_categories."todoId"
JOIN categories ON categories."id" = todos_categories."categoryId";