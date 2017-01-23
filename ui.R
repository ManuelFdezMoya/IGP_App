
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

load("regiones.Rdat")


shinyUI(fluidPage(

  # Application title
  titlePanel("Seleccionar provincias de una región"),

  # Seleccionar región
  selectInput("Regiones", label = h3("Selecciona la región"), 
              choices = regiones
              , selected = 1)
  ))
