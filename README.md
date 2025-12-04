Monte Carlo Simulation Vignette

  Intro to Monte Carlo methods with examples, code, and visualizations.
  
  Vignette on implementing Monte Carlo simulation methods for numerical estimation and uncertainty quantification; created as a class project (Group 13) for PSTAT197A in Fall 2025.

Contributors

  * Philip Gurevich
  * Aakash Sriram
  * Soome (Katie) Pyo
  * Aashish Krishnan
  
Vignette Abstract

  This vignette provides a comprehensive introduction to Monte Carlo simulation methods, a powerful class of computational algorithms that use repeated random sampling to obtain numerical results. 
  We begin with the conceptual foundations and history of Monte Carlo methods, then progress through their mathematical framework and step-by-step implementation process. 
  The vignette demonstrates two key examples: 
      (1) estimating π by uniformly sampling points within a unit square and determining the proportion that fall inside an inscribed circle—a classic geometric problem that illustrates how the Monte Carlo estimator π^=4⋅(inside/n)\hat{\pi} = 4 \cdot (\text{inside}/n)
  π^=4⋅(inside/n) converges to the true value of π as sample size increases, demonstrating the Law of Large Numbers in action
      (2) Gibbs sampling, a Markov Chain Monte Carlo (MCMC) technique used in Bayesian inference and complex statistical modeling. 
      
Through visualizations including scatter plots of sampled points and convergence plots tracking estimates across iterations, we show how initially noisy estimates stabilize as sample sizes grow from hundreds to thousands of iterations. 
We explore practical considerations including convergence diagnostics, variance reduction techniques, and computational optimization strategies such as burn-in periods. 
The vignette follows the essential Monte Carlo workflow—simulate, evaluate, average, converge—providing both theoretical understanding and hands-on implementation skills applicable to real-world problems in statistics, finance, machine learning, and scientific computing.

  





