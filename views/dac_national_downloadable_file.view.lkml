view: dac_national_downloadable_file {
  sql_table_name: `CMS_POC.DAC_NationalDownloadableFile` ;;

  dimension: npi {
    primary_key: yes
    type: number
    sql: ${TABLE}.npi ;;
    description: "A unique 10-digit numeric identifier assigned to healthcare providers in the United States by the Centers for Medicare and Medicaid Services (CMS)"
    label: "NPI"
  }

  dimension: adr_ln_1 {
    type: string
    sql: ${TABLE}.adr_ln_1 ;;
    description: "First line of the provider's address"
    label: "Address Line 1"
  }

  dimension: adr_ln_2 {
    type: string
    sql: ${TABLE}.adr_ln_2 ;;
    description: "Second line of the provider's address"
    label: "Address Line 2"
  }

  dimension: adrs_id {
    type: string
    sql: ${TABLE}.adrs_id ;;
    description: "Unique ID for the provider's address"
    label: "Address ID"
  }

  dimension: cred {
    type: string
    sql: ${TABLE}.Cred ;;
    description: "Provider's professional credentials"
    label: "Credentials"
  }

  dimension: cty {
    type: string
    sql: ${TABLE}.cty ;;
    description: "Provider's city"
    label: "City"
  }

  dimension: frst_nm {
    type: string
    sql: ${TABLE}.frst_nm ;;
    description: "Provider's first name"
    label: "First Name"
  }

  dimension: gndr {
    type: string
    sql: ${TABLE}.gndr ;;
    description: "Provider's gender"
    label: "Gender"
  }

  dimension: grd_yr {
    type: number
    sql: ${TABLE}.Grd_yr ;;
    description: "Year of provider's graduation"
    label: "Graduation Year"
  }

  measure: total_grd_yr {
    type: sum
    sql: ${grd_yr} ;;
    description: "Total graduation years of all providers"
    label: "Total Graduation Years"
  }

  measure: average_grd_yr {
    type: average
    sql: ${grd_yr} ;;
    description: "Average graduation year of providers"
    label: "Average Graduation Year"
  }

  dimension: grp_assgn {
    type: string
    sql: ${TABLE}.grp_assgn ;;
    description: "Group assignment of the provider"
    label: "Group Assignment"
  }

  dimension: ind_assgn {
    type: string
    sql: ${TABLE}.ind_assgn ;;
    description: "Individual assignment of the provider"
    label: "Individual Assignment"
  }

  dimension: ind_enrl_id {
    type: string
    sql: ${TABLE}.Ind_enrl_ID ;;
    description: "Unique ID for the individual provider enrollment"
    label: "Individual Enrollment ID"
  }

  dimension: ind_pac_id {
    type: number
    sql: ${TABLE}.Ind_PAC_ID ;;
    description: "Individual provider's PAC ID"
    label: "Individual PAC ID"
  }

  dimension: ln_2_sprs {
    type: yesno
    sql: ${TABLE}.ln_2_sprs ;;
    description: "Whether the provider's last name is spelled with two spaces"
    label: "Last Name 2 Spaces"
  }

  dimension: lst_nm {
    type: string
    sql: ${TABLE}.lst_nm ;;
    label: "Last Name"
    description: "The last name of the healthcare provider"
  }

  dimension: med_sch {
    type: string
    sql: ${TABLE}.Med_sch ;;
    label: "Medical School"
    description: "The name of the medical school where the healthcare provider obtained their degree"
  }

  dimension: mid_nm {
    type: string
    sql: ${TABLE}.mid_nm ;;
    label: "Middle Name"
    description: "The middle name of the healthcare provider"
  }

  dimension: num_org_mem {
    type: number
    sql: ${TABLE}.num_org_mem ;;
    label: "Number of Organization Members"
    description: "The number of members in the healthcare provider's organization"
  }

  dimension: org_nm {
    type: string
    sql: ${TABLE}.org_nm ;;
    label: "Organization Name"
    description: "The name of the healthcare provider's organization"
  }

  dimension: org_pac_id {
    type: number
    sql: ${TABLE}.org_pac_id ;;
    label: "Organization PAC ID"
    description: "The PAC ID of the healthcare provider's organization"
  }

  dimension: phn_numbr {
    type: number
    sql: ${TABLE}.phn_numbr ;;
    label: "Phone Number"
    description: "The phone number of the healthcare provider"
  }

  dimension: pri_spec {
    type: string
    sql: ${TABLE}.pri_spec ;;
    label: "Primary Specialty"
    description: "The primary specialty of the healthcare provider"
  }

  dimension: sec_spec_1 {
    type: string
    sql: ${TABLE}.sec_spec_1 ;;
    label: "Secondary Specialty 1"
    description: "The first secondary specialty of the healthcare provider"
  }

  dimension: sec_spec_2 {
    type: string
    sql: ${TABLE}.sec_spec_2 ;;
    label: "Secondary Specialty 2"
    description: "The second secondary specialty of the healthcare provider"
  }

  dimension: sec_spec_3 {
    type: string
    sql: ${TABLE}.sec_spec_3 ;;
    label: "Secondary Specialty 3"
    description: "The third secondary specialty of the healthcare provider"
  }

  dimension: sec_spec_4 {
    type: string
    sql: ${TABLE}.sec_spec_4 ;;
    label: "Secondary Specialty 4"
    description: "The fourth secondary specialty of the healthcare provider"
  }

  dimension: sec_spec_all {
    type: string
    sql: ${TABLE}.sec_spec_all ;;
    label: "All Secondary Specialties"
    description: "All secondary specialties of the healthcare provider"
  }

  dimension: st {
    type: string
    sql: ${TABLE}.st ;;
    label: "State"
    description: "The state where the healthcare provider is located"
  }

  dimension: suff {
    type: string
    sql: ${TABLE}.suff ;;
    label: "Suffix"
    description: "The suffix of the healthcare provider's name"
  }

  dimension: telehlth {
    type: yesno
    sql: ${TABLE}.Telehlth ;;
    label: "Telehealth Availability"
    description: "Indicates whether the healthcare provider offers telehealth services"
  }

  dimension: zip {
    type: zipcode
    sql: ${TABLE}.zip ;;
    label: "Zip Code"
    description: "The zip code where the healthcare provider is located"
  }

  measure: count {
    type: count
    drill_fields: []
    label: "Count"
  }
}
