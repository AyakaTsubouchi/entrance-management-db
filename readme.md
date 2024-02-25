https://zenn.dev/dotq/articles/54ac397b217f5f
https://kiyobl.com/docker-mysql-persistence/#sql-reference


docker exec -it db bash

## enter mysql
mysql -u root -p

## create database
CREATE DATABASE IF NOT EXISTS entrance_log;

## define database
USE entrance_log;

## create table
CREATE TABLE IF NOT EXISTS entrance_time_log (
    id VARCHAR(255),
    time TIME
);

## see table
USE entrance_log;
DESCRIBE entrance_time_log;

## add data
insert into entrance_time_log(id, time) values(1, now());

## get all the columns in the table
select * from entrance_time_log;

## おまけ(it doesn't work..)
mysql -u user -p -h 172.20.0.2 --port 3006 -D entrance_log