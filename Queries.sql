-- SELECT ASTRONAUTS AND THEIR NATIONALITIES
SELECT astronaut_name, nationality
FROM Astronauts;

-- SELECT ASTRONAUTS AND THEIR ROLES IN APOLLO 11
SELECT 
    m.mission_name, 
    a.astronaut_name,
    mc.role
FROM 
    Missions AS m
JOIN 
    Mission_Crew AS mc ON m.mission_ID = mc.mission_ID
JOIN 
    Astronauts AS a ON mc.astronaut_ID = a.astronaut_ID
WHERE 
    m.mission_name = 'Apollo 11';


-- SELECT ALL MISSIONS, THE ASTRONAUTS PARTICIPATING IN THEM, AND THEIR ROLES
SELECT 
    m.mission_name, 
    a.astronaut_name,
    mc.role
FROM 
    Missions AS m
LEFT JOIN 
    Mission_Crew AS mc ON m.mission_ID = mc.mission_ID
LEFT JOIN 
    Astronauts AS a ON mc.astronaut_ID = a.astronaut_ID;
    

-- SELECT ASTRONAUT'S NAME, AGE AT LAUNCH DATE, AND ROLE 
SELECT
	a.astronaut_name,
    mission_name,
    DATEDIFF(m.launch_date, a.date_of_birth) / 365 AS Age_at_launch,
    mc.role
FROM
	Astronauts AS a
LEFT JOIN
	Mission_Crew AS mc ON a.astronaut_ID = mc.astronaut_ID
LEFT JOIN
	Missions AS m ON mc.mission_ID = m.mission_ID;
    
-- ADDING A NEW COLUMN TO ASTRONAUTS TABLE
ALTER TABLE Astronauts ADD Alive BOOLEAN;

-- UPDATING VALUES
UPDATE Astronauts
SET Alive = TRUE
WHERE astronaut_ID = 2 OR 3 OR 4 OR 5 OR 6 OR 7;

UPDATE Astronauts
SET Alive = FALSE 
WHERE astronaut_ID = 1;

-- ADDING JAXA
INSERT INTO Agencies (agency_name, country, founded_year)
VALUES ('JAXA', 'JAPAN', 2003);

-- UPDATING ASTRONAUT DATA
UPDATE Astronauts
SET agency_ID = 6
WHERE astronaut_ID = 7;


--  SELECT ASTRONAUT, NATIONALITY, CALCULATED AGE IF ALIVE, AND AGENCY NAME
SELECT astronaut_name, 
		nationality,
	    CASE 
        WHEN Alive = TRUE THEN FLOOR(DATEDIFF(CURDATE(), date_of_birth) / 365)
        ELSE 'Died'
    END AS Age,
    agency_name
FROM Astronauts
LEFT JOIN
Agencies ON Astronauts.agency_ID = Agencies.agency_ID;

-- SELECT UNCREWED MISSIONS
SELECT mission_name
FROM Missions as m
LEFT JOIN Mission_Crew as mc ON m.mission_ID = mc.mission_ID
WHERE mc.astronaut_ID IS NULL;

-- SELECT MISSIONS WITH ISS AS THEIR DESTINATION
SELECT 
    mission_name
FROM 
    Missions
JOIN 
    Destinations ON Missions.destination_ID = Destinations.destination_ID
WHERE 
    Destinations.name = 'International Space Station';

-- COUNT OF SPACECRAFTS TYPES IN DESC ORDER
SELECT 
    spacecraft_type,
    COUNT(*) AS number_of_spacecrafts
FROM 
    Spacecrafts
GROUP BY 
    spacecraft_type
ORDER BY 
    number_of_spacecrafts DESC;



