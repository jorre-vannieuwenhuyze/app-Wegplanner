newpath <- 'autotoegangsweg_fietstoegangsweg'
source(paste0('www/',newpath,'/features.r'),local=TRUE)
features$path=newpath
features$message=warningbox("
    Een toegangsweg voor gemotoriseerd verkeer veronderstelt dat de weg in bebouwd gebied ligt. 
    Het heeft geen zin om hier fietsen te ontraden. We tonen de plannen voor een fietstoegangsweg.
    ")



