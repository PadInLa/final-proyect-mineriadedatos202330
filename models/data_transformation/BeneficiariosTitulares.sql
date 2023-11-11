{{ config(materialized='table') }}

SELECT * FROM {{ source("FamiliasEnAccion","Beneficiarios") }} as b
WHERE b.Titular LIKE "SI"
AND
b.TipoBeneficio IS NOT NULL AND
b.Bancarizado IS NOT NULL AND
b.Discapacidad IS NOT NULL AND
b.Etnia IS NOT NULL AND
b.Genero IS NOT NULL AND
b.NivelEscolaridad IS NOT NULL AND
b.TipoPoblacion IS NOT NULL AND
b.RangoBeneficioConsolidadoAsignado IS NOT NULL AND
b.RangoEdad IS NOT NULL