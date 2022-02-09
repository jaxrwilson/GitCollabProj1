library(shiny)

ui<- fluidPage(
  radioButtons(inputId="radio", 
               label = h3("What is your favorite cheese?"),
               choices = list("Kraft Singles" = 1, "Mozzarella" = 2, "I'm lactose intolerant" = 3),
               selected = 1),
  
  hr(),
  fluidRow(column(3, verbatimTextOutput("value")))
)
server <- function(input, output)
  output$value <- renderPrint({ input$radio })


shinyApp(ui, server)
