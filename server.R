library(shiny)
library(datasets)
data(mtcars)

shinyServer(function(input, output)
{  
  output$histogram <- renderPlot({
    hist(mtcars[, input$plottype], main = "", xlab = "")
  })
  output$mean <- renderText({
    mean(mtcars[which(!is.na(mtcars[,input$plottype])), input$plottype])
    })
  output$median <- renderText({
    median(mtcars[which(!is.na(mtcars[,input$plottype])), input$plottype])
  })
}
  )