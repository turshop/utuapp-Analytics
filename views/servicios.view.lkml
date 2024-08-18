view: servicios {
  sql_table_name: utuapplooker.servicios ;;
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
  dimension: destino {
    type: string
    sql: ${TABLE}.destino ;;
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
  dimension: idiomas {
    type: string
    sql: ${TABLE}.idiomas ;;
  }
  dimension: kilometraje {
    type: string
    sql: ${TABLE}.kilometraje ;;
  }
  dimension: nombre {
    type: string
    sql: ${TABLE}.nombre ;;
  }
  dimension: otros_operadores {
    type: string
    sql: ${TABLE}.otros_operadores ;;
  }
  dimension: producto_ids {
    type: string
    # hidden: yes
    sql: ${TABLE}.producto_ids ;;
  }
  dimension: seguridad {
    type: string
    sql: ${TABLE}.seguridad ;;
  }
  dimension: servicios_adicionales {
    type: string
    sql: ${TABLE}.servicios_adicionales ;;
  }
  dimension: tiempo_duracion {
    type: string
    sql: ${TABLE}.tiempo_duracion ;;
  }
  dimension: updated_at {
    type: string
    sql: ${TABLE}.updated_at ;;
  }
  dimension: valor_servicio_proveedor {
    type: string
    sql: ${TABLE}.valor_servicio_proveedor ;;
  }
  measure: count {
    type: count
    drill_fields: [id, empresas.id, productos.id, idiomas.count, productos.count]
  }
}
