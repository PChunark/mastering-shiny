library(shiny)

ui <- fluidPage(
  numericInput("count", label = "Number of values", value = 100)
)

server <- function(input, output, session) {
  
}

shinyApp(ui, server)
#> Error: Can't modify read-only reactive value 'count'