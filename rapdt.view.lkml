view: rapdt {

  derived_table: {
    sql:SELECT
           murder, assault
          FROM public.ra


          UNION

          SELECT 2 as murder,4 as assault
          FROM public.ra;;
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
