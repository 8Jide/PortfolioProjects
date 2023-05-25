select 
player, team, position, height
from 
players
where 
team = "Los Angeles Lakers"
and age < 23;

select 
player, position
from 
players 
where 
age > 30
and 
seasons_in_league > 15
group by 
player;

select 
player, height, position, team
from 
players
where 
height in ("6'6", "6'5", "6'4", "6'3", "6'2", "6'1", "6,0")
and team = "Boston Celtics"
group by 
player;

select 
team, avg(age) as average_age
from 
players
group by 
team
having average_age < 26;

select 
team, avg(weight)
from 
players
where 
team = "Orlando Magic";

select 
player, team, max(height)
as 
tallest_player_pre_2000
from 
players
where 
team = "Chicago Bulls"
and season < 2000;

select 
team, player, 
age as youngest_age_to_play
from 
players
where 
team = "Denver Nuggets"
group by 
player
order by 
age desc;

select 
player, team, conference, position
from 
players
where 
position = "PG"
and conference is not null
group by 
player
order by 
player;