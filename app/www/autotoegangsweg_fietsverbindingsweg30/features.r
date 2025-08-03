features <- list(
 selectionmenu = list(selectParkeer(),selectRichting())
,title = "Fietsstraat"
,description = c(
   "<p>Deze weg dient (1) als ontsluitingsweg voor fietsers, en (2) als lokale toegangsweg voor gemotoriseerd verkeer.<p>"
  ,characteristicsTable(
     'Ondergrond' = 'Fietsstroken in asfalt om ontsluitings- en verbindingsfunctie te benadrukken. Rond de fietsstroken, ribbelstroken in betonstraatstenen om toegangsfunctie voor gemotoriseerd verkeer te onderstrepen.'
    ,'Kleur'      = 'Uniform roodbruine kleur om duidelijk te maken dat deze weg primair voor fietsers dient.'
    ,'Snelheid'   = 'De maximum snelheid is 30km/u.'
    ,'Markering'  = 'Geen.'
    )
  )
,plan = function() {
  case_when(
     input$parkeer=="0" & input$richting=="dubbel" ~ img("plan1")
    ,input$parkeer=="1" & input$richting=="dubbel" ~ img("plan2")
    ,input$parkeer=="2"                            ~ errorbox("In een fietsstraat leg je best maar maximaal één parkeerstrook aan.")
    ,TRUE ~ notimplemented
    )
  }
,praktijkvoorbeelden = c(
   "<p class='caption'>Victor Heylenlei, Boechout</p>"
  ,img('photo1')
  )
)




