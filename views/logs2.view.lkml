# The name of this view in Looker is "Logs2"
view: logs2 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `testconnectfitbit.logs_tyba.logs2`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Mensaje" in Explore.

  dimension: mensaje {
    type: string
    sql: ${TABLE}.mensaje ;;
  }

  dimension: string_field_0 {
    type: string
    sql: ${TABLE}.string_field_0 ;;
  }

  dimension: string_field_1 {
    type: string
    sql: ${TABLE}.string_field_1 ;;
  }

  dimension: tipo_log {
    type: string
    sql: ${TABLE}.tipo_log ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
