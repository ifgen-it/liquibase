-- use it if spring.jpa.hibernate.ddl-auto=none
-- rename file to schema.sql
create table if not exists user
(
    id bigint auto_increment primary key,
    email varchar(255) null,
    first_name varchar(255) null,
    last_name varchar(255) null,
    password varchar(255) not null,
    username varchar(255) not null,
    constraint UK_username
    unique (username)
    );