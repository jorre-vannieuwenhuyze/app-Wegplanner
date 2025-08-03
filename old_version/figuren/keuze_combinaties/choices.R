setwd(dirname(rstudioapi::getActiveDocumentContext()$path))
library(tidyverse)

choices <- list(
   fietsers       = c("Ontraden","Toegangsweg","Ontsluitings- of verbindingsweg 30 km/u","Ontsluitings- of verbindingsweg 50 km/u")
  ,autos          = c("Ontraden","Toegangsweg","Ontsluitings- of verbindingsweg 30 km/u","Ontsluitings- of verbindingsweg 50 km/u","Ontsluitings- of verbindingsweg 70 km/u")
  ,zwaarverkeer   = c("neen","ja")
  ,enkelrichting  = c("dubbelrichting","enkelrichting auto's","enkelrichting auto's en fietsers")
  ,voetgangers    = c("Ontraden","Langs één kant","Langs beide kanten")
  ,parkeerstroken = c("0","1","2")
  )

combinations <- cross_df(choices)

xlsx::write.xlsx(combinations,"lookup.xlsx")


getwd()

test <- read_delim("test.txt",col_names=FALSE,delim="=") %>% spread(1,2) %>% as.list()

test$titel
