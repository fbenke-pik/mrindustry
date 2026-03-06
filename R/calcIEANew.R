calcIEANew <- function(subtype){

  data <- readSource("IEA", subtype = "EnergyBalances") * 4.1868e-5

  if (subtype == "before"){
    x <- tool_fix_IEA_data_for_Industry_subsectors(data)
  } else if (subtype == "after"){
    x <- toolFixIEAdataForIndustrySubsectors(data, fixing = TRUE)
  } else if (subtype == "after-short"){
    x <- toolFixIEAdataForIndustrySubsectors(data, fixing = FALSE)
  }

  return(list(x = x,
              weight = NULL,
              unit = "EJ",
              description = "Test")
  )

}
