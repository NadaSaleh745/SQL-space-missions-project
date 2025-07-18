# CREATE DATABASE spaceMissions;
# USE spaceMissions;

CREATE TABLE Agencies (agency_ID INT PRIMARY KEY AUTO_INCREMENT, 
							agency_name VARCHAR(255) NOT NULL,
                            country VARCHAR(100),
                            founded_year YEAR);
                            
CREATE TABLE Spacecrafts (
    spacecraft_ID INT PRIMARY KEY AUTO_INCREMENT,
    spacecraft_name VARCHAR(255) NOT NULL,
    manufacturer VARCHAR(255),
    spacecraft_type VARCHAR(100),
    agency_ID INT,
    FOREIGN KEY (agency_ID) REFERENCES Agencies(agency_ID)
);

CREATE TABLE Destinations (
    destination_ID INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    type VARCHAR(100)
);

CREATE TABLE Missions (mission_ID INT PRIMARY KEY AUTO_INCREMENT, 
							mission_name VARCHAR(200) NOT NULL,
							launch_date DATE, 
                            spacecraft_ID INT, 
                            agency_ID INT, 
                            destination_ID INT,
							mission_status VARCHAR(50), 
							FOREIGN KEY (spacecraft_ID) REFERENCES Spacecrafts(spacecraft_ID),
							FOREIGN KEY (agency_ID) REFERENCES Agencies(agency_ID),
							FOREIGN KEY (destination_ID) REFERENCES Destinations(destination_ID));
                            
CREATE TABLE Astronauts (astronaut_ID INT PRIMARY KEY AUTO_INCREMENT,
							astronaut_name VARCHAR(255) NOT NULL,
							date_of_birth DATE, 
                            nationality VARCHAR(100), 
                            agency_ID INT,
							FOREIGN KEY (agency_ID) REFERENCES Agencies(agency_ID));
						
CREATE TABLE Mission_Crew (
    mission_ID INT,
    astronaut_ID INT,
    role VARCHAR(100),
    PRIMARY KEY (mission_ID, astronaut_ID),
    FOREIGN KEY (mission_ID) REFERENCES Missions(mission_ID),
    FOREIGN KEY (astronaut_ID) REFERENCES Astronauts(astronaut_ID)
);
