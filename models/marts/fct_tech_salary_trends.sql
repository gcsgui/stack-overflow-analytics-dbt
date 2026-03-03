{{ config(materialized='view') }}

with raw_data as (
    -- Você pode puxar do intermediate ou direto do source
    select * from {{ source('stack_overflow_raw', 'silver_stack_overflow') }}
),

final_metrics as (
    select
        language,
        work_style,
        count(respondent_id) as total_respondents,
        round(avg(salary_usd), 2) as avg_yearly_salary_usd
    from raw_data
    group by 1, 2
)

select * from final_metrics