create database fun;

use fun;

create table players(
player_id int,
player_name varchar(25),
country varchar(25),
goals int
);

insert into players values(901,"Sunil","India",5);
insert into players values(902,"Dainel","England",12);
insert into players values(903,"Christiano",'Portugal',15);
insert into players values(904,'Zalatan','Swedan',12);
insert into players values(905 , "Rodriguez",'Columbia',11);
insert into players values(906,'Henrey','England',10);
insert into players values(907,'Nani','Portugal',2);
insert into players values(908,'Neymar','Brazil',14);
insert into players values(909,'Jindal','Iran',5);
insert into players values(910,'Martial','France',9);

select * from players;

select * from players where goals > 6;




select player_name
from players
where goals >6;

delimiter &&
create procedure top_players()
begin
select player_name,country,goals from players where goals > 6;
end &&
delimiter ;

call top_players;

# stored procedure using IN and Out
# In -- > Input
# Out --> Output

delimiter //
create procedure top_player_sort_by_goals(in n int)
begin
select player_name, country , goals from players order by goals desc limit n;
end //
delimiter ;

call top_player_sort_by_goals(5);

select * from players;

delimiter //
create procedure update_player(in n int , in player varchar(25))
begin
update players set goals = n  where player_name = player;
end //
delimiter ;

SET SQL_SAFE_UPDATES = 0;

call update_player(21,'Christiano');

select * from players ; 

delimiter //
create procedure player_count(out total_player int)
begin
select count(*) from players into total_player;
end //
delimiter ;

call player_count(@total_count) ;

select @total_count as Total_count;

delimiter //
create procedure player_count_country(in var varchar(25) , out total_player int) 
begin
select count(*) from player where country = var into total_player;
end //
delimiter ;

call player_count_country('India')






