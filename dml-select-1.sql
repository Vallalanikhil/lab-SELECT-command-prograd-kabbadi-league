## Progression


-- 1. **Write a query to display the team details. Display the records sorted in the order of team name.**
SELECT * FROM TEAM
ORDER BY NAME ASC;
-- 2. **Write a query to display the player details whose name starts with a letter `S` and who do not belong to the country 'South Africa'. Display the records sorted in descending order based on player name.**
SELECT * FROM PLAYER;
INSERT INTO PLAYER
(ID,NAME,COUNTRY,SKILL_ID,TEAM_ID)
VALUES
(2,'SURESH','INDIA',1,3);

INSERT INTO PLAYER
(ID,NAME,COUNTRY,SKILL_ID,TEAM_ID)
VALUES
(3,'SAIESH','SOUTH AFRICA',1,3);

select * from player 
where name like 's%' and  COUNTRY!= 'South Africa' 
order by name DESC

-- 3. **Write a query to display the event number and the seconds taken for each event. Display the records sorted in ascending order based on event number.**
select * from event; 
select EVENT_NO, CLOCK_IN_SECONDS 
from event 
order by EVENT_NO ASC
-- 4. **Write a query to display the event numbers of those events which has sum of raid points and defending points greater than or equal to 3. Display the records sorted in ascending order based on event_no.**
select EVENT_NO 
from event 
where SUM(RAID_POINTS) > = 3 AND  SUM(DEFENDING_POINTS) > = 3 
ORDER BY EVENT_NO ASC
-- 5. **Write a query to display the name of all the players who belong to the country India or Iran. Display the records sorted in ascending order based on player name.**
SELECT * FROM player;
insert into player
(id,name,country,skill_id,team_id)
values
(5,'irfan','iran',1,3);
select name
from player
where country='india' or country='iran'
order by name asc
-- 6. **Write a query to display the name of all the players who does not belong to the country India and Iran. Display the records sorted in ascending order based on player name.**
select name
from player
where country!='india' or country!='iran'
order by name asc
-- 7. **Write a query to display the names of all the skills that start with `Defend`. Display the records sorted in ascending order based on skill name.**
Create table Skills 
(
id INT,
names VARCHAR(50)
);
insert into Skills values(1,'Defendclear');
insert into Skills values(1,'testDefend');
insert into Skills values(1,'Defendtry');
insert into Skills values(1,'Well');

select names from Skills where names like 'Defend%' order by names ASC
-- 8. **Write a query to display all the stadium names that ends with `Complex`. Display the records sorted in ascending order based on stadium names.**
create table stadium
( id number,
names varchar(50));
insert into stadium values(1,'chennaicomplex');
insert into stadium values(2,'banglorecomplex');
insert into stadium values(3,'mumbaicomplex');

select names
from stadium
where names like '%complex'
order by names asc
-- 9. **Write a query to display the winner team ids and the scores of those teams whose scores are less than 35. Display the records sorted in descending order based on outcome id.**
SELECT * FROM outcome;
select winner_team_id
from outcome
where score <35
order by id desc
-- 10. **Write a query to display the game details of those games that were played between January and March of 2020. Display the records sorted in descending order based on id.**
select * from game;
insert into game 
(id,game_date,team_id_1,team_id_2,venue_id,outcome_id,referee_id_1,referee_id_2,first_innings_id,second_innings_id)
values(1,to_date ( '2020-03-17', ' yyyy-mm-dd'),3,4,5,8,1,2,1,1);

select * 
from game 
where game_date BETWEEN to_date ( '2020-01-14', ' yyyy-mm-dd') AND to_date ( '2020-03-26', ' yyyy-mm-dd')  
order by id DESC
-- 11. **Write a query to display the names of players who are Raiders. Display the records sorted in ascending order based on player name.**
select * from event;

SELECT name FROM PLAYER
where id in(select raider_id from event)
order by name asc
-- 12. **Write a query to display the event number, raid points and defence points scored in the first innings of the game that was played on `2020-01-26`. Display the records sorted in ascending order based on event number.**
select event_no,raid_points,defending_points
from event
where id in(select first_innings_id from game where game_date='26-01-2020')
order by event_no asc;
-- 13. **Write a query to display the name of the winner team in the game played on `2020-03-09`. Display the records sorted in ascending order based on team name.**
select name
from team
where id in(select winner_team_id from outcome where id in(select id from game where game_date='09-03-2020'))
order by name asc
-- 14. **Write a query to display the names of players who were the player of the match in the game played on 2020-03-09'. Display the records sorted in ascending order based on player name.**
select name
from player
where id in(select player_of_match from outcome where id in(select id from game where game_date='09-03-2020'))
order by name asc
-- 15. **Write a query to display the names of players who are All rounders. Display the records sorted in ascending order based on player name.**
select name
from player
where skill_id in(select name from skill where name='all rounder')
order by name asc
-- 16. **Write a query to display the venue names for all the games that were played on `2020-03-09`. Display the records sorted in ascending order based on venue name.**
select * from venue; 
alter table venue
add venue_date DATE 
update venue 
set venue_date=to_date ( '2020-03-09', ' yyyy-mm-dd') 
where ID=5
select * from venue
select STADIUM_NAME 
from venue 
where venuedate=to_date ( '2020-03-09', ' yyyy-mm-dd')
-- 17. **Write a query to display the Coach's name of the team `Iran`**
select * from team;
select * from player;
insert into team 
values(6,'khaja','Iran',2,,2); 
select * from team 
where COACH = 'Iran' 
-- 18. **Write a query to display the event number and the defence points of `Fazel Atrachali` in each event. Display the records sorted in ascending order based on event number.**
select * from event

alter table event
add  Name VARCHAR(40)
update event set Name='Fazel Atrachali' 
where ID=23
select  EVENT_NO, DEFENDING_POINTS 
from EVENT 
where name='Fazel Atrachali' 
order by  EVENT_NO asc
-- 19. **Write a query to display the names of the Winning teams in the month of March 2020. Display the records sorted in ascending order based on team name.**
select * from game;
insert into game 
values(4,to_date ( '2020-03-17', ' yyyy-mm-dd'),22,23,54,34,4,5,2,3);
select name
from 
-- 20. **Write a query to display the names of players who were the player of the match in the games held in March 2020. Display the records sorted in ascending order based on player name.**


