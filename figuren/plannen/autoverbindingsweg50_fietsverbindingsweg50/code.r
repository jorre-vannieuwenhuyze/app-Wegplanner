#autoverbindingsweg50_fietsverbindingsweg30
makeresult <- function(path,breedte) {HTML(
  "<h1>Verbindings-/ontsluitingsweg 50km/u<br>met brede fietspaden</h1>"
  ,"<p>Deze weg dient (1) als ontsluitingsweg vanuit kernen naar verbindingswegen, of (2) als verbindingsweg tussen kernen. 
    (In principe zou er geen 50km/u-regime op verbindingswegen mogen gelden, maar we dragen hier de last van onze historische ruimtelijke ordening.)</p>"
  ,characteristics(
     'Ondergrond' = 'Auto- en fietsrijbaan wordt steeds uitgevoerd in asfalt.'
    ,'Kleur'      = 'De rijweg is grijs met aparte roodbruine fietspaden.'
    ,'Snelheid'   = 'De maximum snelheid is 50km/u voor alle verkeer. De consistente smallere wegbreedte en de aanliggende fietspaden accentueren dit voor autoverkeer.'
    ,'Markering'  = 'Witte (stippel)lijn in het midden van de autorijweg'
  )
  ,voorbeeldplannen
  ,notimplemented
  ,praktijkvoorbeelden
  ,'<p class="figure"><iframe src="https://www.google.com/maps/embed?pb=!4v1604146647407!6m8!1m7!1sM5FD6qYimHu8QcHumcClcQ!2m2!1d51.92162704242104!2d4.457983439650842!3f270.79452948960244!4f-4.197863568884969!5f0.7820865974627469" width="100%" height="400" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe></p>'
)}