view: ra {
  sql_table_name: public.ra ;;

  dimension: assault {
    type: number
    sql: ${TABLE}.assault ;;
  }

  dimension: murder {
    type: number
    sql: ${TABLE}.murder ;;
  }

  dimension: rape {
    type: number
    sql: ${TABLE}.rape ;;
  }

  dimension: state {
    type: string
    sql: select ${TABLE}.state where ${TABLE}.state="California";;
  }

  dimension: urbanpop {
    type: number
    sql: ${TABLE}.urbanpop ;;
  }

  dimension: fakecount {
    type:  number
    sql:  '1/0' ;;
  }


  measure: count {
    type: count
    drill_fields: []
  }
}
