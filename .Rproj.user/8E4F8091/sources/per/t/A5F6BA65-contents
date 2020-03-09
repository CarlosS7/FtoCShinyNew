####--UI--------------------------------------------------------------------------------------------

#  
# The UI isn't really here but in server.R
# This allows dynamic control over UI elements
#

dashboardPage(skin = "blue",
              dashboardHeader(title = "Fahrenheit to Celsius"),
              dashboardSidebar(uiOutput("ui_sidebar")),
              dashboardBody(
                shinyDashboardThemes(
                  theme = "grey_light"
                ),
                useShinyjs(),
                uiOutput("ui_body")
              )
)