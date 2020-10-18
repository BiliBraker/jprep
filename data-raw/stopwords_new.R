## code to prepare `stopwords_new` dataset goes here
stopwords_new <- tm::stopwords()[c(-42, -121, -167)] # stopwords excluding 'were', 'at', and 'not'
usethis::use_data(stopwords_new, overwrite = TRUE)
