{{ config(
  post_hook="
    {% if target.name != 'prod' %}
      UPDATE {{ this }}
      SET payment_type = 'Rupinder'
    {% endif %}
  "
) }}
SELECT
    order_id,
    payment_sequential,
    payment_type,
    payment_installments,
    payment_value
FROM {{ source('olist_raw', 'payments') }}