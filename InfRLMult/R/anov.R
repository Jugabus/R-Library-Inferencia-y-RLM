anov <-
function(x,y,alpha){
    k=ncol(x)
    n=length(y)
    mediay=mean(y)
    x=cbind(1,x)
    beta=solve(t(x)%*%x)%*%t(x)%*%y
    e=y-(x%*%beta)
    ee=t(e)%*%e
    sigma2=ee/(n-k-1)
    vt=t(y)%*%y-n*mediay^2
    vne=t(y)%*%y-t(beta)%*%t(x)%*%y
    ve=vt-vne
    mcregresion=ve/k
    mcerror=vne/(n-k-1)
    cocienteF=mcregresion/mcerror
    pvalue=pf(cocienteF,k,(n-k-1),lower.tail = F)
    coefdet=ve/vt
    
    z=if(pvalue<alpha){
        "Se rechaza la hipótesis nula, entonces el coeficiente de determinación es distinto de 0"
    }else {"No se rechaza la hipótesis nula, por lo tanto el coeficiente de determinación es 0"}
    
    Fuente = c("VE", "VNE", "VT") 
    S.C = c(ve,vne,vt)
    G.L = c(k,n-k-1,n-1) 
    C.M = c(mcregresion,mcerror,"")
    Fexp=c(cocienteF,"","")
    pvalor=c(pvalue,"","")
    tabla=data.frame(Fuente,S.C,G.L,C.M,Fexp,pvalor) 
    resultado=list(tabla,coefdet,z)
    names(resultado)=c("ANOVA","Coeficiente de determinación","Contraste de regresión")
    
    return(resultado)
}
