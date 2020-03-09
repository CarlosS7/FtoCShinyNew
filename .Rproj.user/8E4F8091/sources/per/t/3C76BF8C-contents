####--SERVER SOLUTION--------------------------------------------------------------------------------------------

#
# SOLU
#



#### Model ####

output$actualTemp <- renderValueBox({
  actualTemp <- actualTemp()
  valueBox(
    actualTemp
    ,"Temp in F"
    ,icon = icon("check",lib='font-awesome')
    ,color = "orange")  
})

output$tempPred <- renderValueBox({
  tempPredicted <- tempPred()
  tmpPred <- tempPredicted[[2]]
  valueBox(
    round(tmpPred, digits=2)
    ,"Predicted Temp"
    ,icon = icon("bullseye",lib='font-awesome')
    ,color = "light-blue")  
})


output$model_plot <- renderPlot({
  
  results <- tempPred()
  history <- results[[1]]
  model_plot_f(history)
    
})





observeEvent(input$model_learn_more_button, {
  toggle("model_learn_more_div")  
})










