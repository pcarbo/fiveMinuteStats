library(MASS)

set.seed(3)

# Simulate n data points from a ridge regression model with p inputs.
# Other parameters: p1, the number of nonzero coefficients to simulate
# (should not be greater than p); s, the residual standard deviation
# (s.d.); s0, the prior s.d. used to simulate the nonzero
# coefficients; and r, the correlation among the inputs.
sim_ridge_data <- function (n, p, p1, s, s0, r) {
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
  lambda <- (s/s0)^2
  V <- s^2 * solve(crossprod(X) + lambda*diag(p))
  b <- drop(V %*% crossprod(X,y)/s^2)
  return(list(mean = b,var = diag(V)))
}

# TO DO: Explain here what this function does, and how to use it.
ridge_gs <- function (X, y, s, s0, niter, b = rep(0,ncol(X))) {
  p  <- length(b)
  B  <- matrix(0,p,niter)
  XX <- crossprod(X)
  xy <- drop(crossprod(X,y))
  for (i in 1:niter) {
    for (j in 1:p) {
      v    <- 1/(XX[j,j]/s^2 + 1/s0^2)
      mu   <- v * (xy[j] - sum(XX[j,-j]*b[-j]))/s^2
      b[j] <- rnorm(1,mu,sqrt(v))
    }
    B[,i] <- b
  }
  return(B)
}

# TO DO: Explain here what this function does, and how to use it.
plot_coefs_over_time <- function (B, show_average = FALSE) {
  p     <- nrow(B)
  niter <- ncol(B)
  if (show_average)
    B[1,] <- cumsum(B[1,])/1:niter
  plot(1:niter,B[1,],type = "l",lwd = 1,col = "dodgerblue",
       ylim = range(B),xlab = "iteration",ylab = "coefficient")
  for (j in 2:p) {
    if (show_average)
      B[j,] <- cumsum(B[j,])/1:niter
    lines(1:niter,B[j,],lwd = 1,col = "dodgerblue")
  }
}

n   <- 100
p   <- 20
s   <- 0.3
s0  <- 2
r   <- 0.8
sim <- sim_ridge_data(n,p,2,s,s0,r)
X   <- sim$X
y   <- sim$y

post <- ridge_post(X,y,s,s0)

niter <- 100
B <- ridge_gs(X,y,s,s0,niter)
plot_coefs_over_time(B)
points(rep(niter,p),post$mean,pch = 20,col = "darkblue",cex = 1)
plot_coefs_over_time(B,show_average = TRUE)
points(rep(niter,p),post$mean,pch = 20,col = "darkblue",cex = 1)

# TO DO: UPDATE THIS DESCRIPTION. Return the posterior distribution
# for the ridge regression model given data X, y, residual s.d. s, and
# prior s.d. s0.
ridge_post1 <- function (x, y, s, s0) {
  xx <- sum(x^2)
  xy <- sum(x*y)
  v <- s^2/(xx + (s/s0)^2)
  # v <- 1/(xx/s^2 + 1/s0^2)
  b <- v*xy/s^2
  return(list(mean = b,var = v))
}

# TO DO: Explain here what this function does, and how to use it.
ridge_coord_ascent <- function (X, y, s, s0, niter, b = rep(0,ncol(X))) {
  p <- length(b)
  B <- matrix(0,p,niter)
  for (i in 1:niter) {
    r <- drop(y - X %*% b)
    for (j in 1:p) {
      x <- X[,j]
      r <- r + x*b[j]
      b[j] <- ridge_post1(x,r,s,s0)$mean
      r <- r - x*b[j]
    }
    B[,i] <- b
  }
  return(B)
}

niter <- 10
B_map <- ridge_coord_ascent(X,y,s,s0,niter)
plot_coefs_over_time(B_map)
points(rep(niter,p),post$mean,pch = 20,col = "darkblue",cex = 1)
