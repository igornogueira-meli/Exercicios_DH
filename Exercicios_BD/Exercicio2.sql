/*➔ Mostrar todos os registros da tabela de filmes.*/
SELECT * FROM movies;

/*➔ Mostrar o nome, sobrenome e classificação de todos os atores.*/
SELECT first_name, last_name, rating FROM actors;

/*➔ Mostrar o título de todas as séries e use alias para que tanto o nome da tabela
quanto o campo estejam em Português.*/
SELECT s.title as titulo FROM series s;

/*➔ Mostrar o nome e sobrenome dos atores cuja classificação é superior a 7,5.*/
SELECT first_name, last_name, rating FROM actors WHERE rating >=7.5;

/*➔ Mostrar o título dos filmes, a classificação e os prêmios dos filmes com classificação
superior a 7,5 e com mais de dois prêmios.*/
SELECT title, rating, awards FROM movies WHERE rating >=7.5 AND awards > 2;

/*➔ Mostrar o título dos filmes e a classificação ordenados por classificação em ordem
crescente.*/
SELECT title, rating FROM movies ORDER BY rating;

/*➔ Mostrar os títulos dos três primeiros filmes no banco de dados.*/
SELECT title, rating FROM movies LIMIT 3;

/*➔ Mostrar os 5 melhores filmes com a classificação mais alta.*/
SELECT title, rating, awards FROM movies ORDER BY rating DESC LIMIT 5;

/*➔ Listar os 10 primeiros atores.*/
SELECT first_name, last_name, rating FROM actors LIMIT 10;

/*➔ Mostrar o título e a classificação de todos os filmes cujo título é Toy Story.*/
SELECT title, rating, awards FROM movies WHERE title LIKE "Toy Story%";

/*➔ Mostrar todos os atores cujos nomes começam com Sam.*/
SELECT first_name, last_name, rating FROM actors WHERE first_name LIKE "Sam";

/*➔ Mostrar o título dos filmes que saíram entre 2004 e 2008.*/
SELECT title, release_date FROM movies WHERE release_date BETWEEN '20040101' AND '20081231';

/*➔ Mostrar o título dos filmes com classificação superior a 3, com mais de 1 prêmio e
com data de lançamento entre 1988 e 2009. Ordenar os resultados por
classificação.*/
SELECT title, awards, rating, release_date FROM movies WHERE rating > 3 AND awards > 1 AND release_date BETWEEN '20040101' AND '20081231' ORDER BY rating DESC;


