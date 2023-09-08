drop database if exists `MUSIC STREAMING`;
create database  if not exists `MUSIC STREAMING`;

use `MUSIC STREAMING`;

create table if not exists `USER` (
id_user int primary key auto_increment not null unique,
login char(55) not null unique,
passw char(255) not null
);

create table if not exists `profile` (
id_prof int primary key auto_increment not null unique,
username char(55) not null unique,
birthday date not null,
user_id int not null unique,
foreign key (`user_id`) references `user` (`id_user`)
);

create table if not exists `artist` (
id_artist int primary key auto_increment not null unique,
name char(55) not null unique,
description text
);

create table if not exists `genre` (
id_genre int auto_increment not null unique,
name char(55)
);

create table if not exists `album` (
id_album int primary key auto_increment not null unique,
name char(255) not null unique,
description text,
`date` date not null,
duration int not null,
artist_id int not null,
genre_id int not null,
foreign key (`artist_id`) references `artist` (`id_artist`),
foreign key (`genre_id`) references `genre` (`id_genre`)
);

create table if not exists `song` (
id_song int primary key auto_increment not null unique,
name char(255) not null unique,
`date` date not null,
duration int not null,
lyrics text,
artist_id int not null,
genre_id int not null,
foreign key (`artist_id`) references `artist` (`id_artist`),
foreign key (`genre_id`) references `genre` (`id_genre`)
);

create table if not exists `album_song` (
id_alb_song int primary key auto_increment not null unique,
album_id int not null,
song_id int not null,
foreign key (`album_id`) references `album` (`id_album`),
foreign key (`song_id`) references `song` (`id_song`)
);

create table if not exists `playlist` (
id_playlist int primary key auto_increment not null unique,
name char(255) not null,
upd_date date not null,
duration int not null
);

create table if not exists `us_play` (
id_us_play int primary key auto_increment not null unique,
user_id int not null,
playlist_id int not null,
foreign key (`user_id`) references `user` (`id_user`),
foreign key (`playlist_id`) references `playlist` (`id_playlist`)
);

create table if not exists `playlist_song` (
id_play_song int primary key auto_increment not null unique,
playlist_id int not null,
song_id int not null,
foreign key (`playlist_id`) references `playlist` (`id_playlist`),
foreign key (`song_id`) references `song` (`id_song`)
);















