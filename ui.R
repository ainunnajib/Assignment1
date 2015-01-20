library(shiny)

shinyUI(fluidPage(title = "Histogram of cars",
        titlePanel("Histogram of cars"),
  
        sidebarLayout(
          sidebarPanel(
            h1("Inputs here:"),
            h4("Choose which variable for the histogram."),
            h4("Select the variable by clicking the radio button options:"),
            radioButtons("plottype", "Histogram by:",
                               c("Cylinder" = "cyl",
                                 "Miles per gallon" = "mpg",
                                 "Horsepower" = "hp",
                                 "Weight" = "wt",
                                 "Gear" = "gear"
                                 ))            
          ),
          mainPanel(
            h3("Histogram by your selected variable will be displayed below:"),
            plotOutput("histogram")
            )
        )
)
)