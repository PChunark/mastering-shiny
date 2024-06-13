library(shiny)

ui <- fluidPage(
  textInput(inputId = "name", label = "What is your name?"),
  textOutput(outputId = "greeting")
)

server <- function(input, output, session){
  output$greeting <- renderText({
    paste0("Hello ", input$name)
  })
}

shinyApp(ui, server)