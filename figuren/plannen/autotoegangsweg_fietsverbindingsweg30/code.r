#autotoegangsweg_fietsverbindingsweg30
makeresult <- function(path,breedte) {HTML(
  "<h1>Fietsstraat</h1>"
  ,"<p>Deze weg dient (1) als ontsluitingsweg voor fietsers, en (2) als lokale toegangsweg voor gemotoriseerd verkeer.<p>"
  ,characteristics(
     'Ondergrond' = 'Fietsstroken is asfalt om ontsluitings- en verbindingsfunctie te benadrukken. Rond de fietsstroken, ribbelstroken in betonstraatstenen om toegangsfunctie voor gemotoriseerd verkeer te onderstrepen.'
    ,'Kleur'      = 'Uniform roodbruine kleur om duidelijk te maken dat deze weg primair voor fietsers dient.'
    ,'Snelheid'   = 'De maximum snelheid is 30km/u.'
    ,'Markering'  = 'Geen'
  )
  ,voorbeeldplannen
  ,ifelse( 0.0 <= breedte & breedte <  7.9,toosmall,"")
  ,ifelse( 7.9 <= breedte & breedte < 10.1,plan(path,'plan1'),"")
  ,ifelse(10.1 <= breedte & breedte <  Inf,plan(path,'plan2'),"")
  ,praktijkvoorbeelden
  ,"<p class='caption'>Victor Heylenlei, Boechout</p>"
  ,photo(path,'photo1')
)}
