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
    p("As a default it loads SAheart Once it loads the data frame it automatically picks up the column names and plots a chart with X=column1 Y=column2 and Z=Column3. You can use the select input controls below to pick other rows."),
    selectInput('xval', 'X value', names(dataset)),
    selectInput('yval', 'Y value', names(dataset), names(dataset)[[2]]),
    selectInput('zval', 'Z value', names(dataset), names(dataset)[[3]])  
  ),
  
  mainPanel(
    plotOutput('plot')
  )
))