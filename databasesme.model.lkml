 connection: "mollysdb"

# include all the views
include: "*.view"

# include all the dashboards
#include: "*.dashboard"

datagroup: databasesme_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: databasesme_default_datagroup

explore: ra {
  join: rapdt {
    type:  inner
    sql_on:  ${ra.assault}=${rapdt.assault};;
    relationship: one_to_one
  }
}
