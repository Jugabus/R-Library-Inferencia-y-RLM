
nulidad<-function(x,y,i,j,alpha,beta0){
    n=length(y)
    k=ncol(x)
    x=cbind(1,x)
    beta=solve(t(x)%*%x)%*%t(x)%*%y
    e<-x%*%beta-y
    ee=t(e)%*%e
    sigma2<-ee/(n-k-1) 
    sigma2<-as.numeric(sigma2)
    C<-solve(t(x)%*%x)
    c<-diag(C)
    texp=beta[i]/sqrt(sigma2*c[i])
    t=qt(alpha/2,(n-k-1),lower.tail = FALSE)
    
    r<-length(beta0)
    f=qf(alpha,r,(n-k-1),lower.tail = FALSE)
    fexp=((beta[(i+1):(j+1),]-t(beta0))%*%solve(C[(i+1):(j+1),(i+1):(j+1)])%*%t(t(beta[(i+1):(j+1),])-t(beta0)))/(r*sigma2)
   
    aa=if(abs(texp)>t){"Se rechaza la hipótesis nula"
   }else {"No se rechaza la hipótesis nula"}
   
    a1=if(fexp>f){"Se rechaza la hipótesis nula"
    }else {"No se rechaza la hipótesis nula"}
    
    resultado<-list(aa,a1)
    names(resultado)<-c("Contraste de Nulidad","Contraste de un subvector")
  return(resultado)
}




