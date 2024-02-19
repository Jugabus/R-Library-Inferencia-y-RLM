\encoding{latin1}
\name{Nulidad}
\alias{Nulidad}

\title{Contraste de nulidad y sobre un subvector}
\description{Resuelve los contrastes de nulidad de los parámetros del modelo y contrastes sobre un subvector del vector de parámetros.
}
\usage{
nulidad(x,y,i,alpha)
}

\arguments{
  \item{x}{un objeto matriz de las variables independientes}
  \item{y}{un objeto vector de la variable dependiente}
  \item{i}{un objeto numérico que indique el coeficiente de beta sobre el que se quiere hacer el contraste}
  \item{j}{un objeto numérico que indique el coeficiente de beta sobre el que se quiere hacer el contraste}
  \item{alpha}{un objeto númerico que indique el nivel de significación del contraste}
  \item{beta0}{un objeto vector que indique el valor de los beta en el contraste del subvector que queremos realizar}
}
\details{
Realiza el contraste de nulidad sobre los betas que indiquemos de un modelo de regresión lineal múltiple. Para ello debemos de indicar primero las variables independientes mediantes una matriz, luego el vector que contenga a la variable dependiente.
\cr
\cr
Además debemos de indicar el número del beta sobre el que queremos realizar el contraste. También hay que indicar el valor del alpha de nuestro contraste.
\cr
\cr
También realiza un contraste de un subvector de los betas que nosotros le indiquemos.
\cr
\cr
En pantalla nos mostrará si se acepta o se rechaza ambas  hipótesis nulas, diferenciando entre el contraste de nulidad y del subvector.
}
\value{
La función \code{nulidad} nos muestra \dQuote{Se rechaza la hipótesis nula} si el estadístico \code{Texp} de contraste en valor absoluto es estrictamente mayor que el valor de la \code{t-student} asociado en el contraste de nulidad primero.
\cr
\cr
Y nos muestra \dQuote{No se rechaza la hipótesis nula} si el estadístico de contraste en valor absoluto es menor o igual que el valor de la \dQuote{t-student} asociado.
\cr
\cr
Además nos muestra \dQuote{Se rechaza la hipótesis nula} si el estadístico de contraste \code{Fexp} es estrictamente mayor que el valor de la \code{F-snedecor}.
\cr
\cr
Y si el estadístico de contraste \code{Fexp} es menor o igual que el valor de la \code{F-snedecor} asociado nos muestra \dQuote{No se rechaza la hipótesis nula}.

}
\references{
Formulario Regresión Lineal
\cr
\cr
Ejemplos Regresión Lineal
}
\author{
Julio García Bustos,
Juan Luis Martínez Gualda,
Juan José De la Hoz Gómez y
Eduardo Arroyo Galán
}


\examples{
x<-matrix(c(3,1,5,2,4,5,4,6,4,6),ncol=2)
y<-c(3,1,8,3,5)
alpha<-0.05
i<-1
j<-2
beta0<-c(1,-2)
nulidad(x,y,i,j,alpha,beta0)
}

\keyword{classes}
\keyword{list}
\keyword{methods}
\keyword{print}
