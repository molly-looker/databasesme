view: rapdt {

  derived_table: {
    sql:SELECT
           murder, assault
          FROM public.ra
          -- where {% condition filter %} ra.id2 {% endcondition %}
          order by murder;;
      sql_trigger_value: SELECT MINUTE(CURTIME()) ;;
  indexes: ["murder"]
    }



    dimension: filter {
      type: yesno
      sql:  ${TABLE}.murder=10;;
    }

  dimension: assault {
    type: number
    sql: ${TABLE}.assault ;;
  }


  }

explore: rapdt {}
