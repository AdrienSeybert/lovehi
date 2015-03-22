        library(shiny)
        ## Create Love Handle Index
        bmi <- function(weight, height){
                fat<-paste("Your Love Handle Index is:",round((703*(weight/(height^2))),digits=1))
                return(fat)
        }
        
        ## Create Interpretation of Love Handle Index
        rank<- function(weight, height) {
                bmi<-703*(weight/height^2)
                
                if (bmi<=18.4){
                        outcome<-"It is too low."
                        return(outcome)
                }
                else if (bmi>=25){
                        outcome<-"It is too high."
                        return(outcome)
                }
                else{
                        outcome<-"It is just about right."
                        return(outcome)
                        
                }   
        }
        ## Create Health Suggestion Based On Love Handle Index
        
        advice<- function(weight, height) {
        bmi<-round((703*(weight/height^2)),1)
         
        if (bmi<=18.4){
                        desc<-"Eat a cheeseburger, will ya?"
                        return(desc)
                }
                else if (bmi>=25){
                        desc<-"Get thee to a gym."
                        return(desc)
                }
                else{
                        desc<-"Congrats, you're healthy."
                        return(desc)
                }}  
            
        shinyServer(
                function(input, output) {

                output$weight <- renderPrint({input$weight})
                output$height <- renderPrint({input$height})
                output$BMI <- renderText({
                        if(input$goButton==0)
                        return()
                        else
                        isolate(paste(bmi(input$weight, input$height),rank(input$weight, input$height),advice(input$weight, input$height), sep="\n"))
                                
})     
     
})      
                   
  
                                             
