#autotoegangsweg_fietstoegangsweg
makeresult <- function(path,breedte) {HTML(
  "<h1>Woonstraat</h1>"
  ,"<p>Deze weg dient om percelen te ontsluiten, zowel voor fietsers als voor gemotoriseerd verkeer."
  ,characteristics(
     'Ondergrond' = 'Betonstraatstenen onderstrepen dat deze weg enkel dient als toegangsweg en niet als ontsluitings- of verbindingsweg.'
    ,'Kleur'      = 'Roodbruine kleur accentueert de aanwezigheid van fietsers op de rijbaan.'
    ,'Snelheid'   = 'De maximum snelheid is 30km/u.'
    ,'Markering'  = 'Geen.'
    )
  ,voorbeeldplannen
  ,ifelse( 0.00 <= breedte & breedte <  8.55,toosmall,"")
  ,ifelse( 8.55 <= breedte & breedte < 10.75,plan(path,'plan1'),"")
  ,ifelse(10.75 <= breedte & breedte < 12.95,plan(path,'plan2'),"")
  ,ifelse(12.95 <= breedte & breedte <   Inf,plan(path,'plan3'),"")
  ,praktijkvoorbeelden
  ,"<p class='caption'>Standaard woonstraat in Nederland</p>"
  ,'<p class="figure"><iframe src="https://www.google.com/maps/embed?pb=!4v1602417851782!6m8!1m7!1sdhD6v1AUOavxaSzCym8KyQ!2m2!1d52.04282276719326!2d4.367736797261451!3f41.484662972832346!4f-3.232889680340975!5f0.7820865974627469" width="100%" height="400" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe></p>'
)}