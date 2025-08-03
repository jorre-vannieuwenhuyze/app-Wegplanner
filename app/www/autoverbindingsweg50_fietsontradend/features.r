newpath <- 'autoverbindingsweg50_fietsverbindingsweg30'
source(paste0('www/',newpath,'/features.r'),local=TRUE)
features$path=newpath
features$message=warningbox("
    Een snelheidsregime van 50km/u op een verbindings- of ontsluitingsweg voor gemotoriseerd verkeer veronderstelt dat de weg in bebouwd gebied ligt. Het heeft geen zin om hier fietsen te ontraden.
    We tonen de plannen voor een fietsverbindingsweg aan 30km/u.
    ")


