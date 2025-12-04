# Monte Carlo Estimation of Pi

estimate_pi <- function(n) {
  x <- runif(n, -1, 1)
  y <- runif(n, -1, 1)
  inside <- (x^2 + y^2) <= 1
  pi_hat <- 4 * mean(inside)

  return(list(pi_hat = pi_hat, x = x, y = y, inside = inside))
}

# Example run
set.seed(197)
res <- estimate_pi(5000)
res$pi_hat


df <- data.frame(x = res$x, y = res$y, inside = res$inside)
write.csv(df, "data/pi-sample.csv", row.names = FALSE)
