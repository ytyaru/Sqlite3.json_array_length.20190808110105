create table users(id int primary key, json text);
insert into users values(111, '[1,2]');
insert into users values(222, '["A","B","C"]');
insert into users values(333, '[]');
.headers on
.mode column
select json_array_length(json) from users;

