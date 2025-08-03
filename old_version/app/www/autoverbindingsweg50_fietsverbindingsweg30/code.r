#autoverbindingsweg50_fietsverbindingsweg30
makeresult <- function(path,breedte) {HTML(
  "<h1>Verbindings-/ontsluitingsweg 50km/u<br>met smalle fietspaden</h1>"
  ,"<p>Deze weg dient (1) als ontsluitingsweg vanuit urbane kernen naar verbindingswegen, of (2) als verbindingsweg tussen urbane kernen.</p>"
  ,characteristics(
     'Ondergrond' = 'Auto- en fietsrijbaan worden steeds uitgevoerd in asfalt.'
    ,'Kleur'      = 'De rijweg is grijs met aparte roodbruine fietspaden.'
    ,'Snelheid'   = 'De maximum snelheid is 50km/u voor gemotoriseerd verkeer . De consistente smallere wegbreedte en de aanliggende fietspaden accentueren dit voor autoverkeer.
                     De maximum snelheid op de fietspaden is 30km/u omwille van de beperkte breedte.'
    ,'Markering'  = 'Geen markeringen.'
  )
  ,voorbeeldplannen
  ,ifelse( 0.00 <= breedte & breedte < 13.00,toosmall,"")
  ,ifelse(13.00 <= breedte & breedte < 15.35,plan(path,'plan1'),"")
  ,ifelse(15.35 <= breedte & breedte < 17.70,plan(path,'plan2'),"")
  ,ifelse(17.70 <= breedte & breedte <   Inf,plan(path,'plan3'),"")
  ,praktijkvoorbeelden
  ,'<p class="figure"><iframe src="https://www.google.com/maps/embed?pb=!4v1619857431586!6m8!1m7!1sJzU0XXASsdUmgh2lnsmj5g!2m2!1d51.20940716588652!2d4.407125022348766!3f253.62054862797282!4f-5.857221353592109!5f0.5970117501821992" width="100%" height="400" style="border:0;" allowfullscreen="" loading="lazy"></iframe></p>'
)}