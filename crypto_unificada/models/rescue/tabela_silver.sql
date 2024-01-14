{{ config(schema='silver', alias='dados_eja') }}

select
  TOTAL_REGISTOS,
  ESCOLA,
  share.dados_share.encrypt(cast(INEP as string)) as INEP,   -- criptografa a coluna INEP
  ANO,
  VALOR_DESTINADO,
  'ativo' as STATUS             -- adiciona a coluna Status
from
  {{ ref('tabela_bronze') }}