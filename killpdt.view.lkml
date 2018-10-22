view: killpdt {
  derived_table: {
    sql: select * FROM (select *from (select * from (select * from ra ORDER BY assault, murder) a) ORDER BY murder, assault b) ORDER BY  as c
    ORDER BY ;;
    sql_trigger_value: SELECT DATE_PART('hour', NOW()) ;;
    indexes: ["assault", "murder"]
  }


dimension: assault {
  type: number
  sql: ${TABLE}.assault ;;
}
}
explore: killpdt {}
