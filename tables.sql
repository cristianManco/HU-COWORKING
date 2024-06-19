-- Active: 1718798157580@@b9b7ia7hcr9fx33r1eqq-postgresql.services.clever-cloud.com@50013
CREATE DATABASE coworking_db;


-- create tables

CREATE TABLE Users (
    user_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE
);

CREATE TABLE Rooms (
    room_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    rows INTEGER,
    columns INTEGER
);

CREATE TABLE Workspaces (
    workspace_id SERIAL PRIMARY KEY,
    room_id INTEGER REFERENCES Rooms(room_id),
    row_number INTEGER,
    column_number INTEGER,
    UNIQUE (room_id, row_number, column_number)
);

CREATE TABLE Sessions (
    session_id SERIAL PRIMARY KEY,
    start_time TIMESTAMP,
    end_time TIMESTAMP
);

CREATE TABLE Reservations (
    reservation_id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES Users(user_id),
    workspace_id INTEGER REFERENCES Workspaces(workspace_id),
    session_id INTEGER REFERENCES Sessions(session_id),
    reservation_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


