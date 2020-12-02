getFullNames=function(Posters) {
  Posters=gsub("[ ]{2,}", " ", Posters)
  Posters=trimws(Posters)
  Posters=gsub("[^A-Za-z'’ ]", "", Posters)

  FullName   = unique(Posters)
  FullName
}
