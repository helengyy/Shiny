library(shiny)

calBMI <- function(system, height, weight) {
  BMI <- 0
  if (system == 1) {
    BMI <- weight/(height/100)^2
  } else {
    BMI <- (weight*703)/(height)^2
  }
  round(BMI,2)
}

shinyServer(
  function(input, output) {
    output$oHeight <- renderText({paste("Height:",input$height)})
    output$oWeight <- renderText({paste("Weight:",input$weight)})
    output$oBMI <- renderText({paste("BMI:", calBMI(input$system, input$height, input$weight))})
  }
)