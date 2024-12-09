-- Who is the actor who plays the most roles in films ?

{{ config(materialized='table', schema='mart') }}

with CountRolesActor as
(
SELECT 
   a.actor_id,
    COUNT(fa.film_id) AS total_roles
FROM {{ ref('dim_actor') }} a
JOIN {{ ref('dim_film_actor') }} fa ON a.actor_id = fa.actor_id
GROUP BY a.actor_id
ORDER BY  total_roles DESC
LIMIT 1 
)
SELECT
    a.first_name,
    a.last_name,
    ca.total_roles
FROM CountRolesActor as ca
JOIN {{ ref('dim_actor') }} a ON ca.actor_id = a.actor_id