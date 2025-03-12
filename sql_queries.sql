USE sports;

-- sporttypes - output for each sport -- sum/avg -> bar chart  // min&max?
SELECT * FROM sporttypes;

-- == total skill of all sporttypes
SELECT SPORT, 
       ROUND(SUM(Endurance + Strength + Power + Speed + Agility + Flexibility + Nerve + Durability + `Hand-eye coordination` + `Analytical Aptitude`), 2) AS total_skill
FROM sporttypes
GROUP BY SPORT 
ORDER BY total_skill DESC;

-- == skilloverview triathlon related - cycling, swimming, running -> distance
SELECT *
FROM sporttypes
WHERE SPORT LIKE "%distance%";

SELECT SPORT, Endurance, Strength, Power, Speed, Agility, Flexibility, Nerve, Durability, `Hand-eye coordination`, `Analytical Aptitude`
FROM sporttypes
WHERE SPORT LIKE "%distance%"
UNION ALL
SELECT 'Triathlon',
       MAX(Endurance),
       MAX(Strength),
       MAX(Power),
       MAX(Speed),
       MAX(Agility),
       MAX(Flexibility),
       MAX(Nerve),
       MAX(Durability),
       MAX(`Hand-eye coordination`),
       MAX(`Analytical Aptitude`)
FROM sporttypes
WHERE SPORT LIKE "%distance%";

SELECT SPORT, Endurance, Strength, Power, Speed, Agility, Flexibility, Nerve, Durability, `Hand-eye coordination`, `Analytical Aptitude`
FROM sporttypes
WHERE SPORT LIKE "%cycling%" OR SPORT LIKE "%swimming%" OR SPORT LIKE "Track and Field: Distance" OR SPORT LIKE "Track and Field: Middel Distance"
UNION ALL
SELECT 'Triathlon',
       MAX(Endurance),
       MAX(Strength),
       MAX(Power),
       MAX(Speed),
       MAX(Agility),
       MAX(Flexibility),
       MAX(Nerve),
       MAX(Durability),
       MAX(`Hand-eye coordination`),
       MAX(`Analytical Aptitude`)
FROM sporttypes
WHERE SPORT LIKE "%cycling%" OR SPORT LIKE "%swimming%" OR SPORT LIKE "Track and Field: Distance" OR SPORT LIKE "Track and Field: Middel Distance";

-- = Version 1 for Triathlon
SELECT SPORT, 
       ROUND(SUM(Endurance + Strength + Power + Speed + Agility + Flexibility + Nerve + Durability + `Hand-eye coordination` + `Analytical Aptitude`), 2) AS total_skill
FROM sporttypes
WHERE SPORT LIKE "%cycling%" OR SPORT LIKE "%swimming%" OR SPORT LIKE "Track and Field: Distance" OR SPORT LIKE "Track and Field: Middel Distance"
GROUP BY SPORT 
ORDER BY total_skill DESC;

-- = Version 2 for Triathlon
SELECT SPORT, 
       ROUND(SUM(Endurance + Strength + Power + Speed + Agility + Flexibility + Nerve + Durability + `Hand-eye coordination` + `Analytical Aptitude`), 2) AS total_skill
FROM sporttypes
WHERE SPORT LIKE "%distance%"
GROUP BY SPORT 
ORDER BY total_skill DESC;

-- skill table - output for each skill/sport? -- sum/avg -> bar chart  // min&max?
SELECT * FROM skills;

SELECT Skill, ROUND(SUM(Value), 2) AS total_value
FROM skills
GROUP BY Skill
ORDER BY total_value DESC;

#-- combine for triathlon-- done

-- from table supplements -- extracting data for swimming, running, cycling AND skill --> LIKE/WHERE
-- matching it with supplements for skills are needed in triathlon

SELECT * from supplements