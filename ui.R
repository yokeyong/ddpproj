## Graphical User Interface

library(shiny)

shinyUI(pageWithSidebar(
        
        # Application title
        headerPanel("Flower Species: Knowledge Base"),
        
        # Sidebar with a numeric input for
        # Sepal Length, Sepal Width, 
        # Petal Length, Petal Width
        sidebarPanel(
                
                helpText("Please Input Measurements"),
                
                wellPanel(
                        numericInput('a', "Sepal Length",""),
                        numericInput('b', "Sepal Width",""),
                        numericInput('c', "Petal Length",""),
                        numericInput('d', "Petal Width",""),
                        actionButton("submit","Submit")
                )),
                                
        mainPanel(
                
                tags$style(type="text/css",
                           ".shiny-output-error { visibility: hidden; }",
                           ".shiny-output-error:before { visibility: hidden; }"
                ),
                
                uiOutput("Table"),
                h4(textOutput("prediction"))
                
                )
))