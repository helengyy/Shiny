library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("BMI Calculator"),
  sidebarPanel(
    radioButtons('system', h4('Select Measurements'), choices = list('Metric' = 1, 'Imperial' = 2),selected = 2),
    numericInput('height', h4('Height(cm/in)'), 0,min=0,max=250,step=1),
    numericInput('weight', h4('Weight(kg/lbs)'),0,min=0,max=250,step=1),
    submitButton('Submit'),
    a("help",href="help.html")
  ),
  mainPanel(
    h4('Result'),
    h5('Height'),
    verbatimTextOutput("height"),
    h5('Weight'),
    verbatimTextOutput("weight"),
    h5('BMI'),
    h5(verbatimTextOutput("BMI")),
    br(),
    div(h4("BMI Classification"),h6("18.5 or less___ Underweight"),
        h6("18.5 to 24.99__ Normal Weight"),h6("25 to 29.99____ Overweight"),
        h6("30 to 34.99____ Obesity (Class 1)"),h6("35 to 39.99____ Obesity (Class 2)"),
        h6("40 or greater___  Morbid Obesity"),style="color:green")
  )
 )
)