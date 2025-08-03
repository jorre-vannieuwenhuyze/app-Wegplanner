features <- list(
 selectionmenu = list(selectParkeer(),selectRichting())
,title = "Verbindings-/ontsluitingsweg 30km/u"
,description = c(
   "<p>Deze weg dient (1) als ontsluitingsweg vanuit urbane kernen naar verbindingswegen, of (2) als verbindingsweg tussen urbane kernen. 
        Ze wordt gebruikt op plaatsen waar veel voetgangers, scholen of andere voorzieningen voor kinderen en de jeugd zijn.<p>"
  ,characteristicsTable(
     'Ondergrond' = 'Auto- en fietsrijbaan wordt steeds uitgevoerd in asfalt.'
    ,'Kleur'      = 'De rijweg is grijs met roodbruine fietssuggestiestroken of roodbruine aparte fietspaden.'
    ,'Snelheid'   = 'De maximum snelheid is 30km/u.'
    ,'Markering'  = 'Twee stippellijnen benadrukken de maximum snelheid door hun vernauwend effect. 
                     Deze kunnen een roodbruine fietssuggestiestrook afbakenen indien er niet genoeg plaats is voor aparte fietspaden.'
    )
  )
,bindingtext = "<p>Alternatief voor kortere stukken zone 30 op langere verbindingswegen zodat het fietsverkeer niet de autorijweg wordt opgestuurd:</p>"
,plan = function() {
  case_when(
     input$parkeer=="0" & input$richting=="dubbel" ~ {paste(img("plan1"),features$bindingtext,img("plan11"),collapse=' ')}
    ,input$parkeer=="1" & input$richting=="dubbel" ~ {paste(img("plan2"),features$bindingtext,img("plan12"),collapse=' ')}
    ,input$parkeer=="2" & input$richting=="dubbel" ~ {paste(img("plan3"),features$bindingtext,img("plan13"),collapse=' ')}
    ,TRUE ~ notimplemented
    )
  }
,praktijkvoorbeelden = c(
   '<p class="figure"><iframe src="https://www.google.com/maps/embed?pb=!4v1605970420842!6m8!1m7!1sLexdmQGGjf4o9S8lcADV_g!2m2!1d52.63830334629129!2d4.775581754048609!3f207.24653137510455!4f2.1837335361097416!5f0.7820865974627469" width="100%" height="400" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe></p>'
  )
)




