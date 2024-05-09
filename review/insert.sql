INSERT INTO books ("name", "pages", "bio")
VALUES ('Harry Potter', 363, 'A historia de um bruxinho.')
RETURNING *;

INSERT INTO books ("name", "pages", "bio")
VALUES 
('Senhor dos Anéis', 3363, 'A historia de um hoobitzinho e seu anel.'), 
('Crepúsculo', 634, 'A história de uma menina, um vampiro e um lobisomem.'), 
('Jogos Vorazes', 426, 'A história jovens que foram obrigados a se matar no reality show.')
RETURNING *;