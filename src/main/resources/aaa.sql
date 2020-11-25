/*DROP SCHEMA IF EXISTS first_steps;*/
create schema first_steps;

/*DROP TABLE IF EXISTS first_steps.person;*/
create table first_steps.person
(
    ssn           varchar(10) not null,
    date_of_birth date        not null,
    first_name    varchar(20) null,
    last_name     varchar(30) null,
    constraint pk_person primary key (ssn)
);

/*DROP TABLE IF EXISTS first_steps.address;*/
create table first_steps.address
(
    ssn        varchar(10) not null,
    address_no smallint    not null,
    country    varchar(20) null,
    city       varchar(20) null,
    street     varchar(30) null,
    street_no  smallint    null,
    constraint pk_address primary key (ssn, address_no),
    constraint fk_address_person foreign key (ssn) references first_steps.person (ssn) on delete cascade
);

alter table first_steps.person
    add is_awesome  boolean not null default false,
    add awesomeness real    null,
    add wealth      money   null;

alter table first_steps.person
alter column wealth type numeric(12, 2);

insert into first_steps.person (ssn, date_of_birth, first_name, last_name, wealth)
values ('1234010180', '1980-01-01', 'Horst', 'Fischer', 22856.23),
       ('4321020290', '1990-02-02', 'Ursula', 'Bauer', 895621.86);

insert into first_steps.address (ssn, address_no, country, city, street, street_no)
values ('1234010180', 1, 'Austria', 'Wels', 'Hauptstraße', 4),
       ('4321020290', 1, 'Austria', 'Leonding', 'Limesstr.', 12),
       ('4321020290', 2, 'Austria', 'Linz', 'Domstrasse.', 61);

select p.*, a.city, a.street, a.street_no
from first_steps.person p
         left outer join first_steps.address a on p.ssn = a.ssn;