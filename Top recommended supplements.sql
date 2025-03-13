USE sports;

SELECT * FROM supplements;


-- from table supplements -- extracting data for swimming, running, cycling AND skill --> LIKE/WHERE
SELECT supplement, evidence_level_score, `Claimed improved aspect of fitness`, `fitness category`, `sport or exercise type tested`, popularity
FROM supplements
WHERE (`sport or exercise type tested` LIKE "%running%" 
       OR `sport or exercise type tested` LIKE "%cycling%" 
       OR `sport or exercise type tested` LIKE "%swimming%")
       AND evidence_level_score > 3
ORDER BY evidence_level_score DESC, popularity DESC;

-- matching it with supplements for skills are needed in triathlon
SELECT supplement, evidence_level_score, `Claimed improved aspect of fitness`, `fitness category`, `sport or exercise type tested`, popularity
FROM supplements
WHERE (`fitness category` LIKE "%endurance%" 
       OR `fitness category` LIKE "%power%"
       OR `fitness category` LIKE "%speed%"
       OR `fitness category` LIKE "%stregth%")
       AND evidence_level_score > 3
ORDER BY evidence_level_score DESC, popularity DESC;

-- Unifying both filters to get a more precise result
SELECT supplement, evidence_level_score, `Claimed improved aspect of fitness`, `fitness category`, `sport or exercise type tested`, popularity
FROM supplements
WHERE (`sport or exercise type tested` LIKE "%running%" 
       OR `sport or exercise type tested` LIKE "%cycling%" 
       OR `sport or exercise type tested` LIKE "%swimming%")
  AND (`fitness category` LIKE "%endurance%" 
       OR `fitness category` LIKE "%power%"
       OR `fitness category` LIKE "%speed%"
       OR `fitness category` LIKE "%stregth%")
 AND evidence_level_score > 3
ORDER BY evidence_level_score DESC, popularity DESC;