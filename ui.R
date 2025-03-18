#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    https://shiny.posit.co/
#

library(shiny)

# Define UI for application that draws a histogram
fluidPage(

    # Application title
    titlePanel("Lat.1b Aplikasi Shiny Distribusi Binominal"),

    # Sidebar 
    sidebarLayout(
        sidebarPanel(
            numericInput(inputId="n","Ukuran Sampel",value=10),
            numericInput(inputId="p","Probabilitas",
                         min=0.5, max=0.95, value=0.2, step=0.05)
        ),
        #plot
        mainPanel(
            plotOutput(outputId="hist")
        )
    )
)
