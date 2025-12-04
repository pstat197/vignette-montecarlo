# Monte Carlo estimation of pi

estimate_pi <- function(n = 5000) {
  x <- runif(n, -1, 1)
  y <- runif(n, -1, 1)
  inside <- (x^2 + y^2) <= 1
  
  list(
    pi_hat = 4 * mean(inside),
    x = x,
    y = y,
    inside = inside
  )
}

# Example simulation
set.seed(197)
res <- estimate_pi()

# Figures
library(ggplot2)

df <- data.frame(x = res$x, y = res$y, inside = res$inside)

p_scatter <- ggplot(df, aes(x, y, color = inside)) +
  geom_point(alpha = 0.6, size = 0.7) +
  coord_equal() +
  theme_minimal() +
  labs(title = "Monte Carlo Sampling for Estimating π",
       color = "Inside Circle")

ggsave("img/pi-scatter.png", p_scatter, width = 6, height = 6)

# Convergence figure
n <- 10000
x <- runif(n, -1, 1)
y <- runif(n, -1, 1)
inside <- (x^2 + y^2) <= 1

pi_est <- 4 * cumsum(inside) / seq_len(n)

df_conv <- data.frame(iteration = seq_len(n), estimate = pi_est)

p_conv <- ggplot(df_conv, aes(iteration, estimate)) +
  geom_line(color = "blue") +
  geom_hline(yintercept = pi, linetype = "dashed", color = "red") +
  theme_minimal() +
  labs(title = "Convergence of π Estimate",
       x = "Iteration",
       y = "Estimate")

ggsave("img/pi-convergence.png", p_conv, width = 7, height = 4)
