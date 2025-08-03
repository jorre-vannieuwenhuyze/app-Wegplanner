features <- list(
 selectionmenu = list(selectParkeer(),selectRichting())
,title = "Verbindings-/ontsluitingsweg 50km/u<br>met brede fietspaden"
,description = c(
   "<p>Deze weg dient (1) als ontsluitingsweg vanuit urbane kernen naar verbindingswegen, of (2) als verbindingsweg urbane tussen kernen.</p>"
  ,characteristicsTable(
     'Ondergrond' = 'Auto- en fietsrijbaan worden steeds uitgevoerd in asfalt.'
    ,'Kleur'      = 'De rijweg is grijs met aparte roodbruine fietspaden.'
    ,'Snelheid'   = 'De maximum snelheid is 50km/u voor alle verkeer. De consistente smallere wegbreedte en de aanliggende fietspaden accentueren dit voor autoverkeer.'
    ,'Markering'  = 'Geen markeringen op de autorijbaan. Twee volle witte lijnen aan de randen van de fietspaden duiden aan dat hier 50km/u mag gereden worden.'
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
  '<p class="figure"><iframe src="https://www.google.com/maps/embed?pb=!4v1604146647407!6m8!1m7!1sM5FD6qYimHu8QcHumcClcQ!2m2!1d51.92162704242104!2d4.457983439650842!3f270.79452948960244!4f-4.197863568884969!5f0.7820865974627469" width="100%" height="400" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe></p>'
  )
)



