getFirstNames=function(Posters) {
  Posters=gsub("[ ]{2,}", " ", Posters)
  Posters=trimws(Posters)
  Posters=gsub("[^A-Za-z'’ ]", "", Posters)

  FullName   = unique(Posters)
  FirstLast  = strsplit(FullName, " ")
  FirstName  = unique(unlist(lapply(FirstLast, function (name) {name[1]})))
  FirstName
}
