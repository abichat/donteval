
<!-- README.md is generated from README.Rmd. Please edit that file -->

# donteval

<!-- badges: start -->

[![license](https://img.shields.io/badge/license-GPL--3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0.en.html)
[![lifecycle](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental)
[![packageversion](https://img.shields.io/badge/Package%20version-0.0.1-orange.svg)](https://github.com/abichat/donteval/commits/master)
[![Last-changedate](https://img.shields.io/badge/last%20change-2020--03--12-yellowgreen.svg)](/commits/master)
<!-- badges: end -->

**donteval** provides RStudio addins to automatically set the `eval`
argument of `knitr::opts_chunk$set()` in vignettes to `TRUE` or `FALSE`.

## Installation

You can install **donteval** from [GitHub](https://github.com/) with:

``` r
# install.packages("remotes")
remotes::install_github("abichat/donteval")
```

## Usage

**donteval** may be particularly useful when you want to `check()` your
package without running long vignettes.

![usage](inst/demo.gif)
