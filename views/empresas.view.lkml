view: empresas {
  sql_table_name: utuapplooker.empresas ;;
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
  dimension: ciudad {
    type: string
    sql: ${TABLE}.ciudad ;;
  }
  dimension: comuna {
    type: string
    sql: ${TABLE}.comuna ;;
  }
  dimension: correlativo {
    type: string
    sql: ${TABLE}.correlativo ;;
  }
  dimension: correo {
    type: string
    sql: ${TABLE}.correo ;;
  }
  dimension: created_at {
    type: string
    sql: ${TABLE}.created_at ;;
  }
  dimension: descripcion {
    type: string
    sql: ${TABLE}.descripcion ;;
  }
  dimension: direccion {
    type: string
    sql: ${TABLE}.direccion ;;
  }
  dimension: es_cliente {
    type: string
    sql: ${TABLE}.es_cliente ;;
  }
  dimension: giro_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.giro_id ;;
  }
  dimension: mark_up {
    type: string
    sql: ${TABLE}.markUp ;;
  }
  dimension: nombre_contacto {
    type: string
    sql: ${TABLE}.nombre_contacto ;;
  }
  dimension: nombre_fantasia {
    type: string
    sql: ${TABLE}.nombre_fantasia ;;
  }
  dimension: pago_diferido {
    type: string
    sql: ${TABLE}.pago_diferido ;;
  }
  dimension: razon_social {
    type: string
    sql: ${TABLE}.razon_social ;;
  }
  dimension: rut {
    type: string
    sql: ${TABLE}.rut ;;
  }
  dimension: telefono_contacto {
    type: string
    sql: ${TABLE}.telefono_contacto ;;
  }
  dimension: tipo_sociedad_id {
    type: string
    sql: ${TABLE}.tipo_sociedad_id ;;
  }
  dimension: updated_at {
    type: string
    sql: ${TABLE}.updated_at ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
	id,
	giros.id,
	pasajeros.count,
	productos.count,
	recursos.count,
	reservas.count,
	servicios.count,
	usuarios.count
	]
  }

}
