describe Filmes;

alter table Filmes add column playing_limit_date date ;

alter table Filmes drop column playing_limit_date ;

alter table Filmes change rating rating int;

alter table Filmes change releaseDate CURDATE() where id = "01";

select id, movieName, releaseDate, sinopse, rating, playing_limit_date from Filmes;

alter table Filmes change moveName movieName varchar(100);

-- alter table Filmes change releaseDate CURDATE() where id = "01"; -> Verificar pq deu ruim

update Filmes set playing_limit_date = "2021-12-30" where id = "001";

delete from Filmes where id ="002";

select count(*)from Filmes where rating > 7;

select avg(rating) from Filmes;

select count(*) from Filmes where playing_limit_date > CURDATE(); 

select count(*) from Filmes where releaseDate > CURDATE(); 

select max(rating)  from Filmes;

select min(rating) from Filmes;

select * from Filmes order by movieName ASC;

select * from Filmes order by movieName desc limit 5;

select * from Filmes order by releaseDate desc limit 3;

select * from Filmes order by rating desc limit 3;



