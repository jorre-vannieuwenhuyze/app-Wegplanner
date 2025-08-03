makeresult <- function(path,breedte) {HTML(
  "<h1>Wandelweg</h1>"
  ,"<p>
    Wandelwegen zijn er voor veilige verplaatsingen te voet. 
    Ze zijn onontbeerlijke schakels binnen urbane kernen om bewoners te nudgen richting duurzame mobiliteit, maar ook in landelijke gebieden zijn ze onmisbaar als recreatieve uitlaatklep.
    Gemoriseerd verkeer en fietsen wordt er zo veel mogelijk vermeden.
    Meer informatie is te vinden op de website van <a href='https://www.tragewegen.be/in-mijn-buurt/trage-wegen' target='_blank'>Trage Wegen vzw</a>.
    </p>
    "
  ,characteristics(
     'Ondergrond' = 'Wandelwegen worden geaccentueerd door betonstraatstenen, halfharde of onverharde ondergrond.'
    ,'Kleur'      = 'Niet bepaald.'
    ,'Snelheid'   = 'In de uitzonderlijke gevallen dat fietsers en gemotoriseerd verkeer deze wegen kunnen gebruiken, is de maximale snelheid 5km/u (stapvoets).'
    ,'Markering'  = 'Er worden geen lijnelementen (bv. twee goten) gebruikt die een rijweg op welke manier dan ook kunnen sugereren.'    
    )
  ,voorbeeldplannen
  ,ifelse( 0.0 <= breedte & breedte <  1.5 ,toosmall,"")  
  ,ifelse( 1.5 <= breedte & breedte <  Inf,plan(path,"plan1"),'')
  ,praktijkvoorbeelden
  ,'<p class="figure"><iframe src="https://www.google.com/maps/embed?pb=!4v1603288470433!6m8!1m7!1sUNHRjKZr5AUddT2TQPwcRA!2m2!1d51.0413809948969!2d3.761888129501433!3f55.58!4f-6.540000000000006!5f0.5970117501821992" width="100%" height="400" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe></p>'
  ,'<p class="figure"><iframe src="https://www.google.com/maps/embed?pb=!4v1603288504910!6m8!1m7!1sr7vhUd-YlSdiN9FSUJ2A9A!2m2!1d50.83231427081008!2d4.531019118329582!3f244.43!4f-4.840000000000003!5f1.0063043547592547" width="100%" height="400" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe></p>'
)}