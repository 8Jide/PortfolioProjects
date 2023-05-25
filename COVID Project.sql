select
*
from
covid.coviddeaths
order by
3,4;

select
location, date, total_cases, new_cases, total_deaths, population
from
covid.coviddeaths
where
continent is not null
order by
1,2;

select
location,
max(total_deaths) as Total_Death_Count
from
covid.coviddeaths
where
location = "United Kingdom";

select
location, date, total_cases, total_deaths, 
(total_deaths/total_cases)*100 as DeathPercentage
from
covid.coviddeaths
where 
location like '%kingdom%'
order by
1, 2;

select
location, date, population, total_cases, 
(total_cases/population)*100 as Percent_Of_Population_Infected
from
covid.coviddeaths
where 
location like '%kingdom%'
order by
1, 2;

select
location, population, 
max(total_cases) as Highest_Infection_Count, 
max((total_cases/population))*100 as Percent_Of_Population_Infected
from
covid.coviddeaths
group by
location, population
order by
Percent_Of_Population_Infected desc;

select
location,
max(total_deaths) as Total_Death_Count
from
covid.coviddeaths
where
continent is not null
group by
location
order by
Total_Death_Count desc;

select
sum(new_cases) as total_cases,
sum(new_Deaths) as total_deaths,
sum(new_deaths)/sum(new_cases)*100 as Death_Percentage
from
covid.coviddeaths
where 
continent is not null
order by
1,2;

select
location,
max(total_deaths) as Total_Death_Count
from
covid.coviddeaths
where
location = "Bangladesh";