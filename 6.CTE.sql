WITH march_jobs AS (
    SELECT *
    FROM job_postings_fact
    WHERE EXTRACT(MONTH FROM job_posted_date) = 3 
    )
SELECT *
FROM march_jobs

SELECT *
 INTO february_jobs
FROM job_postings_fact
WHERE EXTRACT(MONTH FROM job_posted_date) = 2


SELECT *
FROM february_jobs