view: password_resets {
  sql_table_name: utuapplooker.password_resets ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }
  dimension: created_at {
    type: string
    sql: ${TABLE}.created_at ;;
  }
  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }
  dimension: token {
    type: string
    sql: ${TABLE}.token ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
