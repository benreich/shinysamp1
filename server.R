library(shiny)
library(ggplot2)
library(ElemStatLearn)
data(SAheart)

dframe<-SAheart

shinyServer(function(input, output) {
  
  dataset <- reactive({dframe})
  
  output$plot <- renderPlot({    
    p <- ggplot(dataset(), aes_string(x=input$xval, y=input$yval)) + geom_point()
    p <- p + aes_string(color=input$zval)
    p<- p + scale_color_gradient2(mid="purple",high="orange")
    print(p)  
  }, height=500)
  
})