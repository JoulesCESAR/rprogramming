#directory<-'specdata'
pollutantmean<-function(directory,poullant, id = 3){
  
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
  for(j in 2:length(address)){ #j<-3
  
  data<-rbind(data,read.csv(address[j,]))  
  data<-as.data.frame(data)
}

}

  if(poullant == 'sulfate'){
    m<-mean(subset(data[,2],!is.na(data[,2])))
  }
  else if(poullant == 'nitrate'){
    m<-mean(subset(data[,3],!is.na(data[,3])))    
  }
  
  return(m)
}

#pollutantmean(directory,poullant = 'nitrate', id = 70:72)
