basedir <- dirname(rstudioapi::getActiveDocumentContext()$path)
setwd(basedir)

library(tidyverse)

files <- list.files(pattern = ".tex$", recursive = TRUE)

#ornamenten
for (f in str_subset(files,"^files/ornamenten/")) {
  setwd(dirname(f))
  system(str_c("pdflatex ",basename(f)))
  setwd(basedir)
}

#texturen
for (f in str_subset(files,"^files/texturen/")) {
  setwd(dirname(f))
  system(str_c("pdflatex ",basename(f)))
  setwd(basedir)
  }

#plannen
for (f in str_subset(files,"^[^(files/)]")) {
  pdf = str_replace(basename(f),'\\.tex$','.pdf')
  pngroot = str_c(str_replace(basedir,'figuren/plannen','app/www'),'/',str_replace(f,'\\.tex$',''))
  setwd(dirname(f))
  system(str_c("pdflatex ",basename(f)))
  system(str_c("pdftoppm ",pdf," ",pngroot," -png -f 1 -singlefile"))
  setwd(basedir)
}
