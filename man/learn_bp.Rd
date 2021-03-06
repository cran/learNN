% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/learn_bp.R
\name{learn_bp}
\alias{learn_bp}
\title{Learn Back Propagation}
\usage{
learn_bp(X, y)
}
\arguments{
\item{X}{input data}

\item{y}{output data}
}
\description{
Learn Back Propagation
}
\examples{
# create data
X = matrix(c(0,0,1,
             0,1,1,
             1,0,1,
             1,1,1), nrow=4, byrow=TRUE)

y = matrix(c(0,
             1,
             1,
             0),
             nrow=4)

# run full function
learn_bp(X, y)
}
\references{
\url{http://qua.st/handcoding-neural-network/}

\url{http://qua.st/handcoding-neural-network/}
\url{http://iamtrask.github.io/2015/07/12/basic-python-network/}
}

