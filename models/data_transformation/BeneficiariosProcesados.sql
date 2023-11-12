{{ config(materialized='table') }}

SELECT
  IF(TipoBeneficio = "ND", "NINGUNO", TipoBeneficio) AS TipoBeneficio,
  IF(Bancarizado = "ND", "NO", Bancarizado) AS Bancarizado,
  IF(Discapacidad = "ND", "NO", Discapacidad) AS Discapacidad,
  IF(Etnia = "ND", "NINGUNO", Etnia) AS Etnia,
  IF(NivelEscolaridad = "ND", "NINGUNO", NivelEscolaridad) AS NivelEscolaridad,
  IF(Genero = "ND", NULL, Genero) AS Genero,
  IF(TipoPoblacion = "ND", "NINGUNO", TipoPoblacion) AS TipoPoblacion,
  CantidadDeBeneficiarios,
  CASE
    WHEN RangoEdad = "00-05" THEN 2.5
    WHEN RangoEdad = "06-17" THEN 11.5
    WHEN RangoEdad = "18-29" THEN 23.5
    WHEN RangoEdad = "30-49" THEN 39.5
    WHEN RangoEdad = "50-65" THEN 57.5
    WHEN RangoEdad = ">65" THEN 70
  END AS RangoEdad
FROM {{ source("FamiliasEnAccion","BeneficiariosTitulares") }}
WHERE Genero IS NOT NULL