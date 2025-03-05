library(MASS)

# TO DO: Explain what this function does and how to use it.
sim_ridge_data <- function (n, p, p1, s = 1, s0 = 1, r = 0) {
  R <- matrix(r,p,p)
  diag(R) <- 1
  X <- mvrnorm(n,rep(0,p),R)
  X <- scale(X,center = TRUE,scale = FALSE)
  b <- rep(0,p)
  b[1:p1] <- rnorm(p1,sd = s0)
  y <- X %*% b + rnorm(n,sd = s)
  y <- drop(scale(y,center = TRUE,scale = FALSE))
  return(list(X = X,y = y,b = b))
}

# TO DO.
ridge_post <- function () {
  
}

# TO DO.
ridge_gs <- function () {

}

sim <- sim_ridge_data(n = 500,p = 40,p1 = 2,s = 0.3,s0 = 2,r = 0.5)
X <- sim$X
y <- sim$y
