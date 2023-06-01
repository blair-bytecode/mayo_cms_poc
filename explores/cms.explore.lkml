include: "/views/**/*.view"

datagroup: mayo_cms_poc_default_datagroup{
  max_cache_age: "1 hour"
}
persist_for: "24 hours"

explore: clinician_utilization_2020 {


join: dac_national_downloadable_file {
  type: left_outer
  relationship: many_to_one
  sql_on: ${clinician_utilization_2020.npi} = ${dac_national_downloadable_file.npi} ;;
}

join: facility_affiliation {
  type: left_outer
  relationship: many_to_one
  sql_on: ${clinician_utilization_2020.npi} = ${facility_affiliation.npi}  ;;
}

## join: hospital_general_information {
##  relationship: one_to_one
##  sql: ;;
##}
}
