view: ra {
  sql_table_name: public.ra ;;

  dimension: thisisareallylongdimensionname {
    type: number
    sql: ${TABLE}.murder ;;
    description: "This is a really really really long description on a really long dimension name"
  }

  dimension: thisisalsoareallylongdimensionname {
    #label: "AHHH"
    type: number
    sql: ${TABLE}.murder ;;
    description: "This is a really long description on a really long dimension name"
  }

  dimension: thisisalsoareallylongdimensionname2 {
    type: number
    sql: ${TABLE}.rape ;;
    description: "This is also a really long description on a really long dimension name"
    link: {
      label: "New Subscriber Dashboard"
      url: "/dashboards/11?Region={{ _filters['ra.murder'] | url_encode }}"
    }
  }

  filter: test3 {
    type:  string
  }
  parameter: test2 {
    type: date_time
    default_value: "today"
  }

  parameter: test {
    type:  string
    default_value: "one"
    suggest_explore: onetwothree
    suggest_dimension: onetwothree.one
  }

  dimension: thisisalsoareallylongdimensionname3 {
    type: string
    sql:  ${TABLE}.state ;;
    description: "This is also also a really long description on a really long dimension name"
  }


  dimension: thisisalsoareallylongdimensionname4 {
    type: yesno
    sql:  ${TABLE}.murder=10;;
    }

  dimension: thisisalsoareallylongdimensionname5 {
    type: number
    sql: ${TABLE}.urbanpop ;;
    description: "This is also also also a really long description on a really long dimension name"
  }

  dimension: fakecount {
    type:  number
    sql:  1 ;;
  }

  dimension: thisisalsoareallylongdimensionname6 {
    type:  string
    sql:  case when (${TABLE}.state='') then 'Cali2'
    when ${TABLE}.state='OR' then 'Oregon2'
    else 'NOT SPECIFIED2' end;;
    description: "This is also really also a really long description on a really long dimension name"
  }


  measure: thisisalsoareallylongmeasurename {
    type: count
    drill_fields: []
    description: "This is a really long description on a really long measure name"
  }
}
