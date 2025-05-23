#' Calculates global cement production as from Andrew's 2019 paper.
#' @author Bennet Weiss
calcCementProduction <- function() {
  x <- readSource("Andrew2019", convert = TRUE)
  x[is.na(x)] <- 0 # TODO implement smarter way to fill NA values
  x <- x * 1e3 # convert to tonnes
  unit <- "tonnes (t)"
  description <- paste(
    "Annual Cement Production as from",
    "Andrew, R.M., 2019. Global CO2 emissions from cement production, 1928-2018.",
    "Earth System Science Data 11, 1675-1710. https://doi.org/10.5194/essd-11-1675-2019.",
    "Data reported on https://zenodo.org/records/11207133.",
    "Accessed: 24.02.2025."
  )
  output <- list(x = x, weight = NULL, unit = unit, description = description)
  return(output)
}
