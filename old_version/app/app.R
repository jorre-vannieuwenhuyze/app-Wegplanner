library(shiny)








################################################################################################################
### HELP FUNCTIONS AND OBJECTS  ################################################################################
################################################################################################################

# wrongcombination <- function(...){
#   paste(
#      "<div class='panel panel-danger'>"
#     ,"<div class='panel-heading'><h3 class='panel-title'>Verkeerde combinatie!</h3></div>"
#     ,"<div class='panel-body'>",...,"</div>"
#     ,"</div>"
#     ,sep="\n"
#     )
#   }
# characteristics <- function(...){
#   x <- c(...)
#   x <- paste0("<tr valign='top'><td style='padding:0 10px 0 0;'>",names(x),":</td><td>",x,"</td></tr>")
#   x <- paste("<table>",paste(x,collapse='\n'),"</table>",sep='\n')
#   return(x)
#   }
# 
# todo <- function(...){
#   paste(
#      "<div class='panel panel-warning'>"
#     ,"<div class='panel-heading'><h3 class='panel-title'>TO DO</h3></div>"
#     ,"<div class='panel-body'>",...,"</div>"
#     ,"</div>"
#     ,sep="\n"
#     )
#   }
# plan <- function(path,x){
#   paste0("<p><img class='plan' src='",path,"/",x,".png' width='100%'></p>")
#   }
# photo <- function(path,x){
#   paste0("<p><img class='figure' src='",path,"/",x,".png' width='100%'></p>")
#   }




# 
# voorbeeldplannen    <- "<h3>Voorbeeldplannen</h3>"
# praktijkvoorbeelden <- "<h3>Praktijkvoorbeelden</h3>"
# toosmall <- '<div class="figure"><div class="alert alert-dismissible alert-danger"><p>Je hebt niet genoeg ruimte om deze weg aan te leggen.</p></div></div>'
# notimplemented <- HTML('<div class="alert alert-dismissible alert-info"><p>Nog niet geïmplementeerd.</p></div>')
# 







################################################################################################################
### INPUT PANEL
################################################################################################################

matrixSidebarPanel <- sidebarPanel(
   selectInput("fiets"
               ,"Functie voor fietsers:"
               ,c("---"                                        = "---"
                  ,"Fietsverkeer afgeraden"                     = "fietsontradend"
                  ,"#Lokale toegangsweg#"                       = "fietstoegangsweg"
                  ,"#Ontsluitings-# of #Verbindingsweg# 30km/u" = "fietsverbindingsweg30"
                  ,"#Ontsluitings-# of #Verbindingsweg# 50km/u" = "fietsverbindingsweg50"
               )
               ,width="100%"
               ,selected='---'
               ,selectize=TRUE
    )
  ,selectInput("auto"
    ,"Functie voor gemotoriseerd verkeer:"
    ,c("---"                                          = "---"
       ,"Gemotorideerd verkeer afgeraden"             = "autoontradend"
       ,"#Lokale toegangsweg#"                        = "autotoegangsweg"
       ,"#Ontsluitings-# of #Verbindingsweg# 30km/u"  = "autoverbindingsweg30"
       ,"#Ontsluitings-# of #Verbindingsweg# 50km/u"  = "autoverbindingsweg50"
       ,"#Verbindingsweg# 70km/u"                     = "autoverbindingsweg70"
    )
    ,width="100%"
    ,selected='---'
    ,selectize=TRUE
    )
  ,numericInput("breedte"
    ,"Breedte van de weg (in meter):"
    ,value=10
    ,min=0
    ,step=0.1
    ,width="100%"
    )
  )



