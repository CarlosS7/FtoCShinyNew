####--UI MODEL--------------------------------------------------------------------------------------------

#
# MODEL
#

tabItem_model <-
  tabItem(tabName = "model",
    fluidRow(
      column(width = 3,
             h2(icon("cube"), HTML("&nbsp;"),"Model")
             )
      
      ,box(
        title = ""
        ,collapsible = TRUE
        ,collapsed = FALSE
        ,width = 12
        ,background = NULL
        ,status = "primary"
        ,solidHeader = TRUE
        ,fluidRow(
          column(3, valueBoxOutput("actualTemp", width = 12))
          ,column(3, valueBoxOutput("tempPred", width = 12))
          
        )
        ,fluidRow(
          column(
            width = 6,
            plotOutput("model_plot") %>%
              withSpinner(type = 5, color = '#808080')
          ),
          column(
            width = 6,
            DT::dataTableOutput("model_feature_importance_dt")
          )
        )
        ,tags$h4("Parameters")
        ,column(
          width = 6
          ,setSliderColor(c("#008744", "#0057e7"), c(1, 2))
          ,numericInput("temp", "Actual Temp",
                       value = 30, min = -100, max = 500
          )
          ,sliderInput("epochs", "Epochs",
                       min = 1, max = 500, value = 10, step = 1
          )
          ,sliderInput("data_points", "Data Points",
                       min = 1, max = 1000, value = 10, step = 50
          )
          
        )
        ,fluidRow(
          column(
            width = 12
            ,align = "center"
            ,actionBttn(
              inputId = "model_learn_more_button"
              ,label = "Learn more"
              ,color = "default"
              ,style = "jelly"
            )
          )
        )
        ,hidden(
          div(
            id = "model_learn_more_div"
            ,fluidRow(
              column(
                width = 12
                ,tags$p("The goal is to see how TensorFlow creates a model by just \"watching\" a few data points.")
                ,tags$ul(
                  tags$li(tags$strong("Temp in F"), "is the temperature in Fahrenheit.")
                  ,tags$li(tags$strong("Epochs"), "is the number of epochs that you want to train the model in, the larger the better")
                  ,tags$li(tags$strong("Data Points"), "is the number of data points that you want to use to train the model with, the larger the better, however TF does a great job with just a few data points")
                  
                  )
                )
              )
            )
          )
        )
      )
    )


