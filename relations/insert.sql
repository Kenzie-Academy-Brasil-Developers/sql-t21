INSERT INTO recipes ("title", "description")
VALUES ('Sushi do Alex', 'Seilah'), 
('Pizza do Alex', 'Faça a pizza'), 
('Nachos do Alex', 'Faça o nachos') 
RETURNING *;

INSERT INTO categories ("name")
VALUES ('Sushi'), ('Pizza'), ('Do Alex')
RETURNING *;

INSERT INTO recipes_categories ("recipeId", "categoryId")
VALUES (1, 1), (1, 3), (2, 2), (2, 3), (3, 3);
/*
CREATE TABLE recipes(
    "id" SERIAL PRIMARY KEY,
    "title" VARCHAR(100) NOT NULL,
    "description" VARCHAR(200) NOT NULL,
    "createdAt" TIMESTAMP DEFAULT NOW(), 
    "updatedAt" TIMESTAMP
);

CREATE TABLE categories(
    "id" SERIAL PRIMARY KEY,
    "name" VARCHAR(100) NOT NULL,
    "createdAt" TIMESTAMP DEFAULT NOW(), 
    "updatedAt" TIMESTAMP
);
*/