use `movie_db`;


INSERT into publications (name, avatar) VALUES('NombreRevista', 'imagenrevista');



INSERT into reviewers (name, publication, avatar) VALUES ('NombreReviewer', 'NombreRevista', 'imagenReviewer');



INSERT into movies (title, `release`, score, reviewer) VALUES ('NombrePelicula', 2010, 5,'NombreReviewer');
