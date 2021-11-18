create table if not exists list_worker(
id serial primary key,
name varchar(30) not null
);

create table if not exists list_chief(
id serial primary key,
id_worker integer not null references list_worker(id)
);

create table if not exists list_department(
id serial primary key,
title varchar(30) unique,
id_chief integer not null references list_chief(id)
);

create table if not exists list_worker_department(
id serial primary key,
id_worker integer not null references list_worker(id),
id_department integer not null references list_department(id)
);