newpath <- 'autoverbindingsweg70_fietsverbindingsweg50'
source(paste0('www/',newpath,'/features.r'),local=TRUE)
features$path=newpath
features$message=warningbox("
    Een snelheidsregime van 70km/u veronderstelt dat de weg in gebied ligt met weinig bebouwing. 
    Het heeft geen zin om de snelheid van fietsers hier te beperken tot 30km/u.
    We tonen hieronder een ontsluitingsweg of verbindingsweg voor fietsers aan 50km/u.
    ")

