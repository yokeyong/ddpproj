## Graphical User Interface

library(shiny)
library(markdown)

shinyUI(navbarPage("Flower Species",
        
        tabPanel("Knowledge Base",
                 sidebarLayout(
                  sidebarPanel(
                  
                          # Sidebar with a numeric input for
                          # Sepal Length, Sepal Width, 
                          # Petal Length, Petal Width
                          
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
                
                  ))),
         
          tabPanel("About",
                   
                   fluidRow(
                     column(6,
                       includeMarkdown("About.md")
                           )
                   
                   )
          )
          
))