-- setup the database
CREATE DATABASE us_immigration;
USE us_immigration;

-- create first table
DROP TABLE IF EXISTS visa;
CREATE TABLE visa (
    -- add an idex when new tables are added to the database (unnecessary now)
    status ENUM('CERTIFIED-WITHDRAWN', 'WITHDRAWN', 'CERTIFIED', 'DENIED',
		'REJECTED', 'INVALIDATED', 'PENDING REVIEW - UNASSIGNED', 'nan'),
	field VARCHAR(64),
    job VARCHAR(64),
    employer VARCHAR(70),
    full_time bool,
    wage INT,
    year YEAR,
    city VARCHAR(32),
    state VARCHAR(20)
);

-- test; view sample of data
SELECT COUNT(*) FROM visa;
-- LIMIT 10;

-- Most lucrative field, by population
SELECT SUM(wage) AS total_wage, COUNT(field) AS num_in_field, field
FROM visa
WHERE status = 'CERTIFIED-WITHDRAWN' OR status = 'CERTIFIED'
GROUP BY field
HAVING COUNT(field) > 2 -- filter out misc fields (usually mistypes)
ORDER BY num_in_field DESC;

-- Most lucrative field, by total wage
SELECT SUM(wage) AS total_wage, COUNT(field) AS num_in_field, field
FROM visa
WHERE status = 'CERTIFIED-WITHDRAWN' OR status = 'CERTIFIED'
GROUP BY field
HAVING COUNT(field) > 2 -- filter out misc fields (usually mistypes)
ORDER BY total_wage DESC;

-- Most lucrative state, by population
SELECT SUM(wage) AS total_wage, COUNT(state) AS num_in_state, state
FROM visa
WHERE status = 'CERTIFIED-WITHDRAWN' OR status = 'CERTIFIED'
GROUP BY state
ORDER BY num_in_state DESC;

-- Most lucrative state, by total wage
SELECT SUM(wage) AS total_wage, COUNT(state) AS num_in_state, state
FROM visa
GROUP BY state
ORDER BY total_wage DESC;

-- Visa petition growth YoY
SELECT COUNT(year) AS total_petitions, year
FROM visa
GROUP BY year;

-- Visa petitions by employment status
SELECT COUNT(full_time) as total_petitions, CASE 
	WHEN full_time = 1 
	THEN 'Y' ELSE 'N' 
END AS full_time
FROM visa
GROUP BY full_time;