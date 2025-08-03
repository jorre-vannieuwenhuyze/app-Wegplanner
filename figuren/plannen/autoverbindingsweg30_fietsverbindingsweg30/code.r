#autoverbindingsweg30_fietsverbindingsweg30
makeresult <- function(path,breedte) {HTML(
  "<h1>Verbindings-/ontsluitingsweg 30km/u</h1>"
  ,"<p>Deze weg dient (1) als ontsluitingsweg vanuit kernen naar verbindingswegen, of (2) als verbindingsweg tussen kernen. 
       (In principe zou er geen 30km/u-regime op verbindingswegen mogen gelden, maar we dragen hier de last van onze historische ruimtelijke ordening.)</li></p>"
  ,characteristics(
    'Ondergrond' = 'Auto- en fietsrijbaan wordt steeds uitgevoerd in asfalt.'
    ,'Kleur'      = 'De rijweg is grijs met roodbruine fietssuggestiestroken of roodbruine aparte fietspaden.'
    ,'Snelheid'   = 'De maximum snelheid is 30km/u'
    ,'Markering'  = 'Twee stippellijnen op 1 meter van de rand van de rijweg benadrukken de maximum snelheid door hun vernauwend effect. 
                     Deze kunnen een roodbruine fietssuggestiestrook afbakenen indien er niet genoeg plaats is voor aparte fietspaden.'
    )
  ,voorbeeldplannen
  ,ifelse( 0.0 <= breedte & breedte <  7.9,toosmall,"")
  ,ifelse( 7.9 <= breedte & breedte < 10.1,plan(path,'plan1'),"")
  ,ifelse(10.1 <= breedte & breedte < 12.2,plan(path,'plan2'),"")
  ,ifelse(12.2 <= breedte & breedte <  Inf,plan(path,'plan3'),"")
  ,"Alternatief voor kortere stukken zone 30 op langere verbindingswegen (bv. in schoolomgevingen):"
  ,ifelse( 0.0 <= breedte & breedte < 11.3,toosmall,"")
  ,ifelse(11.3 <= breedte & breedte < 13.7,plan(path,'plan11'),"")
  ,ifelse(13.7 <= breedte & breedte < 16.0,plan(path,'plan12'),"")
  ,ifelse(16.0 <= breedte & breedte <  Inf,plan(path,'plan13'),"")
  ,praktijkvoorbeelden
  ,'<p class="figure"><iframe src="https://www.google.com/maps/embed?pb=!4v1605970420842!6m8!1m7!1sLexdmQGGjf4o9S8lcADV_g!2m2!1d52.63830334629129!2d4.775581754048609!3f207.24653137510455!4f2.1837335361097416!5f0.7820865974627469" width="100%" height="400" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe></p>'
)}