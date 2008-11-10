\name{LIMTakapoto}
\docType{data}
\alias{LIMTakapoto}
\title{Linear inverse model specification for the Takapoto atoll planktonic food web}
\description{Linear inverse model specification for the Carbon flux model of the Takapoto atoll planktonic food web
\cr as reconstructed by inverse modelling by Niquil et al. (1998).

The Takapoto Atoll lagoon is located in the French Polynesia of the South Pacific

The food web comprises 7 functional compartments and three external compartments/sinks connected with 32 flows.
Units of the flows are mg C/m2/day


The linear inverse model LIMTakapoto is generated from the file Takapoto.input 
which can be found in subdirectory \url{/examples/FoodWeb} of the packages directory

In this subdirectory you will find many foodweb example input files
\cr These files can be read using \code{\link{Read}} and their output processed by 
\code{\link{Setup}} which will produce a linear inverse problem specification similar to LIMTakapoto}
\usage{data(LIMTakapoto)}
\format{a list of matrices, vectors, names and values that specify the linear inverse model problem.

see the return value of \code{\link{Setup}} for more information about this list

A more complete description of this structures is in vignette("LIM")}
\author{Karline Soetaert <k.soetaert@nioo.knaw.nl>
/cr     Dick van Oevelen<d.vanoevelen@nioo.knaw.nl>}
\examples{Takapoto <- Flowmatrix(LIMTakapoto)
plotweb(Takapoto,main="Takapoto atoll planktonic food web",
        sub="mgC/m2/day",lab.size=1)
# some ranges extend to infinity - they are marked with "*"
Plotranges(LIMTakapoto,lab.cex=0.7,sub="*=unbounded",xlab="mgC/m2/d",
        main="Takapoto atoll planktonic food web, Flowranges")
# ranges of variables, exclude first
Plotranges(LIMTakapoto,type="V",lab.cex=0.7, index=2:23,xlab="mgC/m2/d",
        main="Takapoto atoll planktonic food web, Variable ranges")
        }
\references{Niquil, N., Jackson, G.A., Legendre, L., Delesalle, B., 1998. Inverse
model analysis of the planktonic food web of Takapoto Atoll
(French Polynesia). Marine Ecology Progress Series 165, 17..29.}
\seealso{\code{\link{LIMRigaAutumn}} and many others}
\keyword{datasets}
