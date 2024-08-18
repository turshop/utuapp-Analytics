connection: "utuapp_data"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: utuapp_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: utuapp_default_datagroup

explore: acompanantes {
  join: pasajeros {
    type: left_outer 
    sql_on: ${acompanantes.pasajero_id} = ${pasajeros.id} ;;
    relationship: many_to_one
  }

  join: empresas {
    type: left_outer 
    sql_on: ${pasajeros.empresa_id} = ${empresas.id} ;;
    relationship: many_to_one
  }

  join: reservas {
    type: left_outer 
    sql_on: ${pasajeros.reserva_ids} = ${reservas.id} ;;
    relationship: many_to_one
  }

  join: giros {
    type: left_outer 
    sql_on: ${empresas.giro_id} = ${giros.id} ;;
    relationship: many_to_one
  }
}

explore: dificultades {}

explore: empresas {
  join: giros {
    type: left_outer 
    sql_on: ${empresas.giro_id} = ${giros.id} ;;
    relationship: many_to_one
  }
}

explore: estado_rp {}

explore: giros {}

explore: idiomas {
  join: servicios {
    type: left_outer 
    sql_on: ${idiomas.servicio_ids} = ${servicios.id} ;;
    relationship: many_to_one
  }

  join: empresas {
    type: left_outer 
    sql_on: ${servicios.empresa_id} = ${empresas.id} ;;
    relationship: many_to_one
  }

  join: productos {
    type: left_outer 
    sql_on: ${servicios.producto_ids} = ${productos.id} ;;
    relationship: many_to_one
  }

  join: giros {
    type: left_outer 
    sql_on: ${empresas.giro_id} = ${giros.id} ;;
    relationship: many_to_one
  }
}

explore: migrations {}

explore: paises {}

explore: pasajeros {
  join: empresas {
    type: left_outer 
    sql_on: ${pasajeros.empresa_id} = ${empresas.id} ;;
    relationship: many_to_one
  }

  join: reservas {
    type: left_outer 
    sql_on: ${pasajeros.reserva_ids} = ${reservas.id} ;;
    relationship: many_to_one
  }

  join: giros {
    type: left_outer 
    sql_on: ${empresas.giro_id} = ${giros.id} ;;
    relationship: many_to_one
  }
}

explore: password_resets {}

explore: productos {
  join: empresas {
    type: left_outer 
    sql_on: ${productos.empresa_id} = ${empresas.id} ;;
    relationship: many_to_one
  }

  join: servicios {
    type: left_outer 
    sql_on: ${productos.servicio_ids} = ${servicios.id} ;;
    relationship: many_to_one
  }

  join: giros {
    type: left_outer 
    sql_on: ${empresas.giro_id} = ${giros.id} ;;
    relationship: many_to_one
  }
}

explore: recursos {
  join: empresas {
    type: left_outer 
    sql_on: ${recursos.empresa_id} = ${empresas.id} ;;
    relationship: many_to_one
  }

  join: giros {
    type: left_outer 
    sql_on: ${empresas.giro_id} = ${giros.id} ;;
    relationship: many_to_one
  }
}

explore: reservas {
  join: pasajeros {
    type: left_outer 
    sql_on: ${reservas.pasajero_ids} = ${pasajeros.id} ;;
    relationship: many_to_one
  }

  join: empresas {
    type: left_outer 
    sql_on: ${reservas.empresa_id} = ${empresas.id} ;;
    relationship: many_to_one
  }

  join: giros {
    type: left_outer 
    sql_on: ${empresas.giro_id} = ${giros.id} ;;
    relationship: many_to_one
  }
}

explore: reserva_producto {
  join: reservas {
    type: left_outer 
    sql_on: ${reserva_producto.reserva_id} = ${reservas.id} ;;
    relationship: many_to_one
  }

  join: productos {
    type: left_outer 
    sql_on: ${reserva_producto.producto_id} = ${productos.id} ;;
    relationship: many_to_one
  }

  join: pasajeros {
    type: left_outer 
    sql_on: ${reservas.pasajero_ids} = ${pasajeros.id} ;;
    relationship: many_to_one
  }

  join: empresas {
    type: left_outer 
    sql_on: ${reservas.empresa_id} = ${empresas.id} ;;
    relationship: many_to_one
  }

  join: giros {
    type: left_outer 
    sql_on: ${empresas.giro_id} = ${giros.id} ;;
    relationship: many_to_one
  }

  join: servicios {
    type: left_outer 
    sql_on: ${productos.servicio_ids} = ${servicios.id} ;;
    relationship: many_to_one
  }
}

explore: servicios {
  join: empresas {
    type: left_outer 
    sql_on: ${servicios.empresa_id} = ${empresas.id} ;;
    relationship: many_to_one
  }

  join: productos {
    type: left_outer 
    sql_on: ${servicios.producto_ids} = ${productos.id} ;;
    relationship: many_to_one
  }

  join: giros {
    type: left_outer 
    sql_on: ${empresas.giro_id} = ${giros.id} ;;
    relationship: many_to_one
  }
}

explore: tipo_comision {}

explore: tipo_sociedades {}

explore: tipo_usuarios {}

explore: usuarios {
  join: tipo_usuarios {
    type: left_outer 
    sql_on: ${usuarios.tipo_usuario_id} = ${tipo_usuarios.id} ;;
    relationship: many_to_one
  }

  join: empresas {
    type: left_outer 
    sql_on: ${usuarios.empresa_id} = ${empresas.id} ;;
    relationship: many_to_one
  }

  join: giros {
    type: left_outer 
    sql_on: ${empresas.giro_id} = ${giros.id} ;;
    relationship: many_to_one
  }
}

