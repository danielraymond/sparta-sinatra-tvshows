DROP TABLE IF EXISTS tvshow;

CREATE TABLE tvshow (

  id SERIAL PRIMARY KEY,
  title VARCHAR(255),
  body TEXT

);

insert into tvshow (title, body) values ('Romero', 'Bambi Meets Godzilla');
insert into tvshow (title, body) values ('Unmade Beds', 'Bells of Innocence');
insert into tvshow (title, body) values ('One, Two, Three', 'The Stanford Prison Experiment');
insert into tvshow (title, body) values ('Resident Evil', 'Putty Hill');
