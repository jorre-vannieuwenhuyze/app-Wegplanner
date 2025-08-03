#autoverbindingsweg70_fietsverbindingsweg30
makeresult <- function(path,breedte) {HTML(
   "<h1>Autoweg 70km/u<br>met fietspaden</h1>"
  ,"<p>Deze weg dient als verbindingsweg tussen kernen voor gemotoriseerd verkeer en fietsverkeer. Idealiter zijn er geen erftoegangen die uitgeven op deze weg, zodat de doorstroming niet verstoord wordt.</p>"
  ,"<p>Er moet voldoende afstand zijn tussen de autorijbaan en de fietsrijbaan om de veiligeheid van fietsers te garanderen.</p>"
  ,characteristics(
    'Ondergrond' = 'De auto- en fietsrijbanen worden steeds uitgevoerd in asfalt om de functie als ontsluitings- en verbindingsweg te accentureren.'
    ,'Kleur'      = 'De rijweg is grijs, het fietspad is bruinrood.'
    ,'Snelheid'   = 'De maximum snelheid is 70km/u voor gemotoriseerd verkeer en 50km/u voor fietsverkeer.'
    ,'Markering'  = 'Witte (stippel)lijn in het midden van de autorijweg'
  )
  ,voorbeeldplannen
  ,ifelse( 0.0 <= breedte & breedte <=13.9,toosmall,"")
  ,ifelse(14.0 <= breedte & breedte <  Inf,plan(path,'plan1'),"")
  ,praktijkvoorbeelden
  ,'<p class="figure"><iframe src="https://www.google.com/maps/embed?pb=!4v1604250735571!6m8!1m7!1skwaM1Myo3QzSOM698_tVvA!2m2!1d51.1952674209728!2d4.428147723335349!3f238.06000802681447!4f2.2602138511348357!5f0.7820865974627469" width="100%" height="400" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe></p>'
)}
