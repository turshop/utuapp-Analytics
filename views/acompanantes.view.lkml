view: acompanantes {
  sql_table_name: utuapplooker.acompanantes ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }
  dimension: creado_por_id {
    type: string
    sql: ${TABLE}.creado_por_id ;;
  }
  dimension: created_at {
    type: string
    sql: ${TABLE}.created_at ;;
  }
  dimension: pasajero_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.pasajero_id ;;
  }
  dimension: updated_at {
    type: string
    sql: ${TABLE}.updated_at ;;
  }
  measure: count {
    type: count
    drill_fields: [id, pasajeros.id]
  }
}
