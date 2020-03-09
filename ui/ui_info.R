####--UI INFO--------------------------------------------------------------------------------------------

#
# INFO
#

tabItem_info <-
  tabItem(tabName = "info",
    fluidRow(
      column(width = 3,
             h2(icon("question-circle"), HTML("&nbsp;"),"Info")
             )
    ,box(
      title = "TF F to C",
      width = 12,
      collapsible = TRUE,
      collapsed = FALSE,
      status = "primary",
      solidHeader = TRUE,
        tags$p("Your task is to move the sliders under the model chart and view the effect on
                prediction accuracy."
                  ), 
          tags$ol(
            tags$li("The model uses XGBoost algorithm to predict if a mushroom is edible or poisonous."),
            tags$li("The baseline is based on the most frequent feature in the training set."),
            tags$li("Top 10 features are listed to the right of the chart."),
            tags$li("The data is sourced from the UCI Machine Learning repository.")
          ),
      br(),
      img(src='mushroom.jpg', align = "left")
      )
    )
    )
