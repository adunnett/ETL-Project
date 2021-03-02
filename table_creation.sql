-- Drop the view if exists
DROP VIEW if exists planets_info;

-- Drop the tables if exists
-- Drop the table "planet_ratio_fact_sheet" first otherwise it will cause an error since the foreign key references to the primary key of table "planet_fact_sheet" if exists
DROP TABLE if exists planet_ratio_fact_sheet;
DROP TABLE if exists planet_fact_sheet;
 
-- Planet fact sheet table creation 
CREATE TABLE planet_fact_sheet (
	"Planet" VARCHAR Primary Key,  
  	"Mass per 1024kg" decimal (18,4) NOT NULL,
    "Diameter per km" INT NOT NULL,
    "Density per kg/m3" INT NOT NULL,
    "Gravity per m/s2" decimal(18,1) NOT NULL,
    "Escape Velocity per km/s" decimal (18,1) NOT NULL,
 	"Rotation Period per hours" decimal (18,1) NOT NULL,
    "Length of Day per hours" decimal(18,1) NOT NULL,
    "Distance from Sun per 106 km" decimal(18,1) NOT NULL,
    "Perihelion per 106 km" decimal(18,1) NOT NULL,
    "Aphelion per 106 km" decimal(18,1) NOT NULL,
    "Orbital Period per days" decimal(18,1) NOT NULL,
    "Orbital Velocity per km/s" decimal(18,1) NOT NULL,
    "Orbital Inclination per degrees" decimal(18,1) NOT NULL,
    "Orbital Eccentricity" decimal(18,3) NOT NULL,
    "Obliquity to Orbit per degrees" decimal(18,3) NOT NULL,
    "Mean Temperature per Celsius" INT NOT NULL,
    "Number of Moons" INT NOT NULL,
    "Ring System?" BOOLEAN NOT NULL
);

-- Planet ratio fact sheet table creation
CREATE TABLE planet_ratio_fact_sheet (
	"Planet" VARCHAR Primary Key,  
  	"Mass per 1024kg" decimal (18,4) NOT NULL,
    "Diameter per km" decimal (18,4) NOT NULL,
    "Density per kg/m3" decimal (18,3) NOT NULL,
    "Gravity per m/s2" decimal(18,3) NOT NULL,
    "Escape Velocity per km/s" decimal (18,3) NOT NULL,
 	"Rotation Period per hours" decimal (18,3) NOT NULL,
    "Length of Day per hours" decimal(18,3) NOT NULL,
    "Distance from Sun per 106 km" decimal(18,3) NOT NULL,
    "Perihelion per 106 km" decimal(18,3) NOT NULL,
    "Aphelion per 106 km" decimal(18,3) NOT NULL,
    "Orbital Period per days" decimal(18,3) NOT NULL,
    "Orbital Velocity per km/s" decimal(18,3) NOT NULL,
    "Orbital Eccentricity" decimal(18,3) NOT NULL,
    "Obliquity to Orbit per degrees" decimal(18,3) NOT NULL,
	FOREIGN KEY ("Planet") REFERENCES planet_fact_sheet("Planet")
);
					   
-- SELECT * FROM planet_fact_sheet
SELECT * FROM planet_ratio_fact_sheet
