makeresult <- function(path,breedte) {HTML(
  "<h1>Brede fietsweg</h1>"
  ,"<p>Deze weg dient als ontsluitings- of verbindingsweg voor fietsers. Autoverkeer is hier niet gewenst. Als de weg grote fietsstromen te verwerken krijgt en de wegbreedte het niet toelaat worden voetgangers ook ontraden.</p>"
  ,characteristics(
     'Ondergrond' = 'Asfalt om het verbinded karakter voor fietsers te onderstrepen.'
    ,'Kleur'      = 'De roodbruine kleur accentueert de functie als fietsrijweg.'
    ,'Snelheid'   = 'De maximum snelheid is 50km/u.'
    ,'Markering'  = 'Een witte onderbroken middenlijn om het snelle tweerichtings-verkeer te onderstrepen. Twee volle witte lijnen aan de randen van de weg duiden aan dat hier 50km/u mag gereden worden.' 
    )
  ,voorbeeldplannen
  ,ifelse( 0.0 <= breedte & breedte <  3.5,toosmall,"")
  ,ifelse( 3.5 <= breedte & breedte <  5.3,plan(path,'plan1'),"")
  ,ifelse( 5.3 <= breedte & breedte <  7.1,plan(path,'plan2'),"")
  ,ifelse( 7.1 <= breedte & breedte <  Inf,plan(path,'plan3'),"")
  ,praktijkvoorbeelden
  ,"<p class='caption'>'Fietsostrade F11 Antwerpen-Lier</p>"
  ,'<p class="figure"><iframe width="100%" height="400" src="https://www.youtube.com/embed/qOuMxuT0iFc?autoplay=1&mute=1"></iframe></p>'
)}
