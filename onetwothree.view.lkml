view: onetwothree {
  derived_table: {
    sql:SELECT
      '1' as one,
      12345678 as two;;
  }

  dimension: one {
    type: string
    sql:  ${TABLE}.one ;;
  }

  dimension: two {
    type: number
    label: "Trade Id"
    hidden:  no
    sql:  ${TABLE}.two ;;
  }

measure: count {
  type: count
}
}


explore: onetwothree {}
