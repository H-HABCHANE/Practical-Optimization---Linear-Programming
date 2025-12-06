# Practical-Optimization---Linear-Programming
Exercises Linear Programming
📘 Contents
1. Primal–Dual Linear Programming

Formulation of a dual LP

Verification of feasibility for given primal/dual points

Reasoning about optimality without solving the LP

2. Chebyshev Approximation

Using dataset cheb.dat, the goal is to approximate points with a degree-5 polynomial through:

2.1 Chebyshev (∞-norm) Approximation

Reformulated as a linear program

AMPL modeling

Solved using the SNOPT solver

2.2 Least-Squares (2-norm) Approximation

Solve a linear least-squares problem to obtain polynomial coefficients

2.3 ℓ1-Norm Approximation

Reformulation using auxiliary variables

Solved as a linear program

2.4 Comparison of All Methods

Compute residual norms:

∥·∥₁

∥·∥₂

∥·∥∞

3×3 comparison table

Plot of the three polynomials with the dataset

Conclusions on approximation quality

3. Textiles Firm Optimization Problem

A real-world cost minimization LP involving:

Manufacturers with price & capacity constraints

Import quota

Demand satisfaction for 4 clothing styles

Tasks include:

LP formulation

AMPL implementation

Solving with MINOS and LOQO

Comparing:

Optimal value

Solution

Number of iterations

Sensitivity analysis:

Effect of quota change

Effect of ±5% variation in orders
