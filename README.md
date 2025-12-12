Vignette on implementing Monte Carlo simulation methods for numerical estimation and uncertainty quantification; created as a class project (Group 13) for PSTAT197A in Fall 2025.

# Monte Carlo Simulation Vignette

  Intro to Monte Carlo methods with examples, code, and visualizations.
  
*Contributors*

  * Philip Gurevich
  * Aakash Sriram
  * Soome (Katie) Pyo
  * Aashish Krishnan
  
*Vignette Abstract*

  This vignette provides a comprehensive introduction to Monte Carlo simulation methods, a powerful class of computational algorithms that use repeated random sampling to solve problems that would be difficult or impossible to solve directly. 
  We begin with the conceptual foundations and history of Monte Carlo methods, then demonstrate the core principles through two illustrative examples.
      (1) We estimate the value of π by randomly sampling points in a square and counting how many fall inside an inscribed circle—a visual and intuitive problem that shows how random sampling converges to the true answer as sample size increases.
      (2) We apply Gibbs sampling to estimate probability distributions in a network of interconnected variables, where direct calculation becomes intractable. 
      
We show how this technique extends to real-world applications like the Ising model in physics, where systems have exponentially many possible configurations. 
Through visualizations and step-by-step walkthroughs, we explore practical considerations including how many samples are needed, how to handle initialization bias with burn-in periods, and how to assess when estimates have converged. 
The vignette follows the essential Monte Carlo workflow—simulate, evaluate, average, converge—providing both conceptual understanding and hands-on R implementation skills applicable to problems in statistics, Bayesian inference, physics, machine learning, and scientific computing.

*Repository Contents*
```
  vignette-montecarlo/
  ├── data/
  │   ├── dummy.txt
  │   └── pi-sample.csv
  ├── img/
  │   ├── fig-MC-Workflow.jpg
  │   ├── fig-ising-model.png
  │   ├── fig-pi-convergence.png
  │   ├── fig-pi-scatter.png
  │   ├── fig-simple-graph.png
  │   ├── gibbs-result.png
  │   └── gibbs-sample.png
  ├── scripts/
  │   ├── .ipynb_checkpoints/
  │   ├── Untitled.ipynb
  │   ├── gen-images-pi.R
  │   └── pi-simulation.R
  ├── vignette_files/
  │   └── libs/
  ├── .gitignore
  ├── LICENSE
  ├── README.md
  ├── vignette-montecarlo.Rproj
  ├── vignette.html
  └── vignette.qmd
```
Key Files

- **`data/pi-sample.csv`**: Sample dataset used for π estimation demonstrations and analysis.

- **`scripts/pi-simulation.R`**: Contains the `estimate_pi()` function that implements Monte Carlo estimation of π with configurable sample sizes. Demonstrates random sampling within a unit square, geometric computation to test point inclusion within the inscribed circle, and convergence visualization.

- **`scripts/gen-images-pi.R`**: Generates publication-ready figures including scatter plots showing the spatial distribution of sampled points (colored by inside/outside circle status) and convergence plots tracking the π estimate across iterations.

- **`scripts/Untitled.ipynb`**: Jupyter notebook containing additional analysis and Gibbs sampling implementation.

- **`img/`**: Directory containing all visualizations including Monte Carlo workflow diagrams, π estimation plots (scatter and convergence), Gibbs sampling visualizations, directed graph illustrations, and Ising model figures.

- **`vignette.qmd/.html`**: The primary tutorial document that walks through Monte Carlo simulation from conceptual foundations to advanced applications. Covers: (1) history and motivation, (2) mathematical framework, (3) algorithm implementations, (4) π estimation example with full code, (5) Gibbs sampling demonstration, (6) practical considerations including sensitivity analysis and optimization techniques, and (7) discussion of applications, advantages, and limitations.

*References*
  
  1. Kroese, D. P., Brereton, T., Taimre, T., & Botev, Z. I. (2014).
      Comprehensive overview of Monte Carlo methods, their history, and modern applications across fields. Excellent starting point for understanding the breadth and importance of these techniques.
  2. Robert, C. P., & Casella, G. (2004).
      Authoritative textbook covering Monte Carlo integration, variance reduction techniques, and Markov Chain Monte Carlo. Chapters 1-3 provide accessible theoretical foundations.
  3. MATLAB Documentation: Monte Carlo Simulation.
      Practical tutorial with examples in finance and engineering. Useful for seeing Monte Carlo applied to real-world problems beyond π estimation.
  4. Rasmussen, C. E. (2024). "Monte Carlo Methods"
      Lecture notes explaining convergence properties, importance sampling, and connections to machine learning applications.


