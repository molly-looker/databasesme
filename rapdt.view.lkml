view: rapdt {

  derived_table: {
    sql:SELECT
           murder, assault
          FROM public.ra
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
