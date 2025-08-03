newpath <- 'autotoegangsweg_fietsverbindingsweg30'
source(paste0('www/',newpath,'/features.r'),local=TRUE)
features$path=newpath
features$message=warningbox("
    Een toegangsweg met snelheidsregime van 30km/u voor gemotoriseerd verkeer is moeilijk combineerbaar met een fietsweg waarop 50km/u mag gereden worden.
    We tonen de plannen voor een fietsverbindingsweg aan 30km/u.
    ")



