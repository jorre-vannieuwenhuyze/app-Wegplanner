features <- list(
 selectionmenu = list(selectParkeer(),selectRichting())
,title = "Verbindings-/ontsluitingweg 30km/u<br>met lokaal fietspad"
,description = c(
   warningbox("Deze weg veronderstelt dat er een parallelle verbindings-/ontsluitingsweg voor fietsers in de onmiddelijke omgeving ligt. Indien niet, verander jouw selectie naar een verbindings-/ontsluitingsweg voor fietsers in het menu.")
  ,"<p>Deze weg dient (1) als vebindings-/ontsluitingsweg voor auto's, en (2) als lokale toegangsweg voor fietsers.<p>"
  ,characteristicsTable(
    'Ondergrond'  = "Gemotoriseerd verkeer rijdt op asfalt om verbindings-/ontsluitingsfunctie te benadrukken. 
                     Aparte fietspaden worden aangelegd in betonstraatstenen om de lokale toegangsfunctie te benadrukken."
    ,'Kleur'      = 'De autoweg is grijs, fietspaden zijn roodbruin.'
    ,'Snelheid'   = 'De maximum snelheid is 30km/u.'
    ,'Markering'  = 'Twee stippellijnen op 1 meter van de rand van de autorijweg benadrukken de maximum snelheid door hun vernauwend effect.'
    )
  )
,plan = function() {
  case_when(
     input$parkeer=="0" & input$richting=="dubbel" ~ img("plan1")
    ,input$parkeer=="1" & input$richting=="dubbel" ~ img("plan2")
    ,input$parkeer=="2" & input$richting=="dubbel" ~ img("plan3")
    ,TRUE ~ notimplemented
    )
  }
,praktijkvoorbeelden = c(
   "<p class='caption'>Voorbeeld met fietspaden zonder belijning:</p>"
  ,'<p class="figure"><iframe src="https://www.google.com/maps/embed?pb=!4v1605969870774!6m8!1m7!1sr3SD975gzSCciBHybt-4Yg!2m2!1d51.01733952364035!2d4.472748378867576!3f355.5250148026949!4f-1.6217288100969967!5f0.7820865974627469" width="100%" height="400" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe></p>'
  ,"<p class='caption'>Voorbeeld zonder fietspaden maar met juiste belijning:</p>"
  ,'<p class="figure"><iframe src="https://www.google.com/maps/embed?pb=!4v1618073136157!6m8!1m7!1s7tOXF4Su_INw4GN88oKmuA!2m2!1d50.75168029060017!2d5.875724937094962!3f238.14011480413254!4f-7.140401178660852!5f0.7820865974627469" width="100%" height="400" style="border:0;" allowfullscreen="" loading="lazy"></iframe></p>' 
  )
)




