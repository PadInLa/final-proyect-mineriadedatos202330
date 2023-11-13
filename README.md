# Final Proyect

## Documentation

For this project, a predictive model is built to forecast the TipoBeneficio that a new user may receive. This model uses the transformed fields as features. The model is trained on historical data, learning patterns from the various attributes like banking status, disability, ethnicity, education level, gender, population type, number of beneficiaries, and the calculated age range.
Once trained, the model can be used to predict the type of benefit an individual might receive based on their input data, which would be valuable for streamlining the benefit allocation process.

The main objective is to automate and personalize the benefit allocation process for the "Familias En Acción" program, ensuring that individuals receive benefits that are most suitable for them. By implementing this model, the program can operate more efficiently, reduce errors associated with manual data handling, and provide quicker responses to beneficiaries.
It would also enable the program to better understand the demographics and needs of the population it serves, potentially uncovering insights that could inform policy decisions and resource distribution.

The queries used were:

- BeneficiariosTitulares.sql:

  - This query filters out records from the "Beneficiarios" table to include only those where the individual is a primary beneficiary (Titular LIKE "SI"), and all the specified fields are not null, indicating that only complete records are considered for the model.

- BeneficiariosProcesados.sql:
  - This query is used to clean the data by replacing 'ND' entries with more descriptive placeholders such as 'NINGUNO' for 'No benefit' or 'NO' for not being banked (Bancarizado).
  - Certain categorical fields like TipoBeneficio, Bancarizado, Discapacidad, Etnia, NivelEscolaridad, and TipoPoblacion are transformed to ensure that all entries have valid data instead of 'ND'.
  - The RangoEdad field, which represents age ranges, is converted into a numerical representation by assigning a midpoint value to each range (e.g., '00-05' becomes 2.5).

## Dashboard Link

https://lookerstudio.google.com/s/mocsgfkG8dQ

## Colab Notebook

https://colab.research.google.com/drive/1nKdMR7PFlaZO1Z_37bhcAJtgNFIIKFDG?usp=sharing

## API Repo

https://github.com/PadInLa/api-final-proyect-mineria202330

## API link

https://api-pf-mineriadedatos2023.onrender.com/graphql

## How to run:

Try running the following commands:

- dbt run

### Resources:

- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [dbt community](https://getdbt.com/community) to learn from other analytics engineers
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices
