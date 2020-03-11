library(devtools)
library(usethis)
library(testthat)

# use_build_ignore("dev_history.R")

# use_gpl3_license("Antoine Bichat")

# use_git()

# use_r("vignettes")

####

document()
load_all()
attachment::att_to_description()
use_tidy_description()

check()
