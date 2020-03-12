#' Find lines in scripts
#'
#' @param script script
#'
#' @return The lines of interest numbers.
#'
#' @importFrom utils head tail
#' @importFrom stringr str_which
#'
find_codeportion <- function(script){
  opts <- find_optschunkset(script)
  open <- find_openingchunks(script)
  close <- find_closingchunks(script)

  open <- tail(open[open <= opts], 1)
  close <- head(close[close >= opts], 1)

  return(seq(opts, close - 1))
}

#' @rdname find_codeportion
find_optschunkset <- function(script){
  str_which(script, "opts_chunk\\$set\\(")
}

#' @rdname find_codeportion
find_openingchunks <- function(script){
  str_which(script, "^```\\{r")
}

#' @rdname find_codeportion
find_closingchunks <- function(script){
  str_which(script, "^```\\w*$")
}

