library(shiny)

#Chapter 2 #####
# Input #####
animals <- c("dog", "cat", "mouse", "bird", "other", "I hate animals")

ui <- fluidPage(
  textInput(inputId = "name", label = "What is your name?"),
  passwordInput(inputId = "password", label = "What's your password?"),
  textAreaInput(inputId = "story", label = "Tell me about yourself", rows = 3),
  
  numericInput("num", "Number one", value = 0, min = 0, max = 100),
  sliderInput("num2", "Number two", value = 50, min = 0, max = 100),
  sliderInput("rng", "Range", value = c(10, 20), min = 0, max = 100),
  
  dateInput("dob", "When were you born?"),
  dateRangeInput("holiday", "When do you want to go on vacation next?"),
  
  selectInput("state", "What's your favourite state?", state.name),
  radioButtons("animal", "What's your favourite animal?", animals),
  
  radioButtons("rb", "Choose one:",
               choiceNames = list(
                 icon("angry"),
                 icon("smile"),
                 icon("sad-tear")
               ),
               choiceValues = list("angry", "happy", "sad")
  ),
  
  selectInput(
    "state", "What's your favourite state?", state.name,
    multiple = TRUE
  ),
  
  checkboxGroupInput("animal", "What animals do you like?", animals),
  
  checkboxInput("cleanup", "Clean up?", value = TRUE),
  checkboxInput("shutdown", "Shutdown?"),
  
  
# File uploads #####
  fileInput("upload", NULL),

# Action button #####
  actionButton("click", "Click me!"),
  actionButton("drink", "Drink me!", icon = icon("cocktail")),

  fluidRow(
  actionButton("click", "Click me!", class = "btn-danger"),
  actionButton("drink", "Drink me!", class = "btn-lg btn-success")
  ),
  fluidRow(
  actionButton("eat", "Eat me!", class = "btn-block")
  )
  
)

server <- function(input, output, session){
  
}

shinyApp(ui = ui, server = server)