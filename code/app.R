library(shiny)

# create user interface (UI)

ui <- fluidPage(
  selectInput(inputId = "dataset", label = "Dataset", choices = ls("package:datasets")),
  verbatimTextOutput(outputId = "summary"),
  tableOutput(outputId = "table")
)

# create server
server <- function(input, output, session) {
  
  # Create a reactive expression
  
  dataset <- reactive({
    get(input$dataset, "package:datasets")
  })
  
  output$summary <- renderPrint({
    # Use a reactive expression by calling it like a function
    
    summary(dataset())
  })
  
  output$table <- renderTable({
    dataset()
  })
}

# create Application
shinyApp(ui, server)