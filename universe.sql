create database universe;

create table galaxy
(
    galaxy_id serial primary key,
    name varchar(50) unique not null,
    description text not null,
    length int,
    width int,
    distance_from_earth numeric,
    has_life boolean,
    has_explored boolean
);

insert into galaxy(name, description, length, width, distance_from_earth, has_life, has_explored)
values
('Galaxy 1','desc',1,1,1,true,true),
('Galaxy 2','desc',1,1,1,true,true),
('Galaxy 3','desc',1,1,1,true,true),
('Galaxy 4','desc',1,1,1,true,true),
('Galaxy 5','desc',1,1,1,true,true),
('Galaxy 6','desc',1,1,1,true,true);


create table star
(
    star_id serial primary key,
    galaxy_id int not null,
    name varchar(50) unique not null,
    description text,
    length int,
    width int,
    distance_from_earth numeric,
    has_life boolean,
    has_explored boolean,
    constraint fk_galaxy
        foreign key(galaxy_id)
        references galaxy(galaxy_id)
);

insert into star(galaxy_id, name, description, length, width, distance_from_earth, has_life, has_explored)
values
(1,'Star 1','desc',1,1,1,true,true),
(2,'Star 2','desc',1,1,1,true,true),
(3,'Star 3','desc',1,1,1,true,true),
(4,'Star 4','desc',1,1,1,true,true),
(5,'Star 5','desc',1,1,1,true,true),
(6,'Star 6','desc',1,1,1,true,true);

create table planet
(
    planet_id serial primary key,
    star_id int not null,
    name varchar(50) unique not null,
    description text,
    length int,
    width int,
    distance_from_earth numeric,
    has_life boolean,
    has_explored boolean,
    constraint fk_star
        foreign key(star_id)
        references star(star_id)
);

insert into planet(star_id, name, description, length, width, distance_from_earth, has_life, has_explored)
values
(1,'Planet 1','desc',1,1,1,true,true),
(1,'Planet 2','desc',1,1,1,true,true),
(2,'Planet 3','desc',1,1,1,true,true),
(2,'Planet 4','desc',1,1,1,true,true),
(3,'Planet 5','desc',1,1,1,true,true),
(3,'Planet 6','desc',1,1,1,true,true),
(4,'Planet 7','desc',1,1,1,true,true),
(4,'Planet 8','desc',1,1,1,true,true),
(5,'Planet 9','desc',1,1,1,true,true),
(5,'Planet 10','desc',1,1,1,true,true),
(6,'Planet 11','desc',1,1,1,true,true),
(6,'Planet 12','desc',1,1,1,true,true);

create table moon
(
    moon_id serial primary key,
    planet_id int not null,
    name varchar(50) unique not null,
    description text,
    length int,
    width int,
    distance_from_earth numeric,
    has_life boolean,
    has_explored boolean,
    constraint fk_planet
        foreign key(planet_id)
        references planet(planet_id)
);

insert into moon(planet_id, name, description, length, width, distance_from_earth, has_life, has_explored)
values
(1,'Moon 1','desc',1,1,1,true,true),
(2,'Moon 2','desc',1,1,1,true,true),
(3,'Moon 3','desc',1,1,1,true,true),
(4,'Moon 4','desc',1,1,1,true,true),
(5,'Moon 5','desc',1,1,1,true,true),
(6,'Moon 6','desc',1,1,1,true,true),
(7,'Moon 7','desc',1,1,1,true,true),
(8,'Moon 8','desc',1,1,1,true,true),
(9,'Moon 9','desc',1,1,1,true,true),
(10,'Moon 10','desc',1,1,1,true,true),
(11,'Moon 11','desc',1,1,1,true,true),
(12,'Moon 12','desc',1,1,1,true,true),
(1,'Moon 13','desc',1,1,1,true,true),
(2,'Moon 14','desc',1,1,1,true,true),
(3,'Moon 15','desc',1,1,1,true,true),
(4,'Moon 16','desc',1,1,1,true,true),
(5,'Moon 17','desc',1,1,1,true,true),
(6,'Moon 18','desc',1,1,1,true,true),
(7,'Moon 19','desc',1,1,1,true,true),
(8,'Moon 20','desc',1,1,1,true,true);

create table rocket
(
    rocket_id serial primary key,
    name varchar(50) unique not null,
    code varchar(12) unique not null,
    description text,
    length int,
    width int,
    weight numeric,
    has_launced boolean,
    has_landed boolean
);

insert into rocket(name, code, description, length, width, weight, has_launced, has_landed)
values
('Rocket 1','code 1','desc',1,1,1,true,true),
('Rocket 2','code 2','desc',1,1,1,true,true),
('Rocket 3','code 3','desc',1,1,1,true,true),
('Rocket 4','code 4','desc',1,1,1,true,true),
('Rocket 5','code 5','desc',1,1,1,true,true),
('Rocket 6','code 6','desc',1,1,1,true,true);