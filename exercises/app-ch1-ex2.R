library(shiny)

ui <- fluidPage(
  sliderInput(inputId = "x", label = "If x is", 
              min = 1, 
              max = 50, 
              value = 30),
  sliderInput(inputId = "y", label = "and y is", 
              min = 1, 
              max = 50, 
              value = 5),
  "then, x times y is",
  textOutput("product")
)

server <- function(input, output, session) {
  output$product <- renderText({ 
    input$x * input$y
  })
}

shinyApp(ui, server)