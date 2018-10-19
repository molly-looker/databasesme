view: pdtsme {

  derived_table: {
    sql:SELECT
           murder, assault
          FROM public.ra
          order by murder;;
    sql_trigger_value: SELECT DATE_PART('hour', NOW()) ;;

    indexes: ["murder"]
  }



  dimension: filter {
    type: yesno
    sql:  ${TABLE}.murder=10;;
  }

  dimension: assault {
    label: "AHHHH"
    type: number
    sql: ${TABLE}.assault ;;
  }


}

explore: pdtsme {}
