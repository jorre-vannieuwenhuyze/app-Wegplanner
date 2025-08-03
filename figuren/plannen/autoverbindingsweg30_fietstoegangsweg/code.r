#autoverbindingsweg30_fietstoegangsweg
makeresult <- function(path,breedte) {HTML(
  "<h1>Verbindings-/ontsluitingweg 30km/u<br>met lokaal fietspad</h1>"
  ,"<p>Deze weg dient (1) als vebindings-/ontsluitingsweg voor auto's, en (2) als lokale toegangsweg voor fietsers.</p>"
  ,'<div class="panel panel-warning">
    <div class="panel-heading"><h3 class="panel-title">Opgepast!</h3></div>
    <div class="panel-body">Deze weg veronderstelt dat er een parallelle verbindings-/ontsluitingsweg voor fietsers in de onmiddelijke nabijheid ligt. Indien niet, verander jouw selectie naar een verbindings-/ontsluitingsweg voor fietsers in het menu.</div>
    </div>
    '
  ,characteristics(
    'Ondergrond'  = "Gemotoriseerd verkeer rijdt op asfalt om verbindings-/ontsluitingsfunctie te benadrukken. Aparte fietspaden worden aangelegd in betonstraatstenen om lokale toegangsfunctie te benadrukken."
    ,'Kleur'      = 'De autoweg is grijs, fietspaden zijn roodbruin.'
    ,'Snelheid'   = 'De maximum snelheid is 30km/u.'
    ,'Markering'  = 'Twee stippellijnen op 1 meter van de rand van de rijweg benadrukken de maximum snelheid door hun vernauwend effect.'
  )
  ,voorbeeldplannen
  ,notimplemented
  ,praktijkvoorbeelden
  ,'<p class="figure"><iframe src="https://www.google.com/maps/embed?pb=!4v1605969870774!6m8!1m7!1sr3SD975gzSCciBHybt-4Yg!2m2!1d51.01733952364035!2d4.472748378867576!3f355.5250148026949!4f-1.6217288100969967!5f0.7820865974627469" width="100%" height="400" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe></p>'
)}