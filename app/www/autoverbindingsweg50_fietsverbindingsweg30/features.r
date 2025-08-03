features <- list(
 selectionmenu = list(selectParkeer(),selectRichting())
,title = "Verbindings-/ontsluitingsweg 50km/u<br>met smalle fietspaden"
,description = c(
   "<p>Deze weg dient (1) als ontsluitingsweg vanuit urbane kernen naar verbindingswegen, of (2) als verbindingsweg tussen urbane kernen.</p>"
  ,characteristicsTable(
     'Ondergrond' = 'Auto- en fietsrijbaan worden steeds uitgevoerd in asfalt.'
    ,'Kleur'      = 'De rijweg is grijs met aparte roodbruine fietspaden.'
    ,'Snelheid'   = 'De maximum snelheid is 50km/u voor gemotoriseerd verkeer. De consistente smallere wegbreedte en de aanliggende fietspaden accentueren dit voor autoverkeer.
                     De maximum snelheid op de fietspaden is 30km/u omwille van de beperkte breedte.'
    ,'Markering'  = 'Geen markeringen.'
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
  '<p class="figure"><iframe src="https://www.google.com/maps/embed?pb=!4v1619857431586!6m8!1m7!1sJzU0XXASsdUmgh2lnsmj5g!2m2!1d51.20940716588652!2d4.407125022348766!3f253.62054862797282!4f-5.857221353592109!5f0.5970117501821992" width="100%" height="400" style="border:0;" allowfullscreen="" loading="lazy"></iframe></p>'
  )
)




