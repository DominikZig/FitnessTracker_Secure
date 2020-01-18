create table users(username varchar (50) not null primary key,
	password varchar (50) not null,
    enabled boolean not null);
    

create table authorities (
	username varchar (50) not null,
    authority varchar (50) not null,
    constraint fk_authorities_users
    foreign key(username) references users(username));
    create unique index ix_auth_username on authorities (username, authority);
    

insert into users (username, password, enabled) values
	("dominik", "secret", true)
    
select * from users;

insert into authorities (username, authority) values
	("dominik", "ROLE_USER");
    
select * from authorities;

insert into users (username, password, enabled) values
	("chris", "secret", true)
    
insert into authorities (username, authority) values
	("chris", "ROLE_ADMIN");

insert into authorities (username, authority) values
	("chris", "ROLE_USER");

DELETE from authorities where username="chris" and authority="ROLE_USER"    

select * from authorities;

update users set password = "5ebe2294ecd0e0f08eab7690d2a6ee69" where username = "dominik"

select * from users;

alter table users modify password varchar(60);

update users set password = "$2a$10$1yPZb.fP/2ViTAtPkS8pkuUbLBVdaf1H38rvuo4f0toXrVR8aNgeq"
where username = "dominik"

update users set password = "$2a$10$1yPZb.fP/2ViTAtPkS8pkuUbLBVdaf1H38rvuo4f0toXrVR8aNgeq"
where username = "chris"

insert users (username, password, enabled) values ("mark", 
"$2a$10$1yPZb.fP/2ViTAtPkS8pkuUbLBVdaf1H38rvuo4f0toXrVR8aNgeq", 1)

insert into authorities (username, authority) values ("mark", "ROLE_BAD")


create table permissions (
	username varchar(50) not null,
    target varchar(50) not null,
    permission varchar(50) not null,
    constraint fk_permissions_users foreign key(username) references users(username));
    
create unique index ix_perm_username on permissions (username, target, permission);

insert into permissions (username, target, permission) 
	values ("chris", "com.pluralsight.model.Goal", "createGoal");
    
delete from permissions where username = "chris";

select * from permissions;

update users set password = "$2a$10$JQXmsS2QIqOMJRlPM2E0h.4Uf6nBERnmyhemLsnf64ZcbLcyXO9KS"
where username = "dominik"

insert into authorities (username, authority) values
	("dominik", "ROLE_ADMIN");
    
insert into permissions (username, target, permission) 
	values ("dominik", "com.pluralsight.model.Goal", "createGoal");