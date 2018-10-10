view: rapdt {

  derived_table: {
    sql:SELECT
           murder, assault
          FROM public.ra
          -- where {% condition filter %} ra.id2 {% endcondition %}
          order by murder;;
   persist_for: "8 minutes"

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
