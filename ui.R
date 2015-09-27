library(shiny)
shinyUI(pageWithSidebar(
   headerPanel("Prediction of Diamond Price"),
      sidebarPanel(
      selectInput('Shape', 'Select Shape:', c('Heart' ,'Round', 'Princess', 'Cushion','Pear','Marquise', 'Emerald', 'Radiant', 'Oval', 'Asscher')),
      numericInput('Carat', 'Enter the weight in carats', 1.0 , min = .1, max = 4.0, step = 0.01),
      selectInput('Cut', 'Select Cut:', c('Good' ,'Ideal', 'V.Good')),
      selectInput('Color', 'Select Color:', c('D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L')),
      selectInput('Clarity', 'Select Clarity:', c('I1', 'I2', 'IF', 'SI1', 'SI2', 'VS1', 'VS2', 'VVS1', 'VVS2')),
      numericInput('Depth', 'Enter Depth(40 to 80):', 40.0 , min = 40, max = 80.0, step = 0.1),
      submitButton('Submit')
      ),
   mainPanel(
     h3('Accroding to your inputs, price of the diamond in USD is:'),
     verbatimTextOutput("prediction")
  )
))

