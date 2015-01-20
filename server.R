library(shiny)
data(mtcars)

shinyServer(function(input, output)
{  
  output$histogram <- renderPlot({
    hist(mtcars[, input$plottype], main = "", xlab = "")
  }
  )
}
  )