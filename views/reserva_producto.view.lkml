view: reserva_producto {
  sql_table_name: utuapplooker.reserva_producto ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }
  dimension: abierto {
    type: string
    sql: ${TABLE}.abierto ;;
  }
  dimension: created_at {
    type: string
    sql: ${TABLE}.created_at ;;
  }
  dimension: estado_id {
    type: string
    sql: ${TABLE}.estado_id ;;
  }
  dimension: producto_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.producto_id ;;
  }
  dimension: reserva_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.reserva_id ;;
  }
  dimension: updated_at {
    type: string
    sql: ${TABLE}.updated_at ;;
  }
  measure: count {
    type: count
    drill_fields: [id, reservas.id, productos.id]
  }
}
