view: usuarios {
  sql_table_name: utuapplooker.usuarios ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }
  dimension: apellido {
    type: string
    sql: ${TABLE}.apellido ;;
  }
  dimension: apikey {
    type: string
    sql: ${TABLE}.apikey ;;
  }
  dimension: ciudad_sucursal {
    type: string
    sql: ${TABLE}.ciudad_sucursal ;;
  }
  dimension: clave {
    type: string
    sql: ${TABLE}.clave ;;
  }
  dimension: codigo_referido {
    type: string
    sql: ${TABLE}.codigo_referido ;;
  }
  dimension: comuna_sucursal {
    type: string
    sql: ${TABLE}.comuna_sucursal ;;
  }
  dimension: correo {
    type: string
    sql: ${TABLE}.correo ;;
  }
  dimension: created_at {
    type: string
    sql: ${TABLE}.created_at ;;
  }
  dimension: direccion_sucursal {
    type: string
    sql: ${TABLE}.direccion_sucursal ;;
  }
  dimension: empresa_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.empresa_id ;;
  }
  dimension: es_interno {
    type: string
    sql: ${TABLE}.es_interno ;;
  }
  dimension: nombre {
    type: string
    sql: ${TABLE}.nombre ;;
  }
  dimension: punto_de_venta {
    type: string
    sql: ${TABLE}.punto_de_venta ;;
  }
  dimension: remember_token {
    type: string
    sql: ${TABLE}.remember_token ;;
  }
  dimension: rut {
    type: string
    sql: ${TABLE}.rut ;;
  }
  dimension: telefono {
    type: string
    sql: ${TABLE}.telefono ;;
  }
  dimension: tipo_usuario_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.tipo_usuario_id ;;
  }
  dimension: updated_at {
    type: string
    sql: ${TABLE}.updated_at ;;
  }
  measure: count {
    type: count
    drill_fields: [id, tipo_usuarios.id, empresas.id]
  }
}
