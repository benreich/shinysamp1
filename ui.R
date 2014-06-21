library(shiny)
library(ggplot2)
library(ElemStatLearn)
data(SAheart)

dframe<-SAheart

dataset <- dframe

shinyUI(pageWithSidebar(
  
  headerPanel("Little Data Explorer"),
  
  sidebarPanel(
    p("This is a little data explorer that plots the relationship between different columns in a given data frame."),
    p("It is a generic application and can show any data frame in your environment. As a default it loads SAheart"),
    p("You can run it by setting a variable called dframe to any data framer with 3 or more columns"),
    selectInput('xval', 'X value', names(dataset)),
    selectInput('yval', 'Y value', names(dataset), names(dataset)[[2]]),
    selectInput('zval', 'Z value', names(dataset), names(dataset)[[3]])  
  ),
  
  mainPanel(
    plotOutput('plot')
  )
))