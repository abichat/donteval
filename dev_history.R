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

# use_addin("change_TtoF")
# use_addin("change_FtoT")

# use_readme_rmd()

# badgecreatr::badge_license()
# badgecreatr::badge_lifecycle()
# badgecreatr::badge_packageversion()
# badgecreatr::badge_last_change()

####

document()
load_all()
attachment::att_to_description()
use_tidy_description()

check()
goodpractice::gp()

spell_check()
# spelling::update_wordlist()
