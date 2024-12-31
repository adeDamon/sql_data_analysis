SELECT
    skills_job_dim.skill_id,
    COUNT(skills_dim.skills) AS count_skills,
    skills_dim.skills
FROM job_postings_fact
LEFT JOIN skills_job_dim ON job_postings_fact.job_id=skills_job_dim.job_id2
LEFT JOIN skills_dim ON skills_job_dim.skill_id=skills_dim.skill_id2
WHERE 
    job_work_from_home = TRUE AND 
    job_title_short = 'Data Analyst'
GROUP BY 

    skills_job_dim.skill_id,
    skills_dim.skills
ORDER BY 
    count_skills DESC
LIMIT 5
;
ALTER TABLE skills_dim
RENAME COLUMN skill_id TO skill_id2;
