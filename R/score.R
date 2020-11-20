score = function (thread) {
  #
  # Zero empty cells, collapse phase columns
  #
  #
  # Read in the Lexicon
  #
  LI   = phI_Lexicon
  LII  = phII_Lexicon
  LIII = phIII_Lexicon
  LIV  = phIV_Lexicon
  LV   = phV_Lexicon
  Lsp  = sp_Lexicon
  lexi=list(LI, LII, LIII, LIV, LV, Lsp)
  #
  # Score post according to lexicon
  #
  lscores=c()
  pscores=c()
  for (p in thread) {  # Go through each post
    #
    # Do basic cleaning of the post
    #
    cp = gsub("\\n|/|-", " ", as.character(p))
    cp = gsub("[^a-z\\n ]", "", cp, ignore.case=T)
    cp = tolower(cp)

    lscore=c()
    phrases=c()
    for (lx in lexi) { # Go through each lexicon
      i=0
      phrase=c()
      for (ln in lx) {    # Go through each phrase in each lexicon
        if (grepl(paste("\\b",ln,"\\b",sep=""), cp,ignore.case=T)) { # Check if phrase is post
          #print(ln)
          phrase=c(phrase,ln)
          i=i+1
        }
      }
      phrase=paste(phrase,collapse=",")
      phrases=c(phrases,phrase)
      lscore=c(lscore,i)
    }
    pscores=rbind(pscores,phrases)
    lscores=rbind(lscores,lscore)
  }
  colnames(pscores)=c("phI", "phII", "phIII", "phIV", "phV", "sp")
  rownames(pscores)=NULL
  colnames(lscores)=c("phI", "phII", "phIII", "phIV", "phV", "sp")
  rownames(lscores)=NULL

  list(phrases=pscores,scores=lscores)
}
