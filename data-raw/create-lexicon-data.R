library("devtools")
folder="data-raw"
phI_Lexicon   = readLines(sprintf("%s/%s", folder, "phI-Lexicon.txt"))
phII_Lexicon  = readLines(sprintf("%s/%s", folder, "phII-Lexicon.txt"))
phIII_Lexicon = readLines(sprintf("%s/%s", folder, "phIII-Lexicon.txt"))
phIV_Lexicon  = readLines(sprintf("%s/%s", folder, "phIV-Lexicon.txt"))
phV_Lexicon   = readLines(sprintf("%s/%s", folder, "phV-Lexicon.txt"))
sp_Lexicon    = readLines(sprintf("%s/%s", folder, "sp-Lexicon.txt"))

use_data(phI_Lexicon,
         phII_Lexicon,
         phIII_Lexicon,
         phIV_Lexicon,
         phV_Lexicon,
         sp_Lexicon,
         overwrite = T)

transcript_all      = read.csv(sprintf("%s/%s", folder, "predict-count-Lexicon-ALL-Transcript.csv"))
transcript_culture1 = read.csv(sprintf("%s/%s", folder, "predict-count-Lexicon-Culture-1-Transcript.csv"))
transcript_culture2 = read.csv(sprintf("%s/%s", folder, "predict-count-Lexicon-Culture-2-Transcript.csv"))
transcript_nursing  = read.csv(sprintf("%s/%s", folder, "predict-count-Lexicon-Nursing-Transcript.csv"))

use_data(transcript_all,
         transcript_culture1,
         transcript_culture2,
         transcript_nursing,
         overwrite = T)
