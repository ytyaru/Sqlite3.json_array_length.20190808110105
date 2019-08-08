create table users(id int primary key, name text);
insert into users values(111, 'yamada');
insert into users values(222, 'suzuki');
insert into users values(333, 'tanaka');
.headers on
.mode column
select json_group_array(name) from users;
select json_array_length(json_group_array(name)) from users;
