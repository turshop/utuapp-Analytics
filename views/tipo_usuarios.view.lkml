view: tipo_usuarios {
  sql_table_name: utuapplooker.tipo_usuarios ;;
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
  dimension: nombre {
    type: string
    sql: ${TABLE}.nombre ;;
  }
  dimension: updated_at {
    type: string
    sql: ${TABLE}.updated_at ;;
  }
  measure: count {
    type: count
    drill_fields: [id, usuarios.count]
  }
}
