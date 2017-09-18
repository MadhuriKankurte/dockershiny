

# Rely on the 'WorldPhones' dataset in the datasets
# package (which generally comes preloaded).
library(datasets)

# Use a fluid Bootstrap layout
fluidPage(    
  
  # Give the page a title
  titlePanel("Interest Rate Trends"),
  
  # Generate a row with a sidebar
  sidebarLayout(      
    
    # Define the sidebar with one input
    sidebarPanel(
     selectInput("region", "Interest Rate Code:", 
                 choices=faithful[,2]),
    #  dateRangeInput("dates","Effective Dates",start = "1952-08-31",end = "2014-02-28 "),
      hr(),
      helpText("Interest Rate Tenor :5Y")
    ),
    
    # Create a spot for the barplot
    mainPanel(
      plotOutput("phonePlot")  
    )
    
  )
)

