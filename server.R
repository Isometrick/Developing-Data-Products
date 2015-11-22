library(shiny)
source("dataset.R")

shinyServer(
        function(input, output) {
                
                output$travel <- renderText({
                        if(input$State2=="None") {
                                paste(input$State1, "to", input$State3)
                        }
                        else {
                                paste(input$State1, "to", input$State3, "with a stopover at", input$State2)
                        }
                })
                
                values <- reactiveValues()
                # Calculate the distance    
                observe({
                        if(input$State2=="None") {
                                values$distc <- dist[input$State1,input$State3]
                        }
                        else {
                                values$dista <- dist[input$State1,input$State2]
                                values$distb <- dist[input$State2,input$State3]
                                values$distc <- values$dista + values$distb
                        }
                })
                
                output$totdist <- renderText({paste(values$distc, "km")})
                
        }
)