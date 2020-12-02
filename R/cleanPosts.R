cleanPosts=function(AllPosts, FirstName, FullName) {
  RegexFirstName = paste(FirstName, collapse="|")
  RegexFullName  = paste(FullName , collapse="|")

  # Data cleaning
  ClnPosts = gsub("^RE:[^\n]+\n", "", AllPosts, ignore.case=T)  # Remove RE:.*\n, specific to Culture-2
  ClnPosts = gsub("\\bDr\\. ", "Dr ", ClnPosts, ignore.case=T)  # For people with Dr. titles
  ClnPosts = gsub("[^0-9A-Za-z'‘’“”\"\\. -]", " ", ClnPosts)    # Remove most punctuation

  # NAME REPLACEMENT
  ClnPosts = gsub(RegexFullName , "FULLNAME" , ClnPosts)          # Replace specific names
  ClnPosts = gsub(RegexFirstName, "FIRSTNAME", ClnPosts)

  # EXTRA CLEANING
  ClnPosts = gsub("[-]{2,3}", " ", ClnPosts)
  ClnPosts = gsub("[-]", "", ClnPosts)                          # Remove dash (also try above)
  ClnPosts = gsub("[‘“”\"]", "", ClnPosts)                      # Remove most quotes
  ClnPosts = gsub(" \\.", "\\.", ClnPosts)
  ClnPosts = gsub("[ ]{2,}", " ", ClnPosts)                     # Remove multiple internal spaces
  ClnPosts = trimws(ClnPosts)                                   # Remove spaces on ends

  # Expand contractions
  ClnPosts = proff::expandContractions(ClnPosts)
  ClnPosts
}
