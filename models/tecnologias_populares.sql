{{ config(materialized='view') }}

SELECT 
    language, 
    COUNT(respondent_id) as total 
FROM {{ source('stack_overflow_raw', 'silver_stack_overflow') }} 
GROUP BY 1 
ORDER BY 2 DESC