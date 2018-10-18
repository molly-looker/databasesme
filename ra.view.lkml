view: ra {
  sql_table_name: public.ra ;;

  dimension: assault {
    type: number
    sql: ${TABLE}.assault ;;
  }

  dimension: murder {
    #label: "AHHH"
    type: number
    sql: ${TABLE}.murder ;;
  }

  dimension: rape {
    type: number
    sql: ${TABLE}.rape ;;
    link: {
      label: "New Subscriber Dashboard"
      url: "/dashboards/11?Region={{ _filters['ra.murder'] | url_encode }}"
    }
  }

  dimension: state {
    type: string
    sql:  ${TABLE}.state ;;
  }


  dimension: id2 {
    type: yesno
    sql:  ${TABLE}.murder=10;;
    }

  dimension: urbanpop {
    type: number
    sql: ${TABLE}.urbanpop ;;
  }

  dimension: fakecount {
    type:  number
    sql:  '1/0' ;;
  }

  dimension: case {
    type:  string
    sql:  case when (${TABLE}.state='') then 'Cali2'
    when ${TABLE}.state='OR' then 'Oregon2'
    else 'NOT SPECIFIED2' end;;
  }


  measure: count {
    type: count
    drill_fields: []
  }
}
