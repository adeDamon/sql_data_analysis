SELECT
 --   job_title_short,
    --job_location,
    COUNT(job_id),
    CASE
        WHEN job_location='Anywhere' THEN 'Remote'
        WHEN job_location='Abuja, Nigeria' THEN 'Locale'
        ELSE 'Onsite'
    END AS location_category
FROM
    job_postings_fact
WHERE 
    job_title_short='Data Analyst'
GROUP BY
    location_category
LIMIT 20;