ridge_post1 <- function (x, y, s, s0) {
  xx <- sum(x^2)
  xy <- sum(x*y)
  v <- s^2/(xx + (s/s0)^2)
  b <- v*xy/s^2
  return(list(mean = b,var = v))
}

# TO DO: Explain here what this function does, and how to use it.
ridge_iterative <- function (X, y, s, s0, niter, b = rep(0,ncol(X))) {
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

niter <- 20
B_map <- ridge_coord_ascent(X,y,s,s0,niter)
plot_coefs_over_time(B_map)
points(rep(niter,p),post$mean,pch = 20,col = "darkblue",cex = 1)
