library(shiny, warn.conflicts = FALSE, quietly=TRUE)
library(stats)

calcz <- function(x,mu,sd,n) {(x - mu) / (sd/sqrt(n))}


shinyServer( 
    function(input, output){ 
        output$zscore <- renderPrint({ calcz(input$x, input$mu, input$sd, input$n) })
        output$pvalue <- renderPrint({ pnorm(calcz(x=input$x, mu=input$mu, sd=input$sd, n=input$n)) })
        output$myplot   <- renderPlot({
            plot(seq(-4,4,length=1000), dnorm(seq(-4,4,length=1000), mean=0, sd=1), type="l", lwd=1, 
                 main="Standard Normal Distribution", xlab="Z-Value", ylab="Probability")
            abline(v= calcz(input$x,input$mu,input$sd,input$n), lwd=3, col="red")
        })
    }
) 
