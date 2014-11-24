### The Engine

library(shiny)
library(datasets)
library(caret)
library(randomForest)

# The whole idea of this app is to predict what 
# species of flower it is, based on the 
# measurements you have entered

# There are only three types of species here:
# Setosa, Versicolor and Virginica. Do not
# enter any other measurements different
# from these species

data(iris)
foldControl <- trainControl(method="cv", number=3)
modelFit0 <- train(Species ~ ., method = "rf", trControl = foldControl, data=iris)


shinyServer(function(input,output) {
        
        dataInput <- reactive({
                
                if (input$submit > 0) {
                        
                        e <- data.frame(Sepal.Length=input$a,
                                   Sepal.Width=input$b,
                                   Petal.Length=input$c,
                                   Petal.Width=input$d,
                                   stringsAsFactors=F)
                        
                        return(list(e=e))
                        
                }             
                        
        })
        
        output$Table <- renderTable({
                
                if (is.null(dataInput())) {
                        
                        return()
                
                } 
                
                print(dataInput()$e)
                                
        }, 'include.rownames' = FALSE
        , 'include.colnames' = TRUE
                
        )
        
        prediction <- function(a,b,c,d) {
                
                newdata <- data.frame(a,b,c,d)
                names <- names(iris[c(1:4)])
                colnames(newdata) <- names
                predictor <- predict(modelFit0, newdata)
                paste("Species: ", predictor, sep=" ")
                
        }
        
        output$prediction <- renderText({
                
                # As the sample is too small, I shall only use cross
                # validation on the data set. A 3-Fold verification
                # will be done
                
                # First, I have to verify the models used. I used
                # Classification Tree and Random Forests, and it
                # turns out Random Forests won with 100% prediction
                # accuracy! Therefore, I will use Random Forests.
                
                if(!is.null(dataInput())){
                
                prediction(input$a, input$b, input$c, input$d)
                                
                } else {
                        
                print("Guess which flower you are looking at?")
                                
                }
                                                
        })
        
                
})
