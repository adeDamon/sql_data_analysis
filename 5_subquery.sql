SELECT *
FROM (
    SELECT *
    FROM job_postings_fact
    WHERE 
        EXTRACT(MONTH FROM job_posted_date) = 2 AND
        job_work_from_home = TRUE
) AS february_job;