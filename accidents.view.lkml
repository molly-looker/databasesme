view: accidents {
  sql_table_name: public.accidents ;;
  #required_access_grants: [AA_GROUP]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
    #required_access_grants: [AAA_GROUP]
  }

  dimension: accident_number {
    type: string
    sql: ${TABLE}.accident_number ;;
   # required_access_grants: [AA_GROUP]
  }

  dimension: test {
    type: string
    sql:  ${accident_number} ;;
    #required_access_grants: [AA_GROUP]
  }
  dimension: air_carrier {
    type: string
    sql: ${TABLE}.air_carrier ;;
    required_access_grants: [C_GROUP]
  }

  dimension: aircraft_category {
    type: string
    sql: ${TABLE}.aircraft_category ;;
    required_access_grants: [D_GROUP]
  }

  dimension: aircraft_damage {
    type: string
    sql: ${TABLE}.aircraft_damage ;;
    required_access_grants: [E_GROUP]
  }

  dimension: airport_code {
    type: string
    sql: ${TABLE}.airport_code ;;
    required_access_grants: [F_GROUP]
  }

  dimension: airport_name {
    type: string
    sql: ${TABLE}.airport_name ;;
    required_access_grants: [G_GROUP]
  }

  dimension: amateur_built {
    type: string
    sql: ${TABLE}.amateur_built ;;
    required_access_grants: [H_GROUP]
  }

  dimension: broad_phase_of_flight {
    type: string
    sql: ${TABLE}.broad_phase_of_flight ;;
    required_access_grants: [I_GROUP]
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
    required_access_grants: [J_GROUP]
  }

  dimension: engine_type {
    type: string
    sql: ${TABLE}.engine_type ;;
    required_access_grants: [K_GROUP]
  }

  dimension_group: event {
    group_label: "Thing"
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.event_date ;;
    required_access_grants: [L_GROUP]
  }

  dimension: event_id {
    type: string
    sql: ${TABLE}.event_id ;;
    required_access_grants: [M_GROUP]
  }

  dimension: far_description {
    type: string
    sql: ${TABLE}.fAr_description ;;
    required_access_grants: [N_GROUP]
  }

  dimension: injurY_severity {
    type: string
    sql: ${TABLE}.injury_severity ;;
    required_access_grants: [O_GROUP]
  }

  dimension: investigation_type {
    type: string
    sql: ${TABLE}.investigation_type ;;
    required_access_grants: [P_GROUP]
  }

  dimension: latitude {
    type: string
    sql: ${TABLE}.latitude ;;
    required_access_grants: [Q_GROUP]
  }

  dimension: location {
    type: string
    sql: ${TABLE}.location ;;
    required_access_grants: [R_GROUP]
  }

  dimension: longitude {
    type: string
    sql: ${TABLE}.longitude ;;
    required_access_grants: [S_GROUP]
  }

  dimension: make {
    type: string
    sql: ${TABLE}.make ;;
    required_access_grants: [T_GROUP]
  }

  dimension: model {
    type: string
    sql: ${TABLE}.model ;;
    required_access_grants: [U_GROUP]
  }

  dimension: number_of_engines {
    type: string
    sql: ${TABLE}.number_of_engines ;;
    required_access_grants: [V_GROUP]
  }

  dimension: number_of_fatalities {
    type: string
    sql: ${TABLE}.number_of_fatalities ;;
    required_access_grants: [W_GROUP]
  }

  dimension: number_of_minor_injuries {
    type: string
    sql: ${TABLE}.number_of_minor_injuries ;;
    required_access_grants: [X_GROUP]
  }

  dimension: number_of_serious_injuries {
    type: string
    sql: ${TABLE}.number_of_serious_injuries ;;
    required_access_grants: [Y_GROUP]
  }

  dimension: number_of_uninjured {
    type: string
    sql: ${TABLE}.number_of_uninjured ;;
    required_access_grants: [Z_GROUP]
  }

  dimension_group: publication {
    group_label: "Thing"
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.publication_date ;;
    required_access_grants: [AA_GROUP]
  }

  dimension: purpose_of_flight {
    type: string
    sql: ${TABLE}.purpose_of_flight ;;
    required_access_grants: [BB_GROUP]
  }

  dimension: registration_number {
    type: string
    sql: ${TABLE}.registration_number ;;
    required_access_grants: [CC_GROUP]
  }

  dimension: report_status {
    type: string
    sql: ${TABLE}.report_status ;;
    required_access_grants: [DD_GROUP]
  }

  dimension: schedule {
    type: string
    sql: ${TABLE}.schedule ;;
    required_access_grants: [EE_GROUP]
  }

  dimension: weather_condition {
    type: string
    sql: ${TABLE}.weather_condition ;;
    required_access_grants: [FF_GROUP]
  }

  measure: count {
    type: count
    required_access_grants: [GG_GROUP]
    drill_fields: [id, airport_name]
  }

  measure: count_distinct {
    type: count_distinct
    sql: ${accident_number} ;;
  }
}


explore: accidents {}
