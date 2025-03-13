-- We import a transposed table from skills dataset and get the min, max, sum and avg values from every sport we want to study.
USE sports;
SELECT 
    'Cycling: Distance' AS `index`,
    MIN(`Cycling: Distance`) AS `MIN values`,
    (SELECT `index` FROM transp_skills ORDER BY `Cycling: Distance` ASC LIMIT 1) AS `Skill with MIN`,
    MAX(`Cycling: Distance`) AS `MAX values`,
    (SELECT `index` FROM transp_skills ORDER BY `Cycling: Distance` DESC LIMIT 1) AS `Skill with MAX`,
    ROUND(SUM(`Cycling: Distance`), 2) AS `SUM values`,
    ROUND(AVG(`Cycling: Distance`), 2) AS `AVG values`
FROM transp_skills

UNION ALL

SELECT 
    'Cycling: Sprints',
    MIN(`Cycling: Sprints`),
    (SELECT `index` FROM transp_skills ORDER BY `Cycling: Sprints` ASC LIMIT 1) AS `Skill with MIN`,
    MAX(`Cycling: Sprints`),
    (SELECT `index` FROM transp_skills ORDER BY `Cycling: Sprints` DESC LIMIT 1) AS `Skill with MAX`,
    ROUND(SUM(`Cycling: Sprints`), 2),
    ROUND(AVG(`Cycling: Sprints`), 2)
FROM transp_skills

UNION ALL

SELECT 
    'Swimming (all strokes): Distance',
    MIN(`Swimming (all strokes): Distance`),
    (SELECT `index` FROM transp_skills ORDER BY `Swimming (all strokes): Distance` ASC LIMIT 1) AS `Skill with MIN`,
    MAX(`Swimming (all strokes): Distance`),
    (SELECT `index` FROM transp_skills ORDER BY `Swimming (all strokes): Distance` DESC LIMIT 1) AS `Skill with MAX`,
    ROUND(SUM(`Swimming (all strokes): Distance`), 2),
    ROUND(AVG(`Swimming (all strokes): Distance`), 2)
FROM transp_skills

UNION ALL

SELECT 
    'Track and Field: Sprints',
    MIN(`Track and Field: Sprints`),
    (SELECT `index` FROM transp_skills ORDER BY `Track and Field: Sprints` ASC LIMIT 1) AS `Skill with MIN`,
    MAX(`Track and Field: Sprints`),
    (SELECT `index` FROM transp_skills ORDER BY `Track and Field: Sprints` DESC LIMIT 1) AS `Skill with MAX`,
    ROUND(SUM(`Track and Field: Sprints`), 2),
    ROUND(AVG(`Track and Field: Sprints`), 2)
FROM transp_skills

UNION ALL

SELECT 
    'Track and Field: Distance',
    MIN(`Track and Field: Distance`),
    (SELECT `index` FROM transp_skills ORDER BY `Track and Field: Distance` ASC LIMIT 1) AS `Skill with MIN`,
    MAX(`Track and Field: Distance`),
    (SELECT `index` FROM transp_skills ORDER BY `Track and Field: Distance` DESC LIMIT 1) AS `Skill with MAX`,
    ROUND(SUM(`Track and Field: Distance`), 2),
    ROUND(AVG(`Track and Field: Distance`), 2)
FROM transp_skills

UNION ALL

SELECT 
    'Track and Field: Middle Distance',
    MIN(`Track and Field: Middle Distance`),
    (SELECT `index` FROM transp_skills ORDER BY `Track and Field: Middle Distance` ASC LIMIT 1) AS `Skill with MIN`,
    MAX(`Track and Field: Middle Distance`),
    (SELECT `index` FROM transp_skills ORDER BY `Track and Field: Middle Distance` DESC LIMIT 1) AS `Skill with MAX`,
    ROUND(SUM(`Track and Field: Middle Distance`), 2),
    ROUND(AVG(`Track and Field: Middle Distance`), 2)
FROM transp_skills;

