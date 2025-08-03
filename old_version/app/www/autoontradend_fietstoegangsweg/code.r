makeresult <- function(path,breedte) {HTML(
  "<h1>Winkelstraat/woonerf</h1>"
  ,"<p>Deze weg wordt op de eerste plaats gebruikt door voetgangers, maar dient ook als toegangsweg voor plaatselijk fietverkeer (bewoners, klanten,...). Gemotoriseerd verkeer wordt hier zo veel mogelijk vermeden.</p>"
  ,characteristics(
     'Ondergrond' = 'Het lokale karakter wordt geaccentueerd door betonstraatstenen.'
    ,'Kleur'      = 'Niet bepaald, maar vermijd asfalt-grijs'
    ,'Snelheid'   = 'De maximum snelheid is 10km/u.' 
    ,'Markering'  = "Er worden geen lijnelementen (bv. twee goten) gebruikt die een rijweg op welke manier dan ook kunnen sugereren. 
                     De hele weg heeft de 'look and feel' van een voetpad, aparte voetpaden ontbreken. Dit onderstreept dat deze weg op de eerste plaats voor wandelaars bedoeld is."
    )
  ,voorbeeldplannen
  ,ifelse( 0.0 <= breedte & breedte <  3.0 ,toosmall,"")  
  ,ifelse( 3.0 <= breedte & breedte <  5.5,plan(path,"plan1"),'')
  ,ifelse( 5.5 <= breedte & breedte <  Inf,plan(path,"plan2"),'')
  ,praktijkvoorbeelden
  ,"<p class='caption'>Woonerf:</p>"
  ,'<p class="figure"><iframe src="https://www.google.com/maps/embed?pb=!4v1602428079431!6m8!1m7!1sT5GSrNfL9Xy-7bO4E89tjA!2m2!1d51.21550485108973!2d4.396295338890385!3f32.55015562247149!4f-3.9823697938161047!5f0.7820865974627469" width="100%" height="400" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe></p>'
  ,"<p class='caption'>Winkelstraat:</p>"
  ,'<p class="figure"><iframe src="https://www.google.com/maps/embed?pb=!4v1602428247348!6m8!1m7!1sM5sfTqcbVr0f0DkjU4DvBA!2m2!1d47.32233132883211!2d5.037410469359211!3f114.1969164139566!4f4.528773391756076!5f0.7820865974627469" width="100%" height="400" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe></p>'
)}