library(MASS)

sim_ridge_data <- function (n, p, p1, s = 1, s0 = 1, r = 0) {
  R <- matrix(r,p,p)
  diag(R) <- 1
  X <- mvrnorm(n,rep(0,p),R))
    

}
