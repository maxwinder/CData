


library(shiny)
library(chorddiag)
library(gridExtra)
library(ggplot2)
library(shinythemes)


###No space left on device error????


shinyUI(fluidPage(theme = shinytheme("united"),
                  titlePanel("Deze man is een mattie"),
                  br(),
                  br(),
                  radioButtons('select_area',"Select Area",inline = TRUE,
                               choices = c("Total", "North", "Groningen"),
                               selected = "Total"),
                  radioButtons('select_year',"Select Year",inline = TRUE,
                               choices = c("2011", "2012", "2013", "2014", "2015", "2016", "2017", "2018"),
                               selected = "2018"),
                  
                  chorddiagOutput("distPlot", height = 600)
))




