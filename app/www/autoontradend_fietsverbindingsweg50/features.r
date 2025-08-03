features <- list(
 selectionmenu = list(selectVoetpaden())
,title = "Brede fietsweg"
,description = c(
   "<p>
    Deze weg dient als ontsluitings- of verbindingsweg voor fietsers. 
    Autoverkeer is hier niet gewenst. 
    Als de weg grote fietsstromen te verwerken krijgt en de wegbreedte het niet toelaat worden voetgangers ook ontraden.
    </p>"
  ,characteristicsTable(
     'Ondergrond' = 'Asfalt om het verbinded karakter voor fietsers te onderstrepen.'
    ,'Kleur'      = 'De roodbruine kleur accentueert de functie als fietsrijweg.'
    ,'Snelheid'   = 'De maximum snelheid is 50km/u.'
    ,'Markering'  = 'Een witte onderbroken middenlijn om het snelle tweerichtings-verkeer te onderstrepen. Twee volle witte lijnen aan de randen van de weg duiden aan dat hier 50km/u mag gereden worden.' 
    )
  )
,plan = function() {
  case_when(
     input$voetpaden=="0" ~ img("plan1")
    ,input$voetpaden=="1" ~ img("plan2")
    ,input$voetpaden=="2" ~ img("plan3")
    ,TRUE                 ~ notimplemented
    )
  }
,praktijkvoorbeelden = c(
   "<p class='caption'>'Fietsostrade F11 Antwerpen-Lier</p>"
  ,'<p class="figure"><iframe width="100%" height="400" src="https://www.youtube.com/embed/qOuMxuT0iFc?autoplay=1&mute=1"></iframe></p>'
  )
)