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
    city VARCHAR(24),
    state VARCHAR(20)
);

-- test; view sample of data
SELECT * FROM visa
LIMIT 10;

-- Most lucrative field, by population
SELECT SUM(wage), COUNT(field) AS num_in_field, field
FROM visa
GROUP BY field
HAVING COUNT(field) > 2 -- filter out misc fields (usually mistypes)
ORDER BY num_in_field DESC;

-- Most lucrative field, by total wage
SELECT SUM(wage) AS total_wage, COUNT(field) AS num_in_field, field
FROM visa
GROUP BY field
HAVING COUNT(field) > 2 -- filter out misc fields (usually mistypes)
ORDER BY total_wage DESC;

-- Most lucrative state, by population
SELECT SUM(wage) AS total_wage, COUNT(state) AS num_in_state, state
FROM visa
GROUP BY state
ORDER BY num_in_state DESC;

-- Most lucrative state, by total wage
SELECT SUM(wage) AS total_wage, COUNT(state) AS num_in_state, state
FROM visa
GROUP BY state
ORDER BY total_wage DESC;



-- IN
SELECT id, name
FROM departments
WHERE id IN (
  SELECT department_id
  FROM sales
  WHERE price > 98
);

-- EXISTS https://www.codewars.com/kata/58113a64e10b53ec36000293

-- CASE https://www.codewars.com/kata/593ef0e98b90525e090000b9/sql

-- POSITION https://www.codewars.com/kata/59401e0e54a655a298000040

-- JOIN and RANK https://www.codewars.com/kata/58094559c47d323ebd000035

-- UNION ALL https://www.codewars.com/kata/58112f8004adbbdb500004fe

-- HAVING https://www.codewars.com/kata/58164ddf890632ce00000220/solutions/sql
