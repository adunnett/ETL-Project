-- performing a join and selecting/renaming the columns
-- create a view for the result of the join of 2 tables
CREATE VIEW planets_info AS 
SELECT planet_fact_sheet."Planet",
	planet_fact_sheet."Mass per 1024kg",
	planet_ratio_fact_sheet."Mass per 1024kg" AS "Mass vs Earth",
	planet_fact_sheet."Diameter per km",
	planet_ratio_fact_sheet."Diameter per km" AS "Diameter vs Earth",
	planet_fact_sheet."Density per kg/m3",
	planet_ratio_fact_sheet."Density per kg/m3" AS "Density vs Earth",
	planet_fact_sheet."Gravity per m/s2",
	planet_ratio_fact_sheet."Gravity per m/s2" AS "Gravity vs Earth",
	planet_fact_sheet."Escape Velocity per km/s",
	planet_ratio_fact_sheet."Escape Velocity per km/s" AS "Escape Velocity vs Earth",
	planet_fact_sheet."Rotation Period per hours",
	planet_ratio_fact_sheet."Rotation Period per hours" AS "Rotation Period vs Earth",
	planet_fact_sheet."Length of Day per hours",
	planet_ratio_fact_sheet."Length of Day per hours" AS "Length of Day vs Earth",
	planet_fact_sheet."Distance from Sun per 106 km",
	planet_ratio_fact_sheet."Distance from Sun per 106 km" AS "Distance From Sun vs Earth",
	planet_fact_sheet."Perihelion per 106 km",
	planet_ratio_fact_sheet."Perihelion per 106 km" AS "Perihelion vs Earth",
	planet_fact_sheet."Aphelion per 106 km",
	planet_ratio_fact_sheet."Aphelion per 106 km" AS "Aphelion vs Earth",
	planet_fact_sheet."Orbital Period per days",
	planet_ratio_fact_sheet."Orbital Period per days" AS "Orbital Period vs Earth",
	planet_fact_sheet."Orbital Velocity per km/s",
	planet_ratio_fact_sheet."Orbital Velocity per km/s" AS "Orbital Velocity vs Earth",
	planet_fact_sheet."Orbital Inclination per degrees",
	planet_fact_sheet."Orbital Eccentricity",
	planet_ratio_fact_sheet."Orbital Eccentricity" AS "Orbital Eccentricity vs Earth",
	planet_fact_sheet."Obliquity to Orbit per degrees",
	planet_ratio_fact_sheet."Obliquity to Orbit per degrees" AS "Obliquity to Orbit vs Earth",
	planet_fact_sheet."Mean Temperature per Celsius",
	planet_fact_sheet."Number of Moons",
	planet_fact_sheet."Ring System?"	
FROM planet_fact_sheet
INNER JOIN planet_ratio_fact_sheet ON
planet_fact_sheet."Planet" = planet_ratio_fact_sheet."Planet"
;

-- output the view created
select * from planets_info