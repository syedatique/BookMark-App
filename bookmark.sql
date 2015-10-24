create table bookmarks (
  id serial4 primary key,
  title varchar(255),
  url varchar(255),
  genre text,
  details text
);

insert into bookmarks(title, url, genre, details) values
 ('BBC Website', 'http://www.bbc.co.uk/', 'News', 'A popular website for News' );

