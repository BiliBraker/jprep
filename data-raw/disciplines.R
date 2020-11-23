## code to prepare `disc_sub` dataset goes here
load("/media/bilibraker/Maxtor/Krisz/Krisztian/Research/missing_data_paper/R_stuff/disc_reduced.Rdata",
                     envir = globalenv())
usethis::use_data(disc_reduced, overwrite = TRUE)