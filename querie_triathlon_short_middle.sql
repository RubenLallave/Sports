USE sports;

SELECT SPORT, 
       ROUND(SUM(Endurance + Strength + Power + Speed + Agility + Flexibility + Nerve + Durability + `Hand-eye coordination` + `Analytical Aptitude`), 2) AS total_skill
FROM sporttypes
WHERE SPORT LIKE "%cycling%" OR SPORT LIKE "%swimming%" OR SPORT LIKE "Track and Field: Distance" OR SPORT LIKE "Track and Field: Middel Distance"
GROUP BY SPORT 
ORDER BY total_skill DESC;

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

SELECT SPORT,
       Endurance,
       Strength,
       Power,
       Speed,
       Agility,
       Flexibility,
       Nerve,
       Durability,
       `Hand-eye coordination`,
       `Analytical Aptitude`,
       ROUND((Endurance + Strength + Power + Speed + Agility + Flexibility + Nerve + Durability + `Hand-eye coordination` + `Analytical Aptitude`), 2) AS total_skill
FROM sporttypes
WHERE SPORT LIKE "%cycling%" OR SPORT LIKE "%swimming%" OR SPORT LIKE "Track and Field: Distance" OR SPORT LIKE "Track and Field: Middle Distance"
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
       MAX(`Analytical Aptitude`),
       ROUND((MAX(Endurance) + MAX(Strength) + MAX(Power) + MAX(Speed) + MAX(Agility) + MAX(Flexibility) + MAX(Nerve) + MAX(Durability) + MAX(`Hand-eye coordination`) + MAX(`Analytical Aptitude`)), 2) AS total_skill
FROM sporttypes
WHERE SPORT LIKE "%cycling%" OR SPORT LIKE "%swimming%" OR SPORT LIKE "Track and Field: Distance" OR SPORT LIKE "Track and Field: Middle Distance";

