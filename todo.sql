 create table todos (id serial primary key, title varchar(255) not null, details varchar(2048), priority int default (1) not null, created_at timestamp not null DEFAULT NOW(), completed_at timestamp);

INSERT INTO todos (title, details, priority) VALUES ('Walk Dog', Null, 1);
INSERT INTO todos (title, details, priority) VALUES ('Clean House', Null, 2);
INSERT INTO todos (title, details, priority) VALUES ('Rake Yard', Null, 3);
INSERT INTO todos (title, details, priority) VALUES ('Do Dishes', Null, 4);
INSERT INTO todos (title, details, priority) VALUES ('Laundry', Null, 5);

update todos set completed_at = now() where id = 1;

select title from todos where completed_at is Null;

select title from todos where priority > 1;

update todos set completed_at = '2018-11-12 10:20:23' where id = 2;

delete from todos where completed_at is not null;

