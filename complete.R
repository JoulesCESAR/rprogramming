#directory<-'specdata'
complete<-function(directory,id = 1:2){
  address<-NULL
for(i in id){  
  if(i <= 9){
    address<-rbind(address,paste(directory,'/','00',i,'.csv', sep = ''))
  } 
  else if(i > 9 && i <= 99){
    address<-rbind(address,paste(directory,'/','0',i,'.csv', sep = ''))
  } 
  else{
    address<-rbind(address,paste(directory,'/',i,'.csv', sep = ''))
  }
  
}

data<-read.csv(address[1,])
if(length(address)>1){
  for(j in 2:length(address)){   
  data<-rbind(data,read.csv(address[j,]))  
  data<-as.data.frame(data)
}

}
  
data<-subset(data,!(is.na(data$sulfate)))
data<-subset(data,!(is.na(data$nitrate)))
rownames(data)<-NULL

nobs<-NULL
for(j in unique(data$ID)){
  nobs<-rbind(nobs,nrow(subset(data,data$ID == j)))
}

datafile<-as.data.frame(cbind(unique(data$ID),nobs))
colnames(datafile)<-c('id','nobs')
datafile[order(datafile, decreasing = FALSE),]
return(datafile)
}

#complete('specdata',332:1)
