
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

load("regiones.Rdat")
load("provinces.Rdat")

shinyServer(function(input, output) {

  output$value <- renderPrint({ input$Regiones })
  
  output$provincesControls <- renderUI({
    provinces_sel <- provinces[ provinces$Region == input$Regiones, "Province"]
    #checkboxGroupInput("provinces_sel", "Elige provincia", provinces_sel)
    selectInput("Provincias", label = h3("Elige la provincia"), 
                choices = provinces_sel
                , selected = 1)
    
  })

})
