prediccion <-function(x,y,x0,alpha){
    
    k=ncol(x)
    n=length(y)
    t<-qt(alpha/2,(n-k-1),lower.tail = F)
    x=cbind(1,x)
    C<-solve(t(x)%*%x)
    beta=solve(t(x)%*%x)%*%t(x)%*%y
    e=y-(x%*%beta)
    ee=t(e)%*%e
    r2=ee/(n-k-1)
    r2<-as.numeric(r2)
    
    y0<-x0%*%beta
    inferior<-y0-t*sqrt(r2*t(x0)%*%C%*%x0)
    superior<-y0+t*sqrt(r2*t(x0)%*%C%*%x0)
    
    inferior1<-y0-t*sqrt(r2)*sqrt(t(x0)%*%C%*%x0+1)
    superior1<-y0+t*sqrt(r2)*sqrt(t(x0)%*%C%*%x0+1)
    
    Intervalo_media<-cbind(inferior,superior)
    Intervalo_respuesta<-cbind(inferior1,superior1)
    resultado<-list(y0,Intervalo_media,Intervalo_respuesta)
    names(resultado)<-c("Predicción","Intervalo de la predicción de la media de la variable respuesta","Intervalo de la predicción de la variable respuesta")
    
    return(resultado)
}
