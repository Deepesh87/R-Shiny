#ui.R


library(shiny)

fluidPage()

sliderInput("inputId","my first slider bar",5,50,20)

# server.R

server <- function(input, output) {}

