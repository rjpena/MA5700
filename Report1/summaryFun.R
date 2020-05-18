summaryFun = function(x) {
  x <- x[ !is.na(x) ]
  q <- quantile(x)
  summ <- c(length(x), mean(x), median(x), IQR(x), sd(x), q[1], q[2], q[4], q[5])
  names(summ) <- c('n', 'Mean', 'Median', 'IQR', 'SD', 'Min.', 'Q1', 'Q3', 'Max.')
  return(summ)
}