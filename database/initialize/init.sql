-- create table
CREATE TABLE IF NOT EXISTS entrance_time_log (
    id VARCHAR(255),
    time TIME
);

-- add data
insert into entrance_time_log(id, time) values(1, now());