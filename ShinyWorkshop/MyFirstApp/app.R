
pacman::p_load(shiny, tidyverse)

#Use readr to load the readr to refer to read_csv syntax
exam <- readr::read_csv("data/Exam_data.csv")

ui <- fluidPage(
  titlePanel("Examination Results Dashboard"),
  sidebarLayout(
    sidebarPanel(
      selectInput(inputId = "variable",
                  label = "Subject:",
                  choices = c("English" = "ENGLISH",
                              "Maths" = "MATHS",
                              "Science" = "SCIENCE"),
                  selected = "ENGLISH"),
      sliderInput(inputId = "bins",
                  label = "Number of Bins",
                  min = 5,
                  max = 20,
                  value= 10)
      ),
    mainPanel("View display")
  )
  
)

server <- function(input, output) {}

shinyApp(ui = ui, server = server)
