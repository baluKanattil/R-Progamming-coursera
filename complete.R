complete <- function(directory, id= 1:332){
  library(stringr)
  ids <- numeric()
  nobs <- numeric()
  for(i in id) {
    path<-paste(directory,'/',str_pad(i,3,pad='0'),'.csv',sep='')
    data_p<-read.csv(path)
    nob <- nrow(data_p[!(is.na(data_p$sulfate) | is.na(data_p$nitrate)),])
    nobs <- c(nobs,nob)
    ids <- c(ids,i)
  }
  complete_list <- data.frame(ids,nobs)
  colnames(complete_list)=c('ids','nobs')
  return(complete_list)
}
  

