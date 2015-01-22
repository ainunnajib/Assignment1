library(shiny)

shinyUI(fluidPage(title = "Histogram of cars",
        titlePanel("Histogram of cars"),
  
        sidebarLayout(
          sidebarPanel(
            h1("Inputs here:"),
            #h4("Specify how many breaks for the histogram:"),
            #numericInput("breaks", "Number of breaks:", 7),
            h4("Choose which variable for the histogram."),
            h4("Select the variable by clicking the radio button options:"),
            radioButtons("plottype", "Histogram by:",
                               c(
                                 "Miles per gallon" = "mpg",
                                 "Cylinder" = "cyl",
                                 "Horsepower" = "hp",
                                 "Weight" = "wt",
                                 "Gear" = "gear"
                                 ))
          ),
          mainPanel(
            h3("Histogram by your selected variable will be displayed below:"),
            plotOutput("histogram"),
            h3("Mean and Median of your selected variable will be displayed below:"),
            h4("Mean:", textOutput("mean")),
            h4("Median:", textOutput("median"))
          )
        )
)
)