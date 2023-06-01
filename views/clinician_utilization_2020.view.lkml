view: clinician_utilization_2020 {
  sql_table_name: `CMS_POC.ClinicianUtilization_2020` ;;

dimension: npi {
  primary_key: yes
  type: number
  sql: ${TABLE}.npi ;;
  label: "National Provider Identifier"
  description: "A unique 10-digit numeric identifier assigned to healthcare providers in the United States by the Centers for Medicare and Medicaid Services (CMS)"
}

dimension: bene_cnt {
  type: number
  sql: ${TABLE}._bene_cnt ;;
  label: "Beneficiary Count"
  description: "The number of beneficiaries for the given clinician and HCPCS code."
}

measure: total_bene_cnt {
  type: sum
  sql: ${TABLE}._bene_cnt ;;
  label: "Total Beneficiary Count"
  description: "The sum of the beneficiary count for the given clinician and HCPCS code."
}

measure: avg_bene_cnt {
  type: average
  sql: ${TABLE}._bene_cnt ;;
  label: "Average Beneficiary Count"
  description: "The average beneficiary count for the given clinician and HCPCS code."
}

dimension: frst_nm {
  type: string
  sql: ${TABLE}._frst_nm ;;
  label: "First Name"
  description: "The first name of the clinician."
}

dimension: hcpcs_code {
  type: string
  sql: ${TABLE}._hcpcs_code ;;
  label: "HCPCS Code"
  description: "The Healthcare Common Procedure Coding System (HCPCS) code for the procedure performed by the clinician."
}

dimension: hcpcs_description {
  type: string
  sql: ${TABLE}._hcpcs_description ;;
  label: "HCPCS Description"
  description: "The description of the procedure performed by the clinician."
}

dimension: ind_pac_id {
  type: number
  sql: ${TABLE}._Ind_PAC_ID ;;
  label: "Individual Provider Identifier"
  description: "The unique identifier assigned to the clinician by the Centers for Medicare & Medicaid Services (CMS)."
}

dimension: line_srvc_cnt {
  type: number
  sql: ${TABLE}._line_srvc_cnt ;;
  label: "Line Service Count"
  description: "The number of services provided by the clinician for the given HCPCS code."
}

dimension: lst_nm {
  type: string
  sql: ${TABLE}._lst_nm ;;
  label: "Last Name"
  description: "The last name of the clinician."
}

dimension: prac_st {
  type: string
  sql: ${TABLE}._prac_st ;;
  label: "Practice State"
  description: "The state where the clinician practices."
}

dimension: spec {
  type: string
  sql: ${TABLE}._spec ;;
  label: "Specialty"
  description: "The specialty of the clinician."
}

measure: count {
  type: count
  drill_fields: [frst_nm, lst_nm, hcpcs_code, hcpcs_description, ind_pac_id, line_srvc_cnt, prac_st, spec, npi]
  label: "Count"
  description: "The count of rows returned by the query."
}
}
