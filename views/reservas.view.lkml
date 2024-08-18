view: reservas {
  sql_table_name: utuapplooker.reservas ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }
  dimension: cantidad_dias {
    type: string
    sql: ${TABLE}.cantidad_dias ;;
  }
  dimension: ciudadeshoteles_ids {
    type: string
    sql: ${TABLE}.ciudadeshoteles_ids ;;
  }
  dimension: co2 {
    type: string
    sql: ${TABLE}.co2 ;;
  }
  dimension: codigo_referido {
    type: string
    sql: ${TABLE}.codigo_referido ;;
  }
  dimension: codigo_unico {
    type: string
    sql: ${TABLE}.codigo_unico ;;
  }
  dimension: correo_contacto {
    type: string
    sql: ${TABLE}.correo_contacto ;;
  }
  dimension: creado_por_id {
    type: string
    sql: ${TABLE}.creado_por_id ;;
  }
  dimension: created_at {
    type: string
    sql: ${TABLE}.created_at ;;
  }
  dimension: deleted_at {
    type: string
    sql: ${TABLE}.deleted_at ;;
  }
  dimension: disponibilidad_ids {
    type: string
    sql: ${TABLE}.disponibilidad_ids ;;
  }
  dimension: documentos {
    type: string
    sql: ${TABLE}.documentos ;;
  }
  dimension: empresa_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.empresa_id ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: fecha_contacto {
    type: string
    sql: ${TABLE}.fecha_contacto ;;
  }
  dimension: fecha_llegada {
    type: string
    sql: ${TABLE}.fecha_llegada ;;
  }
  dimension: fecha_partida {
    type: string
    sql: ${TABLE}.fecha_partida ;;
  }
  dimension: hoteles_ids {
    type: string
    sql: ${TABLE}.hoteles_ids ;;
  }
  dimension: nombre_contacto {
    type: string
    sql: ${TABLE}.nombre_contacto ;;
  }
  dimension: observacion {
    type: string
    sql: ${TABLE}.observacion ;;
  }
  dimension: pago_diferido {
    type: string
    sql: ${TABLE}.pago_diferido ;;
  }
  dimension: pasajero_ids {
    type: string
    # hidden: yes
    sql: ${TABLE}.pasajero_ids ;;
  }
  dimension: roombeast_code {
    type: string
    sql: ${TABLE}.roombeast_code ;;
  }
  dimension: selected_option_ids {
    type: string
    sql: ${TABLE}.selectedOption_ids ;;
  }
  dimension: telefono_contacto {
    type: string
    sql: ${TABLE}.telefono_contacto ;;
  }
  dimension: updated_at {
    type: string
    sql: ${TABLE}.updated_at ;;
  }
  measure: count {
    type: count
    drill_fields: [id, pasajeros.id, empresas.id, pasajeros.count, reserva_producto.count]
  }
}
