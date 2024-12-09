{{ config(materialized='table', schema='intermediate') }}
SELECT
   staff_id,
   first_name,
   last_name,
   address_id,
   email,
   store_id,
   active,
   username,
   password,
   picture
FROM {{ ref('raw_staff') }}