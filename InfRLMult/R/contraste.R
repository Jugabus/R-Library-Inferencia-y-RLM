contraste <-
function(x,y,alpha,R,r){
    k=ncol(x)
    n=length(y)
    q<-nrow(R)
    f<-qf(alpha,q,(n-k-1),lower.tail = F)
    x=cbind(1,x)
    C<-solve(t(x)%*%x)
    beta=solve(t(x)%*%x)%*%t(x)%*%y
    e=y-(x%*%beta)
    ee=t(e)%*%e
    r2=ee/(n-k-1)
    r2<-as.numeric(r2)
    fexp<-(t(R%*%beta-r)%*%solve(R%*%C%*%t(R))%*%(R%*%beta-r))/(q*r2)
    
    z=if(fexp>f){
        "Se rechaza la hipótesis nula"
    }else {print("No se rechaza la hipótesis nula")
        res<-beta+C%*%t(R)%*%solve(R%*%C%*%t(R))%*%(r-R%*%beta)
        colnames(res)<-"Beta"
        res
    }
    
    return(z)
    
}
