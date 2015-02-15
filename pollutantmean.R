pollutantmean <- function(directory, pollutant,id=1:332){
  library(stringr)
  data_mean<-numeric()
  for(i in id) {
    path<-paste(directory,'/',str_pad(i,3,pad='0'),'.csv',sep='')
    data_p<-read.csv(path)
    data_mean<-c(data_mean,data_p[pollutant][,])
  }
  
  total_mean<-mean(data_mean,na.rm=T)
  print(total_mean)
}