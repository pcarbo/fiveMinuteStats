library(MASS)

set.seed(3)

# Simulate n data points from a ridge regression model with p inputs.
# Other parameters: p1, the number of nonzero coefficients to simulate
# (should not be greater than p); s, the residual standard deviation
# (s.d.); s0, the prior s.d. used to simulate the nonzero
# coefficients; and r, the correlation among the inputs.
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

# Return the posterior distribution for the ridge regression model
# given data X, y, residual s.d. s, and prior s.d. s0.
ridge_post <- function (X, y, s, s0) {
  p <- ncol(X)
  V <- s^2 * solve(crossprod(X) + (s/s0)^2*diag(p))
  return(list(cov = V,mean = drop(V %*% crossprod(X,y)/s^2)))
}

# TO DO.
ridge_gs <- function () {

}

s <- 0.1
s0 <- 2
sim <- sim_ridge_data(n = 500,p = 40,p1 = 2,s = s,s0 = s0,r = 0.5)
X <- sim$X
y <- sim$y

post <- ridge_post(X,y,s,s0)
