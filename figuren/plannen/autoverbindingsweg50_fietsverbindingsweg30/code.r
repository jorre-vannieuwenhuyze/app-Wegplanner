#autoverbindingsweg50_fietsverbindingsweg30
makeresult <- function(path,breedte) {HTML(
  "<h1>Verbindings-/ontsluitingsweg 50km/u<br>met smalle fietspaden</h1>"
  ,"<p>Deze weg dient (1) als ontsluitingsweg vanuit kernen naar verbindingswegen, of (2) als verbindingsweg tussen kernen. 
    (In principe zou er geen 50km/u-regime op verbindingswegen mogen gelden, maar we dragen hier de last van onze historische ruimtelijke ordening.)</p>"
  ,characteristics(
     'Ondergrond' = 'Auto- en fietsrijbaan wordt steeds uitgevoerd in asfalt.'
    ,'Kleur'      = 'De rijweg is grijs met aparte roodbruine fietspaden.'
    ,'Snelheid'   = 'De maximum snelheid is 50km/u voor gemotoriseerd verkeer . De consistente smallere wegbreedte en de aanliggende fietspaden accentueren dit voor autoverkeer.
                     De maximum snelheid op de fietspaden is 30km/u omwille van de beperkte breedte.'
    ,'Markering'  = 'Witte (stippel)lijn in het midden van de autorijweg'
  )
  ,voorbeeldplannen
  ,ifelse( 0.0 <= breedte & breedte < 11.9,toosmall,"")
  ,ifelse(11.9 <= breedte & breedte < 14.3,plan(path,'plan1'),"")
  ,ifelse(14.3 <= breedte & breedte < 16.6,plan(path,'plan2'),"")
  ,ifelse(16.6 <= breedte & breedte <  Inf,plan(path,'plan3'),"")
  ,praktijkvoorbeelden
  ,'<p class="figure"><iframe src="https://www.google.com/maps/embed?pb=!4v1606058171575!6m8!1m7!1sJzU0XXASsdUmgh2lnsmj5g!2m2!1d51.20940800531811!2d4.407126845955051!3f64.39273307333598!4f-10.393513293963395!5f0.7820865974627469" width="100%" height="400" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe></p>'
)}