library(shiny, warn.conflicts = FALSE)

shinyUI(pageWithSidebar(
    headerPanel("Z Calculator"),
    sidebarPanel(
        h2('Summary Statistics to Enter'),
        h4('Mean'),
        numericInput('mu', 'Mean', 0),
        h4('Standard Deviation'),
        numericInput('sd', 'Standard Deviation', 0, min=0),
        h4('X-Value'),
        numericInput('x', 'Sample Data', 0),
        h4('Sample Size (use N=1 if not known)'),
        numericInput('n', 'Sample Size', 1, min=1, step=1),
        submitButton('Submit')
    ),
    mainPanel(
        h3('Z-Score'),
        verbatimTextOutput("zscore"),
        h3('P-value of lower tail') ,
        verbatimTextOutput("pvalue"),
        plotOutput("myplot")
    )
)
)