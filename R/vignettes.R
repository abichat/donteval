#' Find vignettes
#'
#' @param check_root logical
#'
#' @return The vector of paths to vignettes in the package.
find_vignettes <- function(check_root = TRUE) {

  if (check_root & !file.exists("DESCRIPTION")) {
    stop("Your working directory must be the root of your package.")
  }

  if (!dir.exists("vignettes")) {
    warning("There is no vignettes in your package.")
  }

  list.files(path = "vignettes", pattern = ".Rmd",
             recursive = FALSE, include.dirs = FALSE,
             full.names = TRUE)
}
