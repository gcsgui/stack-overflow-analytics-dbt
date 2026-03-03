{{ config(materialized='view') }}

-- Aqui você usa o NOVO nome do arquivo de staging
select * from {{ ref('stg_stackoverflow__jobs') }} 
where id = 1