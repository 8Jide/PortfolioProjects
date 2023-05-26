CREATE TABLE music_store (id INTEGER PRIMARY KEY, Artist TEXT, Album TEXT, Stock INTEGER, Price INTEGER, In_Store TEXT, Online TEXT);

insert into music_store 
values (1, "NewJeans","1st Album New Jeans", 10, 12, "Yes", "Yes");
insert into music_store 
values (2, "Itzy","CHECKMATE", 14, 10, "Yes", "No");
insert into music_store 
values (3, "TWICE","BETWEEN 1&2", 5, 7, "No", "Yes");
insert into music_store 
values (4, "EVERGLOW","Return of the Girl", 7, 5, "Yes", "No");
insert into music_store 
values (5, "Red Velvet","RBB", 11, 5, "No", "Yes");
insert into music_store 
values (6, "IVE","LOVE DIVE", 3, 4, "Yes", "Yes");

select 
* 
from 
music_store
order by 
price;

select 
sum(stock)
from 
music_store;

select 
*
from 
music_store
where 
stock > 7;