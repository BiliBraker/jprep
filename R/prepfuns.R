#' Negate %in% function
#'
#' This function simply negates the `%in%` function
#' @export
`%notin%` <- Negate(`%in%`)

#' Remove LaTeX Math markup and HTML tags
#'
#' @description A relatively fast and effective function for removing LaTeX Math markup and
#' HTML tags from Jstor articles. The function is nested in the tm::content_transformer
#' function.
#'
#' @param x Article content (character)
#' @return Cleaned article content
#' @export
latex_html_remove <- tm::content_transformer(function(content) {
  content_clean <- content %>%
    gsub("<tex-math.*?</tex-math>", "", .) %>%
    gsub("<.*?>", "", .) %>%
    stringi::stri_replace_all_regex(., "\n", " ")
  return(content_clean)
})

#' Remove arbitrary punctuation and special characters
#'
#' @description A universal function for removing arbitrary punctuation and special characters.
#' @param content Article content (character)
#' @param pattern A character pattern to remove e.g. Regexp expression
#'
#' @return Article content without the unwanted characters
#' @export
remove_special <- tm::content_transformer(function(content, pattern) {
  return(gsub(pattern, " ", content))
})

#' Remove unfrequent terms
#'
#' @description Removes pre-defined unfrequent terms from article content
#'
#' @param content Article content (character)
#' @param unfreq_terms Unfrequent terms to remove from article content (vector)
#'
#' @return Article content without the unfrequent words
#'
#' @export
unfreq_term_remove <- function(content, unfreq_terms) {
  word_freq <- table(unlist(text2vec::word_tokenizer(content)))
  word_list <- names(word_freq)
  to_remove <- which(word_list %in% unfreq_terms)
  word_remove <- paste0(" ", word_list[to_remove], " ")
  content_clean <- stringi::stri_replace_all_fixed(content, pattern = word_remove, replacement = " ", vectorize_all = F)

  return(content_clean)
}

#' Reduce discipline categories
#'
#' @description Reduces the discipline category to 1 for easier grouping.
#'
#' @param discs Disciplines (vector)
#'
#' @return One discipline category per case
#'
#' @export
disc_sub <-  function(discs){
  discipline <-  discs %>%
    stringi::str_split_fixed(.,' ;',n=2)
  discipline <-  discipline[1,1]
  return(discipline)
}