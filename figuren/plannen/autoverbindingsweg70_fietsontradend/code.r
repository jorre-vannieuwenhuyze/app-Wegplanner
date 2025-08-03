#autoverbindingsweg70_fietsontradend
makeresult <- function(path,breedte) {HTML(
  "<h1>Autoweg 70km/u<br>zonder fietspaden</h1>"
  ,"<p>Deze weg dient als verbindingsweg tussen kernen voor gemotoriseerd verkeer. Idealiter zijn er geen erftoegangen die uitgeven op deze weg, zodat de doorstroming niet verstoord wordt.</p>"
  ,"</p>Fietspaden en voetpaden ontbreken. Het is echter aangeraden om fietswegen te voorzien parrallel aan deze verbindingsweg.</p>"
  ,characteristics(
     'Ondergrond' = 'De autorijbaan wordt steeds uitgevoerd in asfalt.'
    ,'Kleur'      = 'De rijweg is grijs.'
    ,'Snelheid'   = 'De maximum snelheid is 70km/u.'
    ,'Markering'  = 'Witte (stippel)lijn in het midden van de autorijweg'
  )
  ,voorbeeldplannen
  ,ifelse( 0.0 <= breedte & breedte <= 5.9,toosmall,"")
  ,ifelse( 6.0 <= breedte & breedte <  Inf,plan(path,'plan1'),"")
  ,praktijkvoorbeelden
  ,'<p class="figure"><iframe src="https://www.google.com/maps/embed?pb=!4v1604222375117!6m8!1m7!1sCzq3SnNO6yjZuK0IFGT48A!2m2!1d51.05619262387847!2d4.502647909326368!3f206.17659548627793!4f-2.544996649592875!5f0.7820865974627469" width="100%" height="400" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe></p>'
)}