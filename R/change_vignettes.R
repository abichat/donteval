
#' Change the eval argument in all vignettes
#'
#' @param TtoF Logical. Change from \code{TRUE} to \code{FALSE} (the default)
#' or \code{FALSE} to \code{TRUE}.
#'
#' @export
change_in_vignettes <- function(TtoF = TRUE){
  vignettes <- find_vignettes()
  for (vig in vignettes){
    change_in_vignette(vig, TtoF = TtoF)
  }
}

#' Change the eval argument in a vignette
#'
#' @inheritParams change_in_vignettes
#' @param path path to vignette
#'
#' @importFrom stringr str_replace
#'
change_in_vignette <- function(path, TtoF = TRUE){
  script <- readLines(con = path)
  lines <- find_codeportion(script)
  selected_lines <- script[lines]

  if(TtoF){
    pattern <- "eval *= *T(RUE)?"
    replacement <- "eval = FALSE"
  } else {
    pattern <- "eval *= *F(ALSE)?"
    replacement <- "eval = TRUE"
  }

  selected_lines <- str_replace(selected_lines,
                                pattern = pattern,
                                replacement = replacement)

  script[lines] <- selected_lines
  writeLines(text = script, con = path)
}
