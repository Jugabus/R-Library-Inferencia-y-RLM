
intervalo <-
function(x,y,alpha){
    n=length(y)
    k=ncol(x)
    t<-qt(alpha/2,(n-k-1),lower.tail = F)
    q1<-qchisq(alpha/2,(n-k-1),lower.tail = F)
    q2<-qchisq((1-alpha/2),(n-k-1),lower.tail = F)
    x<-cbind(1,x)
    x<-as.matrix(x)
    C<-solve(t(x)%*%x)
    c<-diag(C)
    beta=solve(t(x)%*%x)%*%t(x)%*%y
    e<-x%*%beta-y
    ee<-t(e)%*%e
    r2<-ee/(n-k-1)
    r2<-as.numeric(r2)
    inferior<-beta-t*sqrt(r2*c)
    superior<-beta+t*sqrt(r2*c)
    inferior1<-((n-k-1)*r2)/(q1)
    superior1<-((n-k-1)*r2)/(q2)
    betas<-cbind(inferior, superior)
    colnames(betas)<-c("Inferior","Superior")
    R2<-cbind(inferior1,superior1)
    colnames(R2)<-c("Inferior","Superior")
    resultado<-list(betas,R2)
    names(resultado)<-c("Intervalo de los Beta", "Intervalo de la varianza de los errores")
    
    return(resultado)
}

