view: migrations {
  sql_table_name: utuapplooker.migrations ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }
  dimension: batch {
    type: string
    sql: ${TABLE}.batch ;;
  }
  dimension: migration {
    type: string
    sql: ${TABLE}.migration ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
