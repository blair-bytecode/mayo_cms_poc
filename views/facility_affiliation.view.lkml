view: facility_affiliation {
  sql_table_name: `CMS_POC.Facility_Affiliation` ;;

dimension: npi {
  primary_key: yes
  type: number
  sql: ${TABLE}.npi ;;
  label: "National Provider Identifier"
  description: "A unique 10-digit numeric identifier assigned to healthcare providers in the United States by the Centers for Medicare and Medicaid Services (CMS)"
}

dimension: facility_afl_ccn {
  type: string
  sql: ${TABLE}.facility_afl_ccn ;;
  label: "Facility Affiliation CCN"
  description: "The CMS Certification Number (CCN) of the healthcare facility with which the provider is affiliated"
}

dimension: facility_type {
  type: string
  sql: ${TABLE}.facility_type ;;
  label: "Facility Type"
  description: "The type of healthcare facility with which the provider is affiliated, such as hospital or nursing home"
}

dimension: frst_nm {
  type: string
  sql: ${TABLE}.frst_nm ;;
  label: "First Name"
  description: "The first name of the provider"
}

dimension: ind_pac_id {
  type: number
  sql: ${TABLE}.Ind_PAC_ID ;;
  label: "Individual Provider PAC ID"
  description: "The Provider and Healthcare Supplier Taxonomy (PHS) code assigned by CMS to identify individual healthcare providers who are eligible to prescribe and order durable medical equipment (DME)"
}

dimension: lst_nm {
  type: string
  sql: ${TABLE}.lst_nm ;;
  label: "Last Name"
  description: "The last name of the provider"
}

dimension: mid_nm {
  type: string
  sql: ${TABLE}.mid_nm ;;
  label: "Middle Name"
  description: "The middle name of the provider"
}

dimension: parent_ccn {
  type: number
  sql: ${TABLE}.parent_ccn ;;
  label: "Parent CCN"
  description: "The CMS Certification Number (CCN) of the parent organization of the healthcare facility with which the provider is affiliated"
}

dimension: suff {
  type: string
  sql: ${TABLE}.suff ;;
  label: "Suffix"
  description: "The suffix (e.g. Jr., Sr., III) of the provider's name"
}

measure: count {
  type: count
  drill_fields: []
  label: "Count"
}
}
