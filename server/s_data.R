####--SERVER DATA--------------------------------------------------------------------------------------------

#
# DATA
#

#### Datasets ####

mushroom <- reactive({
  read_mushroom()
})

#
# ML data
#

actualTemp <- reactive({
  df <- read_mushroom()
  actualTemperature <- df$c[df$f==input$temp]
  actualTemperature
})

tempPred <- reactive({
  df <- mushroom()
  
  # Setup model
  model <- keras_model_sequential()
  model %>%
    layer_dense(units=1, input_shape=c(1))
  model %>% compile(
    loss='mean_squared_error',
    optimizer=optimizer_adam(0.1)
  )
  df_pred <- df
  # Randomize data points to avoid bias
  set.seed(3)
  rows <- sample(nrow(df_pred))
  df_rand <- df_pred[rows,]
  df_pred <- df_rand[1:input$data_points,]
  history <- model %>% fit(df_pred$f, df_pred$c, epochs=input$epochs)
  df_pred <- df_pred %>% mutate(c = model%>%predict(df_pred$f))
  temp <- model %>% predict(input$temp)
  results <- list(history, temp)
})






