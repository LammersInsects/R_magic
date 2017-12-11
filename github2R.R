# Source:
# https://www.r-bloggers.com/source_https-sourcing-an-r-script-from-github-over-https/
# November 24, 2011
# By Tony Breyal

install.packages('RCurl')
source_https <- function(url, ...) {
  # load package
  install.packages('RCurl')
  require(RCurl)
  
  # parse and evaluate each .R script
  sapply(c(url, ...), function(u) {
    eval(parse(text = getURL(u, followlocation = TRUE, cainfo = system.file("CurlSSL", "cacert.pem", package = "RCurl"))), envir = .GlobalEnv)
  })
}

# Example
# source_https("https://raw.github.com/tonybreyal/Blog-Reference-Functions/master/R/bingSearchXScraper/bingSearchXScraper.R",
#              "https://raw.github.com/tonybreyal/Blog-Reference-Functions/master/R/htmlToText/htmlToText.R")
