INSERT INTO Agencies (agency_name, country, founded_year)
VALUES 
('NASA', 'United States', 1958),
('CSA', 'Canada', 1989),
('ESA', 'Europe', 1975),
('SpaceX', 'United States', 2002),
('CNSA', 'China', 1993);


INSERT INTO Destinations (name, type)
VALUES 
('Moon', 'Moon'),
('International Space Station', 'Space Station'),
('Mars', 'Planet'),
('Comet 67P', 'Comet'),
('Interstellar Space', 'Interstellar Space'),
('Sun–Earth L2', 'Lagrange Point');


INSERT INTO Spacecrafts (spacecraft_name, manufacturer, spacecraft_type, agency_ID)
VALUES 
('Apollo 11 Command Module', 'North American Aviation', 'Command Module', 1),
('SpaceX Crew Dragon', 'SpaceX', 'Crewed Spacecraft', 4),
('Voyager 1', 'JPL', 'Space Probe', 1),
('Voyager 2', 'JPL', 'Space Probe', 1),
('Rosetta', 'Airbus Defence and Space', 'Space Probe', 3),
('Crew Dragon Resilience', 'SpaceX', 'Crewed Spacecraft', 4),
('Tianwen-1', 'CAST', 'Orbiter and Rover', 5),
('James Webb Space Telescope', 'Northrop Grumman & Ball Aerospace & Technologies', 'Space Telescope', 1);

INSERT INTO Astronauts (astronaut_name, date_of_birth, nationality, agency_ID)
VALUES 
('Neil Armstrong', '1930-08-05', 'American', 1),
('Buzz Aldrin', '1930-01-20', 'American', 1),
('Chris Hadfield', '1959-08-29', 'Canadian', 2),
('Michael Hopkins', '1968-12-28', 'American', 1),
('Victor Glover', '1976-04-30', 'American', 1),
('Shannon Walker', '1965-06-04', 'American', 1),
('Soichi Noguchi', '1965-04-15', 'Japanese', 1); 

INSERT INTO Missions (mission_name, launch_date, spacecraft_ID, agency_ID, destination_ID, mission_status)
VALUES 
('Apollo 11', '1969-07-16', 1, 1, 1, 'Success'),
('Expedition 35', '2013-03-28', 2, 2, 2, 'Success'), 
('Voyager 1', '1977-09-05', 3, 1, 5, 'Extended Mission'), 
('Voyager 2', '1977-08-20', 4, 1, 5, 'Extended Mission'),
('Rosetta Mission', '2004-03-02', 5, 3, 4, 'Success'),
('Crew-1', '2020-11-16', 6, 4, 2, 'Success'),
('TianAgenciesAgencieswen-1', '2020-07-23', 7, 5, 3, 'Success'),
('JWST', '2021-12-25', 8, 1, 6, 'Success');


INSERT INTO Mission_Crew (mission_ID, astronaut_ID, role)
VALUES 
(1, 1, 'Commander'),
(1, 2, 'Lunar Module Pilot'), 
(2, 3, 'Commander'),
(6, 4, 'Commander'),
(6, 5, 'Pilot'),
(6, 6, 'Mission Specialist'),
(6, 7, 'Mission Specialist');
