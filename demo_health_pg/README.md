Welcome to your new dbt project!

### Using the starter project

Try running the following commands:
- dbt run
- dbt test


### Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](https://community.getdbt.com/) on Slack for live discussions and support
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices





marts/core/dim_patients.sql — one row per patient, with demographic attributes plus rollups like first appointment date, last encounter date, total claims, and total payments.

marts/core/dim_providers.sql — one row per provider, enriched with department and specialty context.

marts/operations/fct_appointments.sql — one row per appointment, enriched with patient, provider, department, status, and useful flags like no-show or cancellation.

marts/finance/fct_claims.sql — one row per claim, enriched with encounter, patient, provider, payer, and claim/payment metrics.

marts/finance/fct_payments.sql — one row per payment, useful for collections and payment-lag analysis.

marts/operations/fct_department_daily.sql — one row per day per department, for dashboard-style aggregation. date_spine-style models are common when you want a complete calendar backbone for daily reporting