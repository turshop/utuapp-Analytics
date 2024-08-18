view: recursos {
  sql_table_name: utuapplooker.recursos ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }
  dimension: asientos_vehiculo {
    type: string
    sql: ${TABLE}.asientos_vehiculo ;;
  }
  dimension: color_vehiculo {
    type: string
    sql: ${TABLE}.color_vehiculo ;;
  }
  dimension: creado_por_id {
    type: string
    sql: ${TABLE}.creado_por_id ;;
  }
  dimension: created_at {
    type: string
    sql: ${TABLE}.created_at ;;
  }
  dimension: empresa_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.empresa_id ;;
  }
  dimension: es_guia {
    type: string
    sql: ${TABLE}.es_guia ;;
  }
  dimension: marca_vehiculo {
    type: string
    sql: ${TABLE}.marca_vehiculo ;;
  }
  dimension: modelo_vehiculo {
    type: string
    sql: ${TABLE}.modelo_vehiculo ;;
  }
  dimension: patente_vehiculo {
    type: string
    sql: ${TABLE}.patente_vehiculo ;;
  }
  dimension: tipo_combustible {
    type: string
    sql: ${TABLE}.tipo_combustible ;;
  }
  dimension: updated_at {
    type: string
    sql: ${TABLE}.updated_at ;;
  }
  measure: count {
    type: count
    drill_fields: [id, empresas.id]
  }
}
