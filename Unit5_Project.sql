create table video(
video_id serial primary key,
title varchar(50) not null,
length varchar(25) not null,
url varchar(225) not null);

insert into video(title, length, url)
values('The ONLY DD You', '28', 'https://www.youtube.com/watch?v=2vRc94Cs2vI'),
('Professional Stock Trading', '89', 'https://www.youtube.com/watch?v=slBxM4J3BEA'),
('Explained | The Stock Market', '17', 'https://www.youtube.com/watch?v=ZCFkWDdmXG8');

select * from video;

create table reviewer(
user_id serial primary key,
name varchar(50) not null,
rating varchar(25),
review varchar(225) not null,
video_id serial not null references video);

insert into reviewer(name, rating, review)
values('John', '3', 'Not bad'),
('Vincent', '4', 'Good'),
('Bob', '3', 'Not bad');

select * from reviewer;

select * from video
inner join reviewer on reviewer.video_id = video.video_id;