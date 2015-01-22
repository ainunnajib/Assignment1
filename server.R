library(shiny)
library(datasets)
data(mtcars)

shinyServer(function(input, output)
{  
  output$histogram <- renderPlot({
    hist(mtcars[, input$plottype], main = "", xlab = "")
  })
  output$summary <- renderText({
    summ <- summary(mtcars[which(!is.na(mtcars[,input$plottype])), input$plottype])
    })
  output$header <- renderText({names(summ)})
}
  )