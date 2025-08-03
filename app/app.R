library(shiny)
library(tidyverse)





################################################################################################################
### INPUT PANEL
################################################################################################################


selectAutos <- selectInput(
  inputId   = "auto"
  ,label     = "Functie voor gemotoriseerd verkeer:"
  ,choices   = c(
    "---"                                    = "---"
    ,"Gemotorideerd verkeer afgeraden"        = "autoontradend"
    ,"Lokale toegangsweg"                     = "autotoegangsweg"
    ,"Ontsluitings- of Verbindingsweg 30km/u" = "autoverbindingsweg30"
    ,"Ontsluitings- of Verbindingsweg 50km/u" = "autoverbindingsweg50"
    ,"Verbindingsweg 70km/u"                  = "autoverbindingsweg70"
    ,"Busbaan"                                = "busbaan"
  )
  ,width     = "100%"
  ,selectize = TRUE
  )
selectFietsers <- selectInput(
   inputId   = "fiets"
  ,label     = "Functie voor fietsers:"
  ,choices   = c(
     "---"                                    = "---"
    ,"Fietsers ontraden"                      = "fietsontradend"
    ,"Lokale toegangsweg"                     = "fietstoegangsweg"
    ,"Ontsluitings- of Verbindingsweg 30km/u" = "fietsverbindingsweg30"
    ,"Ontsluitings- of Verbindingsweg 50km/u" = "fietsverbindingsweg50"
    )
  ,width     = "100%"
  ,selectize = TRUE
  )


selectVoetpaden <- function() { 
    selectInput(
     inputId   = "voetpaden"
    ,label     = "Aantal voetpaden:"
    ,choices   = c(
       "Geen"                          = "0"
      ,"Langs één kant van de weg"     = "1"
      ,"Langs beide kanten van de weg" = "2"
      )
    ,selected  = selected$voetpaden
    ,width     = "100%"
    ,selectize = TRUE
    )
  }
selectParkeer <- function() { 
  selectInput(
     inputId   = "parkeer"
    ,label     = "Aantal parkeerstroken:"
    ,choices   = c(
       "Geen parkeerstroken"               = "0"
      ,"Parkeerstrook langs één kant"      = "1"
      ,"Parkeerstroken langs beide kanten" = "2"
      )
    ,selected  = selected$parkeer
    ,width     = "100%"
    ,selectize = TRUE
    )
  }
selectRichting <- function() { 
    selectInput(
     inputId   = "richting"
    ,label     = "Enkel- of dubbelrichtingsverkeer?"
    ,choices   = c(
       "Dubbelrichting"                                                         = "dubbel"
      ,"Enkelrichting voor gemotoriseerd verkeer, dubbelrichting voor fietsers" = "autoenkel"
      ,"Enkelrichting voor gemotoriseerd verkeer en fietsers"                   = "enkel"
      )
    ,selected  = selected$richting
    ,width     = "100%"
    ,selectize = TRUE
    )
  }











################################################################################################################
### HELP FUNCTIONS AND OBJECTS  ################################################################################
################################################################################################################

characteristicsTable <- function(...){
  x <- c(...)
  x <- paste0("<tr valign='top'><td style='padding:0 10px 0 0;'>",names(x),":</td><td>",x,"</td></tr>")
  x <- paste("<table>",paste(x,collapse='\n'),"</table>",sep='\n')
  return(x)
  }
img <- function(x){ paste0("<p><img src='###path###/",x,".png' width='100%'></p>") }
notimplemented <- '<div class="alert alert-dismissible alert-info"><p>Nog niet geïmplementeerd.</p></div>'

warningbox <- function(...){
  paste(
     "<div class='panel panel-warning'>"
    ,"<div class='panel-heading'><h3 class='panel-title'>Opgepast!</h3></div>"
    ,"<div class='panel-body'>",...,"</div>"
    ,"</div>"
    ,sep="\n"
    )
  }
errorbox <- function(...){
  paste(
     "<div class='panel panel-danger'>"
    ,"<div class='panel-heading'><h3 class='panel-title'>Fout!</h3></div>"
    ,"<div class='panel-body'>",...,"</div>"
    ,"</div>"
    ,sep="\n"
    )
  }







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

matrixSidebarPanel <- sidebarPanel(
   selectAutos
  ,selectFietsers
  ,htmlOutput("selectionmenu")
  )
matrixMainPanel <- mainPanel(
   uiOutput("message")
  ,uiOutput("title")
  ,uiOutput("description") 
  ,uiOutput("plan")
  ,uiOutput("praktijkvoorbeelden")
  )
matrixPanel     <- tabPanel('Matrix',sidebarLayout(matrixSidebarPanel,matrixMainPanel))
faqPanel        <- tabPanel("FAQ",HTML(faq))
overonsPanel    <- tabPanel("Over ons",includeHTML('www/static/overons.html'))

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
  ###  path
  path <- reactive({ paste0(input$auto,'_',input$fiets) })
  ### selected
  selected <<- reactiveValues(voetpaden="0",parkeer="0",richting="dubbel")
  observeEvent(input$voetpaden,{ selected$voetpaden=input$voetpaden  })
  observeEvent(input$parkeer  ,{ selected$parkeer  =input$parkeer    })
  observeEvent(input$richting ,{ selected$richting =input$richting   })
  ### features
  features <- reactive({
    file = paste0('www/',path(),'/features.r')
    features = list()
    if (file.exists(file)) { source(file,local=TRUE) }
    if ( is.null(features$path) ) { features$path=path() }
    return(features)
    })
  ### selectionmenu
  output$selectionmenu <- renderUI({
    if ( !is.null(features()$selectionmenu) ) { fluidPage(features()$selectionmenu,style="padding:0px;") }
    })
  ### message
  output$message <- renderUI({
    if (input$auto=="---"|input$fiets=="---") { includeHTML('www/static/explanation.html') 
      } else if (length(features())<=1) {
        HTML(notimplemented)
      } else if ( !is.null(features()$message) ) { 
        HTML(features()$message) 
      }
    })    
  ### title
  output$title <- renderUI({
    if ( !is.null(features()$title) ) { HTML(paste0("<h1>",features()$title,"</h1>")) }
    })
  ### description
  output$description <- renderUI({
    if ( !is.null(features()$description) ) { 
      content = paste0(features()$description,collapse="")
      HTML('<div>',content,'</div>') 
      }
    })
  ### plan
  output$plan <- renderUI({
    if ( !is.null(features()$plan) ) { 
      if (is.function(features()$plan)) { content = features()$plan() } else { content = features()$plan } 
      content = gsub("###path###",features()$path,content)
      HTML("<h3>Voorbeeldplan:</h3>",'<div style="padding-left:5%;">',content,'</div>') 
      }
    })
  ### praktijkvoorbeelden
  output$praktijkvoorbeelden <- renderUI({
    if ( !is.null(features()$praktijkvoorbeelden) ) { 
      content = paste0(features()$praktijkvoorbeelden,collapse="")
      content = gsub("###path###",features()$path,content)
      HTML("<h3>Praktijkvoorbeelden:</h3>",'<div style="padding-left:5%;">',content,'</div>') }
    })  
  }

#style="display: none"

################################################################################################################
### SHINY             ##########################################################################################
################################################################################################################

shinyApp(ui = ui, server = server)

