{{ config(materialized='table') }}

{{ date_spine("'2016-01-01'", "'2018-12-31'") }}