## code to prepare `keywords` dataset goes here
keywords <- load("./keywords.RData", envir = globalenv())
usethis::use_data(keywords, overwrite = TRUE)