# matrixSidebarPanel <- sidebarPanel(tags$table(
#    tags$tr(
#      tags$th("1.",style="vertical-align:top;padding:0 10px 0 0;")
#     ,tags$td(radioButtons("auto"
#       ,"Welke functie bekleedt de weg voor gemotoriseerd verkeer?"
#       ,c("Gemotorideerd verkeer afgeraden"             = "autoontradend"
#         ,"#Lokale toegangsweg#"                        = "autotoegangsweg"
#         ,"#Ontsluitings-# of #Verbindingsweg# 30km/u"  = "autoverbindingsweg30"
#         ,"#Ontsluitings-# of #Verbindingsweg# 50km/u"  = "autoverbindingsweg50"
#         ,"#Verbindingsweg# 70km/u"                     = "autoverbindingsweg70"
#         )
#       ,width="100%"
#       ,selected=''
#       ))
#     )
#   ,tags$tr(
#      tags$th("2.",style="vertical-align:top;padding:0 10px 0 0;")
#     ,tags$td(radioButtons("fiets"
#       ,"Welke functie bekleedt de weg voor fietsers?"
#       ,c("Fietsverkeer afgeraden"                     = "fietsontradend"
#         ,"#Lokale toegangsweg#"                       = "fietstoegangsweg"
#         ,"#Ontsluitings-# of #Verbindingsweg# 30km/u" = "fietsverbindingsweg30"
#         ,"#Ontsluitings-# of #Verbindingsweg# 50km/u" = "fietsverbindingsweg50"
#         )
#       ,width="100%"
#       ,selected=''
#       ))
#     )
#   ,tags$tr(
#      tags$th("3.",style="vertical-align:top;padding:0 10px 0 0;")
#     ,tags$td(numericInput("breedte"
#       ,"Wat is de (minimale) breedte van de weg (in meter)?"
#       ,value=10
#       ,min=0
#       ,step=0.1
#       ,width="100%"
#       ))
#     )
#   ))
matrixSidebarPanel <- HTML(gsub("#Lokale toegangsweg#",'<abbr title="Een toegangsweg verschaft toegang tot private percelen.">Lokale toegangsweg</abbr>',matrixSidebarPanel))
matrixSidebarPanel <- HTML(gsub("#Ontsluitingsweg#",'<abbr title="Een ontsluitingsweg verbindt lokale wegen met verbindingswegen.">Ontsluitingsweg</abbr>',matrixSidebarPanel))
matrixSidebarPanel <- HTML(gsub("#Ontsluitings-#",'<abbr title="Een ontsluitingsweg verbindt lokale wegen met verbindingswegen.">Ontsluitings-</abbr>',matrixSidebarPanel))
matrixSidebarPanel <- HTML(gsub("#Verbindingsweg#",'<abbr title="Een verbindingsweg vormt de verbinding tussen urbane kernen.">Verbindingsweg</abbr>',matrixSidebarPanel))




################################################################################################################
#### FAQ               ##########################################################################################
################################################################################################################

FAQn <- 0
FAQitem <- function(question,answer) {
FAQn <<- FAQn+1 
paste0(
'<div style="padding-left: 5%">',
'<p><button type="button" class="btn btn-primary btn-sm" data-toggle="collapse" data-target="#demo',FAQn,'">',question,'</button></p>',
'<p><div id="demo',FAQn,'" class="collapse">',answer,'</div></p>',
'</div>'
)
}
source('www/static/FAQ.r',TRUE)



################################################################################################################
#### UI               ##########################################################################################
################################################################################################################

matrixMainPanel    <- mainPanel(htmlOutput("result"))
matrixPanel        <- tabPanel('Matrix',sidebarLayout(matrixSidebarPanel,matrixMainPanel))
faqPanel     <- tabPanel("FAQ",faq)
overonsPanel <- tabPanel("Over ons",includeHTML('www/static/overons.html'))

ui <- navbarPage(
   title="WegPlanner"
  ,theme="style.css"
  ,inverse=TRUE
  ,matrixPanel
  ,faqPanel
  ,overonsPanel
  )




################################################################################################################
### SERVER            ##########################################################################################
################################################################################################################



server <- function(input, output) {
  ### render matrix output
  output$result <- renderUI({
    path <- paste0(input$auto,'_',input$fiets)
    if (input$auto=="---" | input$fiets=="---") {
      result <- includeHTML('www/static/explanation.html')
    } else if (file.exists(paste0('www/',path,'/code.r'))) {
      source(paste0('www/',path,'/code.r'),TRUE)
      result <- makeresult(path,input$breedte)
    } else {
      result <- notimplemented
      }
    return(result)
    })
  ### go back to matrix page
  observeEvent(input$navbar, {
   result <- includeHTML('www/static/explanation.html')
  })  
}




################################################################################################################
### SHINY             ##########################################################################################
################################################################################################################

shinyApp(ui = ui, server = server)

