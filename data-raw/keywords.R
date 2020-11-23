## code to prepare `keywords` dataset goes here
load("./keywords.RData", envir = globalenv())
usethis::use_data(keywords, overwrite = TRUE)
