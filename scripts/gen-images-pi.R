source("scripts/pi_simulation.R")
library(ggplot2)

# Scatter plot
df <- data.frame(x = res$x, y = res$y, inside = res$inside)

p1 <- ggplot(df, aes(x, y, color = inside)) +
  geom_point(size = 0.7, alpha = 0.7) +
  coord_equal() +
  theme_minimal() +
  labs(title = "Monte Carlo Sampling for Estimating π")

ggsave("img/pi-scatter.png", p1, width = 6, height = 6)

# Convergence plot
n <- 10000
x <- runif(n, -1, 1)
y <- runif(n, -1, 1)
inside <- (x^2 + y^2) <= 1
pi_est <- 4 * cumsum(inside) / seq_len(n)

df2 <- data.frame(iteration = seq_len(n), estimate = pi_est)

p2 <- ggplot(df2, aes(iteration, estimate)) +
  geom_line(color = "blue") +
  geom_hline(yintercept = pi, color = "red", linetype = "dashed") +
  theme_minimal() +
  labs(title = "Convergence of π Estimate")

ggsave("img/pi-convergence.png", p2, width = 7, height = 4)
