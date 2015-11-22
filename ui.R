library(shiny)

shinyUI(pageWithSidebar(
        headerPanel("Europe Travelling Distance Calculator"),
        sidebarPanel(
                h2('Input the Cities'),
                h4('This application helps you to calculate the distance you would 
                   travel between Europe cities, including a possible stopover. 
                   Input the cities of origin, destination, and an option for a 
                   stopover city. When that is done, click submit to see the results.'),
                selectInput('State1','Origin',c(colnames(dist))),
                selectInput('State2','Stopover State',c("None", colnames(dist))),
                selectInput('State3','Destination',c(colnames(dist))),
                submitButton('Submit')
                
        ),
        mainPanel(
                
                
                h2('Results of calculation'),
                h4('You are travelling from'),
                verbatimTextOutput("travel"),
                h4('The total distance of your travel is'),
                verbatimTextOutput("totdist")
        )
))