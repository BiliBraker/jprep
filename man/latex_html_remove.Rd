% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/prepfuns.R
\name{latex_html_remove}
\alias{latex_html_remove}
\title{Remove LaTeX Math markup and HTML tags}
\usage{
latex_html_remove(x, ...)
}
\arguments{
\item{x}{Article content (character)}
}
\value{
Cleaned article content
}
\description{
A relatively fast and effective function for removing LaTeX Math markup and
HTML tags from Jstor articles. The function is nested in the tm::content_transformer
function.
}
