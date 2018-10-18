view: killpdt {
  derived_table: {
    sql: select NOW(), pg_sleep(120) ;;
    sql_trigger_value: SELECT DATE_PART('hour', NOW()) ;;
  }
}
