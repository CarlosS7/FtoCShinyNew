# Functions for producing plots from data and parameters

model_plot_f <- function(history){
  #plot(history, xlim = c(0, 600), ylim = c(0, max(history$metric$loss, na.rm=TRUE)), smooth = getOption("keras.plot.history.smooth", FALSE)) + geom_point(size = 0.5) + geom_line()
  history_df <- as.data.frame(history)
  p <- ggplot(data=subset(history_df, !is.na(epoch)), aes(x=epoch, y=value)) + geom_point(size=0.02) + geom_line() + labs (x="epoch", y="loss")
  p
}

