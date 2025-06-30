-- Users
drop table if exists users cascade;
create table users (
  id serial primary key,
  email varchar(255) not null unique,
  password_hash text not null,
  name varchar(255),
  role varchar(32),
  created_at timestamp default current_timestamp
);
-- Groups
drop table if exists groups cascade;
create table groups (
  id serial primary key,
  name varchar(255),
  created_at timestamp default current_timestamp
);
-- Memberships
drop table if exists memberships cascade;
create table memberships (
  id serial primary key,
  group_id int references groups(id),
  user_id int references users(id)
);
-- Events
drop table if exists events cascade;
create table events (
  id serial primary key,
  group_id int references groups(id),
  title varchar(255),
  description text,
  start_time timestamp,
  end_time timestamp,
  location varchar(255)
);
-- Event Attendance
drop table if exists event_attendance cascade;
create table event_attendance (
  id serial primary key,
  event_id int references events(id),
  user_id int references users(id),
  status varchar(32)
);
-- Setlists
drop table if exists setlists cascade;
create table setlists (
  id serial primary key,
  group_id int references groups(id),
  name varchar(255),
  event_id int references events(id)
);
-- Setlist Songs
drop table if exists setlist_songs cascade;
create table setlist_songs (
  id serial primary key,
  setlist_id int references setlists(id),
  title varchar(255),
  artist varchar(255),
  "order" int
);
-- Messages
drop table if exists messages cascade;
create table messages (
  id serial primary key,
  group_id int references groups(id),
  user_id int references users(id),
  text text,
  timestamp timestamp default current_timestamp
);
-- Files
drop table if exists files cascade;
create table files (
  id serial primary key,
  group_id int references groups(id),
  uploader_id int references users(id),
  filename varchar(255),
  url text,
  created_at timestamp default current_timestamp
);