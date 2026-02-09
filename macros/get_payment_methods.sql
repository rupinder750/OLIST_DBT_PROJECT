{% macro get_payment_methods() %}
    {{ return(['debit_card']) }}
{% endmacro %}