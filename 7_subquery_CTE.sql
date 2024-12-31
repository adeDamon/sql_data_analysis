SELECT 
    company_id2,
    company_name AS name_company
FROM company_dim
WHERE company_id2 IN (
    SELECT
        company_id
    FROM 
        job_postings_fact
    WHERE
        job_no_degree_mention = true
)
SELECT
    job_postings_fact.company_id,
    company_name,
    COUNT(company_id) AS count_id
FROM job_postings_fact
LEFT JOIN company_dim ON job_postings_fact.company_id=company_dim.company_id2
GROUP BY 
    company_name,
    company_id
ORDER BY count_id DESC;
