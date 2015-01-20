library(shiny)
library(datasets)
data(mtcars)

shinyServer(function(input, output)
{  
  output$histogram <- renderPlot({
    hist(mtcars[, input$plottype], main = "", xlab = "", breaks = input$breaks)
  }
  )
}
  )