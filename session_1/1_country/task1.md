# Task 1

## Exercises
1. Retrieve all data from the countries table.
2. Select only the Country and Population columns.
3. Find all country names in Europe.
4. Find all countries with a population greater than 100 million.
5. Find countries in Asia with a GDP per capita greater than 20,000.
6. Find all countries where the literacy rate is below 70%.
7. Find all countries with a coastline ratio of exactly 0 (landlocked countries)
8. Find countries with names starting with 'A'.
9. Find countries with "United" in their name.
10. Find countries where the birthrate is higher than the death rate AND the population is over 50 million.

## Diagram

![Database diagram of the Countries table.](database_diagram.png)

#1
SELECT Country FROM countries;
#2
SELECT Country, Population FROM countries;
#3
SELECT Country FROM countries WHERE Continent="Europe";
#4
SELECT Country FROM countries WHERE Population > 100,000,000;
#5
SELECT Country FROM countries WHERE Continent="Asia" AND GDPPerCapita > 20,000;
#6
Select Country FROM countries WHERE LiteracyPercent < 70;
#7
SELECT Country FROM countries WHERE CoastlineRatio = 0;
#8
SELECT Country FROM countries WHERE Country LIKE 'A%';
#9
SELECT Country FROM countries WHERE Country LIKE '%United' OR 'United%';
#10
SELECT Country FROM countries WHERE Birthrate > Deathrate AND Population > 50,000,000