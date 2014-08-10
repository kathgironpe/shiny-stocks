library(shiny)
library(quantmod)

shinyServer(function(input,output){
  
  dataInput <- reactive({
    getSymbols(input$stockCode, src = "google", 
               auto.assign = FALSE)
  })
  
  
  output$plot <- renderPlot({
    barChart(dataInput())
  })

})