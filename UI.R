library(shiny)

shinyUI(fluidPage(
  titlePanel("STOCK CHART"),
  
  fluidRow(
    column(12,
           selectInput("stockCode", "Choose a stock code:", 
                       choices = c("AAPL","GOOG",'YHOO')),
           plotOutput('plot'))
  )
))