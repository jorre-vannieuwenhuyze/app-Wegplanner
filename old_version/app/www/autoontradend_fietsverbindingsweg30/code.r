makeresult <- function(path,breedte) {HTML(
  "<h1>Smalle wandel-/fietsweg</h1>"
  ,"<p>Deze weg dient als ontsluitings- of verbindingsweg voor fietsers. Autoverkeer is hier niet gewenst.</p>"
  ,"<p>In urbane gebieden worden deze wegen voorzien van aparte voetpaden. In landelijke gebieden kunnen voetpaden achterwege gelaten worden en wandelen mensen aan de linkerkant op de weg.</p>"
  ,characteristics(
     'Ondergrond' = 'Asfalt om het verbinded karakter voor fietsers te onderstrepen.'
    ,'Kleur'      = 'De roodbruine kleur accentueert de functie als fietsrijweg.'
    ,'Snelheid'   = 'De maximum snelheid is 30km/u.'
    ,'Markering'  = 'Geen markeringen (behalve bij kruispunten: witte stippellijn in het midden om dubbelrichtingsverkeer te benadrukken).' 
  )
  ,voorbeeldplannen
  ,ifelse( 0.0 <= breedte & breedte <  2.5,toosmall,"")
  ,ifelse( 2.5 <= breedte & breedte <  4.3,plan(path,'plan1'),"")
  ,ifelse( 4.3 <= breedte & breedte <  6.1,plan(path,'plan2'),"")
  ,ifelse( 6.1 <= breedte & breedte <  Inf,plan(path,'plan3'),"")
  ,praktijkvoorbeelden
  ,'<p class="figure"><iframe src="https://www.google.com/maps/embed?pb=!4v1605973341714!6m8!1m7!1s5wVWiyPZTAwbQQuYO9m3Fw!2m2!1d52.11024453606849!2d5.189674738424964!3f211.1194317496592!4f-9.156574911047045!5f0.7820865974627469" width="100%" height="400" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe></p>'
  ,"<p class='caption'>Jaagpad (bron: <a href='https://www.benweyts.be/nieuws/vlotte-en-veilige-verbindingen-zoals-het-jaagpad-zijn-er-voor-iedereen'>benweyts.be</a>)</p>"
  ,photo(path,'photo1')
)}
