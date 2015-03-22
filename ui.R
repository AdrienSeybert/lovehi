library(shiny)
shinyUI(fluidPage(
        titlePanel(h3("Love Handle Index", style='color:#357CB7')),
    
        fluidRow(
        column(6, wellPanel(
        p(),
        img(src="lovehandles.jpg", height="50%", width="100%"),
        p(),
        sliderInput("weight", "Input Your Weight In Pounds", min=50, max=500, value=50),
        sliderInput("height", "Input Your Height In Inches", min=30, max=90, value=30),
        h4(actionButton('goButton',"Submit", style='color:#357CB7')),
        p(),
        h5(textOutput('BMI'), style='color:#357CB7', align='center')
        )))
        
        ))
        
  
