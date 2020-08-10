SELECT * FROM objects WHERE object_id = 'p:6536';

SELECT * FROM offices

SELECT * FROM relationships

SELECT	obj.object_id,
		ofc.address1,
		ofc.address2,
		ofc.city,
		ofc.zip_code,
		ofc.state_code,
		ofc.country_code,
		ofc.latitude,
		ofc.longitude
INTO locations
FROM offices as ofc
INNER JOIN objects as obj
	ON (obj.object_id = ofc.object_id)
	WHERE ofc.country_code = 'USA';
	
SELECT * FROM people

SELECT 	ppl.object_id,
		ppl.first_name,
		ppl.last_name,
		deg.degree_type,
		deg.subject,
		deg.institution,
		deg.graduated_at
INTO ppldeg
FROM degrees as deg
INNER JOIN people as ppl
	ON (deg.object_id = ppl.object_id)
	WHERE deg.degree_type is not NULL;