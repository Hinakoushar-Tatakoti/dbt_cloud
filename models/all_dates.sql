{% macro set_date(start_date="to_date('01/01/2016', 'mm/dd/yyyy')", end_date="dateadd(week, 1, current_date)") -%}
  {{ return(adapter.dispatch('macro', 'dbt_utils.dateadd')(start_date, end_date)) }}
{%- endmacro %}