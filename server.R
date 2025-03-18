#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    https://shiny.posit.co/
#

library(shiny)

function(input,output){
  output$hist<-renderPlot({
    x<-seq(0, input$n, by=1)
    y<-dbinom(x,input$n, input$p)
    plot(x, y, type="h", col="blue", border="green",
         main="Peluang Hasil Pembangkutan Distribusi Binomial",
         xlab="Data Sample", ylab="Probabilitas")
  })
}






