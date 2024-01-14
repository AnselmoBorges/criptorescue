{{ config(schema='bronze', alias='dados_eja') }}

select * from cat_bq_rescue.bq_databricks.dados_eja;