calcIEANew <- function(type){

  data <- readSource("IEA", subtype = "EnergyBalances") * 4.1868e-5

  if (type == "before"){
    return(tool_fix_IEA_data_for_Industry_subsectors(data))
  } else if (type == "after"){
    return(toolFixIEAdataForIndustrySubsectors(data, fixing = TRUE))
  } else if (type == "after-short"){
    return(toolFixIEAdataForIndustrySubsectors(data, fixing = FALSE))
  }

}
