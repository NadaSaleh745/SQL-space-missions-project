# SQL-space-missions-project
This project is a relational SQL database simulating space exploration data, including space agencies, missions, astronauts, spacecrafts, and destinations. It showcases SQL proficiency through real-world inspired examples and queries.

---

## Table of Contents
- [Directory Structure](#directory-structure)
- [Features](#features)
- [Tech Used](#tech-used)
- [Example Queries](#example-queries)

---

## Directory Structure 

space-missions-database/
```
│
├── db&tables.sql         # Create database & tables
├── data.sql              # Insert agencies, spacecrafts, astronauts, missions, etc.
├── queries.sql           # SQL queries: select, update, analysis
└── README.md             # Project overview & usage instructions
```
--- 
## Features

- Relational database design with normalization
- Use of foreign keys and constraints
- Advanced queries: JOINs, CASE, aggregation
- Real-world inspired data (NASA, SpaceX, JAXA, etc.)
- Dynamic insights like astronaut age at launch, uncrewed missions, etc.
---
## Tech Used

- MySQL 
- SQL (DDL, DML, DCL, DQL)
---
## Example Queries

### Astronauts and Roles in Apollo 11
```sql
SELECT 
    m.mission_name, 
    a.astronaut_name,
    mc.role
FROM Missions AS m
JOIN Mission_Crew AS mc ON m.mission_ID = mc.mission_ID
JOIN Astronauts AS a ON mc.astronaut_ID = a.astronaut_ID
WHERE m.mission_name = 'Apollo 11';
```

### Astronaut Age at Launch and Role
```sql
SELECT
    a.astronaut_name,
    mission_name,
    DATEDIFF(m.launch_date, a.date_of_birth) / 365 AS Age_at_launch,
    mc.role
FROM Astronauts AS a
LEFT JOIN Mission_Crew AS mc ON a.astronaut_ID = mc.astronaut_ID
LEFT JOIN Missions AS m ON mc.mission_ID = m.mission_ID;
