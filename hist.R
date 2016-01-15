# make a app that ahs a slider bar and that takes a headline for the slider bar from the user
#and plots a histogram of random numbers (as many numbers as the input from slider bar)


#ui.R

library(shiny)

fluidPage(
  sliderInput("num","choose the number",1,100,20),
  plotOutput("hist"),
  textInput("text","Enter the histogram Title here")
 )

#server.R

server <- function(input, output) {
   output$hist=renderPlot({
    hist(rnorm(input$num),main=input$text)
  })  
 }



