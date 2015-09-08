#' @name learn_do15
#' @title Learn Back Propagation in 11 lines
#' @param X input data
#' @param y output data
#' @param alpha alpha to be used
#' @param hidden_dim dimension of the hidden layer
#' @param dropout_percent percentage to be used for the dropout
#' @param do_dropout should dropout be used
#' @importFrom stats rbinom
#' @importFrom stats runif
#' @export
#' @references \url{http://qua.st/handcoding-dropout/}
#' @examples
#' # construct data
#' X = matrix(c(0,0,1,0,1,1,1,0,1,1,1,1), nrow=4, byrow=TRUE)
#' y = matrix(c(0,1,1,0),nrow=4)
#'
#' # set hyperparameters
#' alpha = 0.5
#' hidden_dim = 4
#' dropout_percent = 0.2
#' do_dropout = TRUE
#'
#' # run 11 lines function
#' learn_do15(X, y, alpha, hidden_dim, dropout_percent, TRUE)
#'
#' # view output
#' synapse_0
#' synapse_1


learn_do15 <- function(X, y, alpha, hidden_dim, dropout_percent, do_dropout=TRUE) {
  # no importing here
  synapse_0 = matrix(runif(n = 3*hidden_dim, min=-1, max=1), nrow=3)
  synapse_1 = matrix(runif(n = hidden_dim, min=-1, max=1), ncol=1)
  for (j in 1:60000) {
    layer_1 = 1 / ( 1 + exp(-( X%*%synapse_0)) )
    if (do_dropout) {
      layer_1 = layer_1 * matrix(rbinom(n=4*hidden_dim,size=1,prob=1-dropout_percent), nrow=hidden_dim) * ( 1/(1*dropout_percent) ) }
    layer_2 = 1 / ( 1 + exp(-(layer_1%*%synapse_1)) )
    layer_2_delta = (layer_2-y)*(layer_2*(1-layer_2))
    layer_1_delta = (layer_2_delta %*% t(synapse_1)) * (layer_1*(1-layer_1))
    synapse_1 <<- synapse_1 - alpha * ( t(layer_1) %*% layer_2_delta )
    synapse_0 <<- synapse_0 - alpha * ( t(X) %*% layer_1_delta )                 }
}
