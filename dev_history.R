library(devtools)
library(usethis)

# use_build_ignore("dev_history.R")

# use_gpl3_license("Antoine Bichat")

# use_git()

# use_r("vignettes")

# use_github_links()

# use_spell_check()

# use_r("find_lines")

# use_r("change_vignettes")

####

document()
load_all()
attachment::att_to_description()
use_tidy_description()

check()
goodpractice::gp()

spell_check()
# spelling::update_wordlist()
