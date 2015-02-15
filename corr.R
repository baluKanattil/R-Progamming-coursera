corr <- function(directory,threshold=0){
  library(stringr)
  cor_list=numeric()
  data=complete(directory)
  data=data[data$nobs>threshold,]
  for(i in data$ids){
      path<-paste(directory,'/',str_pad(i,3,pad='0'),'.csv',sep='')
      data_p<-read.csv(path)
      data_clean=data_p[!(is.na(data_p$sulfate) | is.na(data_p$nitrate)),]
      cor_list=c(cor_list,cor(data_clean$sulfate,data_clean$nitrate))
    
      }
  return(cor_list)
}