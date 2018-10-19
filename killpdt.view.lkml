view: killpdt {
  derived_table: {
    sql: select * FROM (select *from (select * from (select * from ra))) a ;;
    sql_trigger_value: SELECT DATE_PART('hour', NOW()) ;;
  }
}
