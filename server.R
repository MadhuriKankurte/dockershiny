

# Rely on the 'WorldPhones' dataset in the datasets
# package (which generally comes preloaded).
library(datasets)

# Define a server for the Shiny app
function(input, output) {
  
  # Fill in the spot we created for a plot
  output$phonePlot <- renderPlot({
    i<-2
      if(input$region > 50 && input$region < 60){
        i <- 1
      }else if(input$region > 60 && input$region < 70){
        i <- 2
      }else if(input$region > 70 && input$region < 80){
        i <- 3
      }else if(input$region > 80 && input$region < 90){
        i <- 4
      }else if(input$region > 60 && input$region < 65){
        i <- 5
      }else if(input$region > 65 && input$region <= 68){
        i <- 6
      }
     
    # Render a barplot faithful[,2]
     plot(WorldPhones[,i],
            main="Rate Trends",
            ylab="Interest Rates",
            xlab="Year")
  })
}

