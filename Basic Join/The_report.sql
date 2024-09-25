SELECT  
    CASE
        WHEN g.grade > 7 THEN s.name
        ELSE NULL
    END AS names,
    g.grade,
    s.marks
FROM 
    students s
    JOIN grades g 
    ON s.marks BETWEEN g.min_mark and g.max_mark
ORDER BY 
    g.grade DESC,
    names ASC,
    s.marks ASC;