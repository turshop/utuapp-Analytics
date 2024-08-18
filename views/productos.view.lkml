view: productos {
  sql_table_name: utuapplooker.productos ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }
  dimension: consideraciones_salud {
    type: string
    sql: ${TABLE}.consideraciones_salud ;;
  }
  dimension: creado_por_id {
    type: string
    sql: ${TABLE}.creado_por_id ;;
  }
  dimension: created_at {
    type: string
    sql: ${TABLE}.created_at ;;
  }
  dimension: dificultad_id {
    type: string
    sql: ${TABLE}.dificultad_id ;;
  }
  dimension: empresa_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.empresa_id ;;
  }
  dimension: importe {
    type: string
    sql: ${TABLE}.importe ;;
  }
  dimension: nombre {
    type: string
    sql: ${TABLE}.nombre ;;
  }
  dimension: servicio_ids {
    type: string
    # hidden: yes
    sql: ${TABLE}.servicio_ids ;;
  }
  dimension: updated_at {
    type: string
    sql: ${TABLE}.updated_at ;;
  }
  measure: count {
    type: count
    drill_fields: [id, empresas.id, servicios.id, reserva_producto.count, servicios.count]
  }
}
