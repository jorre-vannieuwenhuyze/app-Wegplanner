#autoverbindingsweg50_fietsverbindingsweg30
makeresult <- function(path,breedte) {HTML(
  "<h1>Verbindings-/ontsluitingsweg 50km/u<br>met brede fietspaden</h1>"
  ,"<p>Deze weg dient (1) als ontsluitingsweg vanuit urbane kernen naar verbindingswegen, of (2) als verbindingsweg urbane tussen kernen.</p>"
  ,characteristics(
     'Ondergrond' = 'Auto- en fietsrijbaan worden steeds uitgevoerd in asfalt.'
    ,'Kleur'      = 'De rijweg is grijs met aparte roodbruine fietspaden.'
    ,'Snelheid'   = 'De maximum snelheid is 50km/u voor alle verkeer. De consistente smallere wegbreedte en de aanliggende fietspaden accentueren dit voor autoverkeer.'
    ,'Markering'  = 'Geen markeringen op de autorijbaan. Twee volle witte lijnen aan de randen van de fietspaden duiden aan dat hier 50km/u mag gereden worden.'
  )
  ,voorbeeldplannen
  ,ifelse( 0.00 <= breedte & breedte < 14.50,toosmall,"")
  ,ifelse(14.50 <= breedte & breedte < 16.85,plan(path,'plan1'),"")
  ,ifelse(16.85 <= breedte & breedte < 19.20,plan(path,'plan2'),"")
  ,ifelse(19.20 <= breedte & breedte <   Inf,plan(path,'plan3'),"")
  ,praktijkvoorbeelden
  ,'<p class="figure"><iframe src="https://www.google.com/maps/embed?pb=!4v1604146647407!6m8!1m7!1sM5FD6qYimHu8QcHumcClcQ!2m2!1d51.92162704242104!2d4.457983439650842!3f270.79452948960244!4f-4.197863568884969!5f0.7820865974627469" width="100%" height="400" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe></p>'
)}