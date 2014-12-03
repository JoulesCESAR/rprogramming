#source("Rsource/complete.R")
#directory<-getwd() #Getting the work directory
corr<- function(directory, threshold = 400){

  compl<-complete(directory,1:332)
  compl<-subset(compl,compl[,2] > threshold )
  rownames(compl)<-NULL
  
  address<-NULL
for(i in id){  
  if(i <= 9){
    #address<-rbind(address,paste(directory,'/specdata/','00',i,'.csv', sep = ''))
    address<-rbind(address,paste(directory,'/','00',i,'.csv', sep = ''))
  } 
  else if(i > 9 && i <= 99){
    #address<-rbind(address,paste(directory,'/specdata/','0',i,'.csv', sep = ''))
    address<-rbind(address,paste(directory,'/','0',i,'.csv', sep = ''))
  } 
  else{
    #address<-rbind(address,paste(directory,'/specdata/',i,'.csv', sep = ''))
    address<-rbind(address,paste(directory,'/',i,'.csv', sep = ''))
  }
  
}

data<-read.csv(address[1,])
if(length(address)>1){
  for(j in 2:length(address)){ #j<-3
  
  data<-rbind(data,read.csv(address[j,]))  
  data<-as.data.frame(data)
}

}

  
data<-subset(data,!(is.na(data[,2])) )
data<-subset(data,!(is.na(data[,3])) )
rownames(data)<-NULL


cr<-NULL
for(j in unique(data$ID)){#j<-2
  x<-subset(data,data$ID == j)[,2]
  y<-subset(data,data$ID == j)[,3]
  cr<-rbind(cr, cor(x,y))
}

return(cr)
}


#corr(directory, 150)