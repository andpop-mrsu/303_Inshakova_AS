insert into users(name, surname, email, register_date, gender, occupation_id)
values("Anastasiya", "Inshakova", "anastasi_ins@mail.ru", date("now"), "female", (select id from occupations as o where o.title = "student"));

insert into users(name, lastname, email, register_date, gender, occupation_id)
values("Daria", "Gladysheva", "dgladysheva@gmail.com", date("now"), "female", (select id from occupations as o where o.title = "student"));

insert into users(name, lastname, email, register_date, gender, occupation_id)
values("Danil", "Dudorov", "ddudorov@gmail.com", date("now"), "male", (select id from occupations as o where o.title = "student"));

insert into users(name, lastname, email, register_date, gender, occupation_id)
values("Irina", "Guskova", "iguskova@gmail.com", date("now"), "female", (select id from occupations as o where o.title = "student"));

insert into users(name, lastname, email, register_date, gender, occupation_id)
values("Yulia", "Zavaryukhina", "yzavaryukhina@gmail.com", date("now"), "female", (select id from occupations as o where o.title = "student"));

insert into movies(title, year) 
values("The Great Gatsby", 2013);

insert into genres_of_movies(movie_id, genre_id) 
values(
(select id from movies where movies.title = "The Great Gatsby" and movies.year = 2013),
(select id from genres where and genres.genre = "Novel"), 
); 

insert into ratings(user_id, movie_id, rating, 'timestamp')
values(
(select id from users where users.email = "anastasi_ins@mail.ru"), 
(select id from movies where movies.title = "The Great Gatsby" and movies.year = 2013),
3.7,
strftime('%s','now')); 

insert into tags(user_id, movie_id, tag, timestamp)
values(
(select id from users where users.email = "anastasi_ins@mail.ru"), 
(select id from movies where movies.title = "The Great Gatsby" and movies.year = 2013),
"family",
strftime('%s','now'));

insert into movies(title, year) 
values("The warmthn of our bodies", 2013);

insert into genres_of_movies(movie_id, genre_id) 
values(
(select id from movies where movies.title = "The warmthn of our bodies" and movies.year = 2013),
(select id from genres where and genres.genre = "Horror"), 
);

insert into ratings(user_id, movie_id, rating, 'timestamp')
values(
(select id from users where users.email = "anastasi_ins@mail.ru"), 
(select id from movies where movies.title = "The warmthn of our bodies" and movies.year = 2013),
3.4,
strftime('%s','now')); 

insert into tags(user_id, movie_id, tag, timestamp)
values(
(select id from users where users.email = "anastasi_ins@mail.ru"), 
(select id from movies where movies.title = "The warmthn of our bodies" and movies.year = 2013),
"nice",
strftime('%s','now'));

insert into movies(title, year) 
values("F9", 2013);

insert into genres_of_movies(movie_id, genre_id) 
values(
(select id from movies where movies.title = "F9" and movies.year = 2013),
(select id from genres where and genres.genre = "Horror"), 
);

insert into ratings(user_id, movie_id, rating, 'timestamp')
values(
(select id from users where users.email = "anastasi_ins@mail.ru"), 
(select id from movies where movies.title = "F9" and movies.year = 2013),
4.5,
strftime('%s','now')); 

insert into tags(user_id, movie_id, tag, timestamp)
values(
(select id from users where users.email = "anastasi_ins@mail.ru"), 
(select id from movies where movies.title = "F9" and movies.year = 2013),
"nice",
strftime('%s','now'));