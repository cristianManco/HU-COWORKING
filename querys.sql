

--------------- Insertions Updates and Querys ----------- -- 
-- Script to Reserve a Workspace: -- sql

INSERT INTO Reservations (user_id, workspace_id, session_id) VALUES (user_id, workspace_id, session_id);


-- Parameters 
-- @user_id: ID of the user making the reservation 
-- @workspace_id: ID of the workspace to be reserved 
-- @session_id: ID of the session in which you want to reserve the workspace

DO $$
DECLARE
    reservation_exists INTEGER;
BEGIN
    -- Verificar si el espacio de trabajo ya está reservado en la sesión especificada
    SELECT COUNT(*) INTO reservation_exists
    FROM Reservations
    WHERE workspace_id = 2 AND session_id = 3;

    -- Si el espacio de trabajo no está reservado, proceder con la inserción
    IF reservation_exists = 0 THEN
        INSERT INTO Reservations (user_id, workspace_id, session_id)
        VALUES (1, 2, 3);
    ELSE
        RAISE NOTICE 'El espacio de trabajo ya está reservado para esta sesión.';
    END IF;
END $$;


-- Script to Cancel a Reservation:
-- sql

DELETE FROM Reservations
WHERE user_id = 1 AND workspace_id = 2 AND session_id = 3;



-- 2.4 SQL Queries 
-- List of Workspaces Available in a Room and Session: 
-- sql

SELECT workspace_id
FROM Workspaces w
LEFT JOIN Reservations r ON w.workspace_id = r.workspace_id AND r.session_id = session_id
WHERE w.room_id = room_id AND r.workspace_id IS NULL;


-- List of Occupied Workspaces in a Room and Session:
-- sql

SELECT w.workspace_id
FROM Workspaces w
JOIN Reservations r ON w.workspace_id = r.workspace_id
WHERE w.room_id = room_id AND r.session_id = session_id;



-- Sessions Ordered by Busiest:
-- sql

SELECT session_id, COUNT(reservation_id) AS reservations_count
FROM Reservations
GROUP BY session_id
ORDER BY reservations_count DESC;


-- Sessions Ordered by Most Available:
-- sql

SELECT s.session_id, (SELECT COUNT(workspace_id) FROM Workspaces) - COUNT(r.reservation_id) AS available_count
FROM Sessions s
LEFT JOIN Reservations r ON s.session_id = r.session_id
GROUP BY s.session_id
ORDER BY available_count DESC;


-- List of Workspaces Assigned to a User:
-- sql

SELECT workspace_id
FROM Reservations
WHERE user_id = user_id;


-- List of Workspaces Assigned to a Session:
-- sql

SELECT workspace_id
FROM Reservations
WHERE session_id = session_id;


-- all entity data

SELECT * FROM Reservations;


SELECT * FROM Sessions;


SELECT * FROM Workspaces;


SELECT * FROM Rooms;


SELECT * FROM Users;

------------------------------------------


-- Query to obtain the list of users who have reserved a workspace in a specific room for a specific period of time:


SELECT u.user_id, u.name, u.email, r.room_id, r.name AS room_name, s.session_id, s.start_time, s.end_time
FROM Users u
JOIN Reservations res ON u.user_id = res.user_id
JOIN Workspaces w ON res.workspace_id = w.workspace_id
JOIN Rooms r ON w.room_id = r.room_id
JOIN Sessions s ON res.session_id = s.session_id
WHERE r.room_id = ? AND s.start_time BETWEEN ? AND ?;


-- Query to obtain the number of bookings per room for a given period of time:


SELECT r.room_id, r.name AS room_name, COUNT(res.reservation_id) AS number_of_reservations
FROM Rooms r
JOIN Workspaces w ON r.room_id = w.room_id
JOIN Reservations res ON w.workspace_id = res.workspace_id
JOIN Sessions s ON res.session_id = s.session_id
WHERE s.start_time BETWEEN ? AND ?
GROUP BY r.room_id, r.name
ORDER BY number_of_reservations DESC;

-- Query to obtain the rooms with the highest occupancy in terms of bookings in a specific period of time:


SELECT r.room_id, r.name AS room_name, COUNT(res.reservation_id) AS reservations_count
FROM Rooms r
JOIN Workspaces w ON r.room_id = w.room_id
JOIN Reservations res ON w.workspace_id = res.workspace_id
JOIN Sessions s ON res.session_id = s.session_id
WHERE s.start_time BETWEEN ? AND ?
GROUP BY r.room_id, r.name
ORDER BY reservations_count DESC
LIMIT 5;



-- Query for users who have reserved more than one workspace in a specific session:


SELECT u.user_id, u.name, u.email, s.session_id, COUNT(res.reservation_id) AS reservations_count
FROM Users u
JOIN Reservations res ON u.user_id = res.user_id
JOIN Sessions s ON res.session_id = s.session_id
WHERE s.session_id = ?
GROUP BY u.user_id, u.name, u.email, s.session_id
HAVING COUNT(res.reservation_id) > 1;


-- Query for details of reservations by user with room and session information:


SELECT u.user_id, u.name, r.room_id, r.name AS room_name, s.session_id, s.start_time, s.end_time, COUNT(res.reservation_id) AS reservations_count
FROM Users u
JOIN Reservations res ON u.user_id = res.user_id
JOIN Workspaces w ON res.workspace_id = w.workspace_id
JOIN Rooms r ON w.room_id = r.room_id
JOIN Sessions s ON res.session_id = s.session_id
GROUP BY u.user_id, u.name, r.room_id, r.name, s.session_id, s.start_time, s.end_time;

-- Inquiry for all available workspaces in a specific room during a specific session:

SELECT w.workspace_id, w.row_number, w.column_number
FROM Workspaces w
LEFT JOIN Reservations res ON w.workspace_id = res.workspace_id AND res.session_id = ?
WHERE w.room_id = ? AND res.reservation_id IS NULL;


-- Query for all sessions and the number of bookings made for each session:



SELECT s.session_id, s.start_time, s.end_time, COUNT(res.reservation_id) AS reservations_count
FROM Sessions s
LEFT JOIN Reservations res ON s.session_id = res.session_id
GROUP BY s.session_id, s.start_time, s.end_time
ORDER BY reservations_count DESC;