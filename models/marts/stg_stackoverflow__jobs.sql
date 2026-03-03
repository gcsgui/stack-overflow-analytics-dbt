{{ config(materialized='view') }}

select 
    1 as id,
    'Python' as language, -- Exemplo para não vir vazio
    'Remote' as work_style,
    1000 as respondent_id,
    90000 as salary_usd