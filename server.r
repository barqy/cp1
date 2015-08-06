pmt <- function(rate,nper,pv,fv) round((pv-fv)*rate/(1-(1+rate)^(-nper)),2)
shinyServer(
	function(input, output) {
		output$pmt <- renderPrint(
			{pmt(input$r/100,input$t,input$p-input$down-input$trade,input$res)}
		)
	}
)