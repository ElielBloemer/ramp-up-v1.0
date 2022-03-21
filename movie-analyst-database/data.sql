use `movie_db`;

INSERT INTO publications (name, avatar) VALUES ('The Daily Reviewer', 'glyphicon-eye-open');
INSERT INTO publications (name, avatar) VALUES ('International Movie Critic', 'glyphicon-fire');
INSERT INTO publications (name, avatar) VALUES ('MyNextReview', 'glyphicon-record');
INSERT INTO publications (name, avatar) VALUES ('Movies Games', 'glyphicon-heart-empty');    
INSERT INTO publications (name, avatar) VALUES ('TheOne', 'glyphicon-globe');
INSERT INTO publications (name, avatar) VALUES ('ComicBookHero.com', 'glyphicon-flash');

INSERT INTO reviewers (name, publication, avatar) VALUES ('Robert Smith', 'The Daily Reviewer', 'https://s3.amazonaws.com/uifaces/faces/twitter/angelcolberg/128.jpg');
INSERT INTO reviewers (name, publication, avatar) VALUES ('Chris Harris', 'International Movie Critic', 'https://s3.amazonaws.com/uifaces/faces/twitter/bungiwan/128.jpg'); 
INSERT INTO reviewers (name, publication, avatar) VALUES ('Andrew West', 'MyNextReview', 'https://s3.amazonaws.com/uifaces/faces/twitter/d00maz/128.jpg'); 
INSERT INTO reviewers (name, publication, avatar) VALUES ('Mindy Lee', 'Movies Games', 'https://s3.amazonaws.com/uifaces/faces/twitter/laurengray/128.jpg');
INSERT INTO reviewers (name, publication, avatar) VALUES ('Martin Thomas', 'TheOne', 'https://s3.amazonaws.com/uifaces/faces/twitter/karsh/128.jpg');
INSERT INTO reviewers (name, publication, avatar) VALUES ('Anthony Miller', 'ComicBookHero.com', 'https://s3.amazonaws.com/uifaces/faces/twitter/9lessons/128.jpg');

INSERT INTO movies (title, `release`, score, reviewer, publication) VALUES ('Suicide Squad', '2016', 8, 'Robert Smith', 'The Daily Reviewer');
INSERT INTO movies (title, `release`, score, reviewer, publication) VALUES  ('Batman vs. Superman', '2016', 6, 'Chris Harris', 'International Movie Critic');
INSERT INTO movies (title, `release`, score, reviewer, publication) VALUES  ('Deadpool', '2016', 9, 'Andrew West', 'MyNextReview');
INSERT INTO movies (title, `release`, score, reviewer, publication) VALUES  ('Avengers: Age of Ultron', '2015', 7, 'Mindy Lee', 'Movies Games');
INSERT INTO movies (title, `release`, score, reviewer, publication) VALUES  ('Ant-Man', '2015', 8, 'Martin Thomas', 'TheOne');
INSERT INTO movies (title, `release`, score, reviewer, publication) VALUES  ('Guardians of the Galaxy', '2014', 10, 'Anthony Miller', 'ComicBookHero.com');
INSERT INTO movies (title, `release`, score, reviewer, publication) VALUES  ('Doctor Strange', '2016', 7, 'Anthony Miller', 'ComicBookHero.com');
INSERT INTO movies (title, `release`, score, reviewer, publication) VALUES  ('Superman: Homecoming', '2017', 10, 'Chris Harris', 'International Movie Critic');
INSERT INTO movies (title, `release`, score, reviewer, publication) VALUES  ('Wonder Woman', '2017', 8, 'Martin Thomas', 'TheOne');

