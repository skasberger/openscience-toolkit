######################################################
#     											 
#   Title: bookmarks2mediawiki.R
#   Description: convert html bookmarks (links) into media wiki syntax. 
#													 
#													 
#   Author: Stefan Kasberger
#   Date: 16. 11. 2012
#   Version: 1.0
#	  Language: 2.15.2
#   Software: RStudio 0.96.330
#   License: FreeBSD
#   												 
######################################################

# settings
tag <- "INSERT YOUR BOOKMARK TAG HERE" # console prompt would be nice!
filename_open <- "INSERT YOUR FILENAME HERE" # console prompt would be nice!
filename_save <- "INSERT YOUR FILENAME HERE" # console prompt would be nice!
parse_folder <- "TRUE or FALSE" # console prompt would be nice!


parse_folder <- TRUE
tag <- "scrapit_mediawiki"
filename_open <- "bookmarks.html"
filename_save <- "output.txt"
bookmarks <- readLines(filename_open)
DL <- 0
inside_folder <- FALSE

# cut open science folder
index <- 2 + grep(tag, bookmarks) # skip next 2 lines
bookmarks <- bookmarks[index:length(bookmarks)]
index <- 1
temp_bookmarks <- character()

for(i in seq_along(bookmarks)) {
  if(DL >= 0) {

    # is it a link?
    check_link <- regexec('^.*<DT><A HREF="(.*?)"', bookmarks[index])
    check_link <- regmatches(bookmarks[index], check_link)
    check_link <- sapply(check_link, function(x) x[2])
    
    if(is.na(check_link) == FALSE) {
      if(inside_folder == TRUE) {
        if(parse_folder == TRUE) {
          temp_bookmarks <- append(temp_bookmarks, bookmarks[index])
        }
      } else {
        temp_bookmarks <- append(temp_bookmarks, bookmarks[index])
      }
    } else {
      # is line the start of a folder? => DL+1
      check_DLs <- regexec("^.*?<DL>.*?$", bookmarks[index])
      check_DLs <- regmatches(bookmarks[index], check_DLs)
      check_DLs <- sapply(check_DLs, function(x) x[1])
      if(is.na(check_DLs) == FALSE) {
        DL <- DL + 1
      }
    
      # is line the end of a folder? => DL-1
      check_DLe <- regexec("^.*?</DL>.*?$", bookmarks[index])
      check_DLe <- regmatches(bookmarks[index], check_DLe)
      check_DLe <- sapply(check_DLe, function(x) x[1])
      if(is.na(check_DLe) == FALSE) {
        DL <- DL - 1
      }
      # is it outside a folder?
      if(DL >= 1) {
        inside_folder <- TRUE
      } else {
        inside_folder <- FALSE
      }
    }
    index <- index + 1
  } else {
    break
  }
}

bookmarks <- temp_bookmarks

# regex link & title
url <- regexec('^.*<DT><A HREF="(.*?)"', bookmarks)
url <- regmatches(bookmarks, url)
url <- sapply(url, function(x) x[2])

title <- regexec('^.*<A.*?>(.*?)</A>', bookmarks)
title <- regmatches(bookmarks, title)
title <- sapply(title, function(x) x[2])

# write file
mediawiki <- paste0("* [", as.character(url), " ", as.character(title), "]")
write(mediawiki, file = filename_save)













