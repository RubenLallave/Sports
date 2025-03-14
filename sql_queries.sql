USE sports;

-- sporttypes - output for each sport -- sum/avg -> bar chart  // min&max?
SELECT * FROM sporttypes;

-- == total skill of all sporttypes
SELECT SPORT, 
       ROUND(SUM(Endurance + Strength + Power + Speed + Agility + Flexibility + Nerve + Durability + `Hand-eye coordination` + `Analytical Aptitude`), 2) AS total_skill
FROM sporttypes
GROUP BY SPORT 
ORDER BY total_skill DESC
LIMIT 20;


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