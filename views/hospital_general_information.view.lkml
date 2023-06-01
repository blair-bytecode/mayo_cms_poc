view: hospital_general_information {
  sql_table_name: `CMS_POC.Hospital_General_Information` ;;

  dimension: address {
    type: string
    sql: ${TABLE}.Address ;;
    description: "The street address of the hospital"
  }

  dimension: city {
    type: string
    sql: ${TABLE}.City ;;
    description: "The city where the hospital is located"
  }

  dimension: count_of_facility_mort_measures {
    type: string
    sql: ${TABLE}.Count_of_Facility_MORT_Measures ;;
    description: "The count of facility-level MORT measures reported by the hospital"
  }

  dimension: count_of_facility_pt_exp_measures {
    type: string
    sql: ${TABLE}.Count_of_Facility_Pt_Exp_Measures ;;
    description: "The count of facility-level patient experience measures reported by the hospital"
  }

  dimension: count_of_facility_readm_measures {
    type: string
    sql: ${TABLE}.Count_of_Facility_READM_Measures ;;
    description: "The count of facility-level readmission measures reported by the hospital"
  }

  dimension: count_of_facility_safety_measures {
    type: string
    sql: ${TABLE}.Count_of_Facility_Safety_Measures ;;
    description: "The count of facility-level safety measures reported by the hospital"
  }

  dimension: count_of_facility_te_measures {
    type: string
    sql: ${TABLE}.Count_of_Facility_TE_Measures ;;
    description: "The count of facility-level timely and effective care measures reported by the hospital"
  }

  dimension: count_of_mort_measures_better {
    type: string
    sql: ${TABLE}.Count_of_MORT_Measures_Better ;;
    description: "The count of mortality measures where the hospital's score is better than the national average"
  }

  dimension: count_of_mort_measures_no_different {
    type: string
    sql: ${TABLE}.Count_of_MORT_Measures_No_Different ;;
    description: "The count of mortality measures where the hospital's score is no different than the national average"
  }

  dimension: count_of_mort_measures_worse {
    type: string
    sql: ${TABLE}.Count_of_MORT_Measures_Worse ;;
    description: "The count of mortality measures where the hospital's score is worse than the national average"
  }

  dimension: count_of_readm_measures_better {
    type: string
    sql: ${TABLE}.Count_of_READM_Measures_Better ;;
    description: "The count of readmission measures where the hospital's score is better than the national average"
  }

  dimension: count_of_readm_measures_no_different {
    type: string
    sql: ${TABLE}.Count_of_READM_Measures_No_Different ;;
    description: "The count of readmission measures where the hospital's score is no different than the national average"
  }

  dimension: count_of_readm_measures_worse {
    type: string
    sql: ${TABLE}.Count_of_READM_Measures_Worse ;;
    description: "The count of readmission measures where the hospital's score is worse than the national average"
  }

  dimension: count_of_safety_measures_better {
    type: string
    sql: ${TABLE}.Count_of_Safety_Measures_Better ;;
    description: "The count of safety measures where the hospital's score is better than the national average"
  }

  dimension: count_of_safety_measures_no_different {
    type: string
    sql: ${TABLE}.Count_of_Safety_Measures_No_Different ;;
    description: "The number of safety measures that are not different from the national average"
  }

  dimension: count_of_safety_measures_worse {
    type: string
    sql: ${TABLE}.Count_of_Safety_Measures_Worse ;;
    description: "The number of safety measures that are worse than the national average"
  }

  dimension: county_name {
    type: string
    sql: ${TABLE}.County_Name ;;
    description: "The name of the county in which the hospital is located"
  }

  dimension: emergency_services {
    type: yesno
    sql: ${TABLE}.Emergency_Services ;;
    description: "Indicates whether the hospital provides emergency services or not"
  }

  dimension: facility_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.Facility_ID ;;
    description: "The unique identifier for the hospital"
  }

  dimension: facility_name {
    type: string
    sql: ${TABLE}.Facility_Name ;;
    description: "The name of the hospital"
  }

  dimension: hospital_overall_rating {
    type: string
    sql: ${TABLE}.Hospital_overall_rating ;;
    description: "The overall rating of the hospital based on various quality measures"
  }

  dimension: hospital_overall_rating_footnote {
    type: string
    sql: ${TABLE}.Hospital_overall_rating_footnote ;;
    description: "A footnote that provides additional information about the hospital's overall rating"
  }

  dimension: hospital_ownership {
    type: string
    sql: ${TABLE}.Hospital_Ownership ;;
    description: "The ownership type of the hospital"
  }

  dimension: hospital_type {
    type: string
    sql: ${TABLE}.Hospital_Type ;;
    description: "The type of hospital (e.g., acute care, critical access, etc.)"
  }

  dimension: meets_criteria_for_promoting_interoperability_of_ehrs {
    type: yesno
    sql: ${TABLE}.Meets_criteria_for_promoting_interoperability_of_EHRs ;;
    description: "Indicates whether the hospital meets the criteria for promoting interoperability of electronic health records (EHRs) or not"
  }

  dimension: mort_group_footnote {
    type: string
    sql: ${TABLE}.MORT_Group_Footnote ;;
    description: "A footnote that provides additional information about the hospital's mortality rate"
  }

  dimension: mort_group_measure_count {
    type: string
    sql: ${TABLE}.MORT_Group_Measure_Count ;;
    description: "The number of measures used to calculate the hospital's mortality rate"
  }

  dimension: phone_number {
    type: string
    sql: ${TABLE}.Phone_Number ;;
    description: "The phone number of the hospital"
  }

  dimension: pt_exp_group_footnote {
    type: string
    sql: ${TABLE}.Pt_Exp_Group_Footnote ;;
    description: "A footnote that provides additional information about the hospital's patient experience score"
  }

  dimension: pt_exp_group_measure_count {
    type: string
    sql: ${TABLE}.Pt_Exp_Group_Measure_Count ;;
    description: "The number of measures used to calculate the hospital's patient experience score"
  }

  dimension: readm_group_footnote {
    type: string
    sql: ${TABLE}.READM_Group_Footnote ;;
    description: "A footnote that provides additional information about the hospital's readmission rate"
  }

  dimension: readm_group_measure_count {
    type: string
    sql: ${TABLE}.READM_Group_Measure_Count ;;
    description: "The number of readmissions for the hospital, grouped by condition."
  }

  dimension: safety_group_footnote {
    type: string
    sql: ${TABLE}.Safety_Group_Footnote ;;
    description: "Footnote information for the hospital's safety rating."
  }

  dimension: safety_group_measure_count {
    type: string
    sql: ${TABLE}.Safety_Group_Measure_Count ;;
    description: "The number of measures considered for the hospital's safety rating."
  }

  dimension: state {
    type: string
    sql: ${TABLE}.State ;;
    description: "The state in which the hospital is located."
  }

  dimension: te_group_footnote {
    type: string
    sql: ${TABLE}.TE_Group_Footnote ;;
    description: "Footnote information for the hospital's timely and effective care rating."
  }

  dimension: te_group_measure_count {
    type: string
    sql: ${TABLE}.TE_Group_Measure_Count ;;
    description: "The number of measures considered for the hospital's timely and effective care rating."
  }

  dimension: zip_code {
    type: zipcode
    sql: ${TABLE}.ZIP_Code ;;
    description: "The ZIP code in which the hospital is located."
  }

  measure: count {
    type: count
    drill_fields: [county_name, facility_name]
    description: "The total number of hospitals in the dataset."
  }
}
