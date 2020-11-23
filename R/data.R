#' Keywords for preprocessing
#'
#' @format A vector containing keywords
#' @source Manually made
"keywords"

#' Costum stopwords for preprocessing; excluding 'were', 'at', and 'not'
#'
#' @format A vector containing stopwords
#' @source Manually made
"stopwords_new"

#' Costum Vocabulary
#'
#' A vocabulary made from "GradyAugmented" and "keywords"
#'
#' @format A vector
#' @source GradyAugmented vocabulary from "qdapdictionaries" package + "keywords"
"vocab"

#' Discipline categories
#'
#' Reduced discipline categories
#'
#' @format A vector
#' @source Manually made from jstor::jst_get_journal_overview
"disc_reduced"