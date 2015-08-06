shinyUI(
pageWithSidebar(
# Application title
	headerPanel("Car Lease Payment Calculator"),

	sidebarPanel(
	  h3('Inputs:'),
	  numericInput('t', 'Lease Term, months', 60, min = 12, max = 120, step = 1),
		numericInput('p', 'Car Price, $', 20000, min = 0, max = 1e9, step = 0.01),
		numericInput('res', 'Residual Value, $', 8000, min = 0, max = 1e9, step = 0.01),
		numericInput('down', 'Down Payment, $', 2000, min = 0, max = 1e9, step = 0.01),
		numericInput('trade', 'Trade-In Value, $', 5000, min = 0, max = 1e9, step = 0.01),
		numericInput('r', 'Annual Interest Rate, %', 4, min = 0, max = 100, step = 0.01)
	),

	mainPanel(
		h3('Monthly Payment, $'),
		verbatimTextOutput("pmt"),
		h3('User Manual'),
		p(paste("When you lease a car from a dealer", 
      "they will charge you a monthly fee. This little app",
      " calculates it. Enter the lease terms on the left panel,",
      " and see the calculated payment on the right.")),
		p(paste("Example: You are leasing a new car, which costs 20,000$",
		        " for 5 years (or 60 months). After the lease ends",
		        " you can either return a car to a dealer or",
            " keep it by paying additional 8,000$ (residual value).",
		        " You pay 2,000$ (down payment) cash upfront.",
		        " You also trade-in your old car for 5,000$ to a dealer.",
		        " Down payment and trade-in decrease your lease payment.",
		        " Finally, the (annual) interest rate on the lease is 4%.",
		        " Now, you can see the monthly fixed payment on the right side panel")),
		h3("Source Code"),
		p("Download sources from GitHub: https://github.com/barqy/cp1"),
		h3("Local Installation"),
		p(paste("It is easy to run the application on your desktop. ",
		        " Simply download the sources from the GitHub. Change the working directory",
		        " in RStudio to a local copy of the repository, then call runApp() command ",
		        " in RStudio or R Gui.",
		        " Also read readme.html file in the Git repo of this application.",
		        " This app does not require any packages beyond Shiny and its pre-requisites.")
		)
	)
)
)