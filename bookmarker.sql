create table bookmarkers (
  id serial4 primary key,
  title text,
  url varchar(255) not null,
  genre text,
  details text
);

insert into bookmarkers(title, url, genre, details) values
 ('BBC Website', 'http://www.bbc.co.uk/', 'News', 'A popular website for News' );

