view: pasajeros {
  sql_table_name: utuapplooker.pasajeros ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }
  dimension: apellidos {
    type: string
    sql: ${TABLE}.apellidos ;;
  }
  dimension: comentarios {
    type: string
    sql: ${TABLE}.comentarios ;;
  }
  dimension: consideraciones_salud {
    type: string
    sql: ${TABLE}.consideraciones_salud ;;
  }
  dimension: correo {
    type: string
    sql: ${TABLE}.correo ;;
  }
  dimension: creado_por_id {
    type: string
    sql: ${TABLE}.creado_por_id ;;
  }
  dimension: created_at {
    type: string
    sql: ${TABLE}.created_at ;;
  }
  dimension: discapacidad {
    type: string
    sql: ${TABLE}.discapacidad ;;
  }
  dimension: documento_identificacion {
    type: string
    sql: ${TABLE}.documento_identificacion ;;
  }
  dimension: empresa_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.empresa_id ;;
  }
  dimension: fecha_nacimiento {
    type: string
    sql: ${TABLE}.fecha_nacimiento ;;
  }
  dimension: hospedaje {
    type: string
    sql: ${TABLE}.hospedaje ;;
  }
  dimension: nacionalidad {
    type: string
    sql: ${TABLE}.nacionalidad ;;
  }
  dimension: nombre {
    type: string
    sql: ${TABLE}.nombre ;;
  }
  dimension: pais_id {
    type: string
    sql: ${TABLE}.pais_id ;;
  }
  dimension: preferencias {
    type: string
    sql: ${TABLE}.preferencias ;;
  }
  dimension: reserva_ids {
    type: string
    # hidden: yes
    sql: ${TABLE}.reserva_ids ;;
  }
  dimension: telefono {
    type: string
    sql: ${TABLE}.telefono ;;
  }
  dimension: updated_at {
    type: string
    sql: ${TABLE}.updated_at ;;
  }
  measure: count {
    type: count
    drill_fields: [id, empresas.id, reservas.id, acompanantes.count, reservas.count]
  }
}
