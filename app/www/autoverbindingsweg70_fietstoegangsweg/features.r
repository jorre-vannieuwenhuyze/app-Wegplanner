newpath <- 'autoverbindingsweg70_fietsverbindingsweg50'
source(paste0('www/',newpath,'/features.r'),local=TRUE)
features$path=newpath
features$message=warningbox("
    Een snelheidsregime van 70km/u veronderstelt dat de weg in gebied ligt met weinig bebouwing. 
    Het heeft geen zin om een ontsluitingsweg voor auto's aan 70km/u te combineren met een lokale toegangsweg voor fietsers.
    We tonen hieronder een ontsluitingsweg of verbindingsweg voor fietsers aan 50km/u.
    ")

