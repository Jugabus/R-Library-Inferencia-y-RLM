estimacion <-
function(x,y){
    k=ncol(x)
    x<-cbind(1,x)
    x<-as.matrix(x)
    n=length(y)
    beta=solve(t(x)%*%x)%*%t(x)%*%y
    e=y-(x%*%beta)
    ee=t(e)%*%e
    r2=ee/(n-k-1)
    resul=list(beta,r2)
    names(resul)<-c("Beta","Varianza")
    return(resul)
}
