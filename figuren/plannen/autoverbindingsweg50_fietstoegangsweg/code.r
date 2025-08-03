#autoverbindingsweg50_fietstoegangsweg
makeresult <- function(path,breedte) {HTML(
  "<h1>Verbindings-/ontsluitingweg 50km/u<br>met stenen fietspaden</h1> "
  ,"<p>Deze weg dient (1) als vebindings-/ontsluitingsweg voor auto's, en (2) als lokale toegangsweg voor fietsers.</p>"
  ,'<div class="panel panel-warning">
    <div class="panel-heading"><h3 class="panel-title">Opgepast!</h3></div>
    <div class="panel-body">Deze weg veronderstelt dat er een parallelle verbindings-/ontsluitingsweg voor fietsers in de onmiddelijke nabijheid ligt. Indien niet, verander jouw selectie naar een verbindings-/ontsluitingsweg voor fietsers in het menu.</div>
    </div>
    '
  ,characteristics(
    'Ondergrond' = "Gemotoriseerd verkeer rijdt op asfalt om verbindings-/ontsluitingsfunctie te benadrukken. Aparte fietspaden worden aangelegd in betonstraatstenen om lokale toegangsfunctie te benadrukken."
    ,'Kleur'      = 'De autoweg is grijs, fietspaden zijn roodbruin.'
    ,'Snelheid'   = 'De maximum snelheid is 50km/u voor gemotoriseerd verkeer.  De consistente smallere wegbreedte en de aanliggende fietspaden accentueren dit. De maximum snelheid is 30km/u voor fietsers. Speedpedelecs kunnen gebruik maken van de autorijbaan.'
    ,'Markering'  = 'Witte (stippel)lijn in het midden van de autorijweg'
  )
  ,voorbeeldplannen
  ,notimplemented
  ,praktijkvoorbeelden
  ,'<p class="figure"><iframe src="https://www.google.com/maps/embed?pb=!4v1604146357442!6m8!1m7!1s7SrTu2iQXq55z5hsTRrU1Q!2m2!1d51.01710523009223!2d4.496704459620787!3f132.813483503471!4f2.051976491715237!5f0.7820865974627469" width="100%" height="400" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe></p>'
)}