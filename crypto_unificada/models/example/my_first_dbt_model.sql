
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(materialized='table') }}

with dados_eja as (

    select 1 as id
    union all
    select null as id

)

select *
from dados_eja

/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null

rm e