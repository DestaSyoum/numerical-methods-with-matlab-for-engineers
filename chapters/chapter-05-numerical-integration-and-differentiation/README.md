# Chapter 5: Numerical Integration and Differentiation

## Chapter overview

Numerical calculus estimates integrals and derivatives when the underlying function is known only at discrete points or when analytic calculation is impractical. This chapter introduces common quadrature rules and finite-difference derivatives.

## Learning outcomes

Students should be able to select a quadrature rule, estimate integration error by refinement, compute finite-difference derivatives, and explain the trade-off between truncation error and roundoff or noise.

## 5.1 Numerical integration formulas

The trapezoidal rule approximates a function by straight segments. Simpson's rule uses quadratic segments and is generally more accurate for smooth functions when an even number of subintervals is used.

- [composite_simpson.m](../../src/composite_simpson.m)

## 5.2 Integration of functions

Refining the integration mesh provides an empirical error check: compare estimates calculated with progressively smaller step sizes. When measurements are noisy, refinement may not improve the result indefinitely.

- [integration_demo.m](../../examples/integration_demo.m)
- [Integration figure](../../figures/19_20_integration.png)

## 5.3 Numerical differentiation

The central-difference formula estimates a derivative from values on both sides of the point of interest. It has lower truncation error than a forward difference, but differentiation amplifies noise and excessively small steps can increase roundoff error.

- [central_difference.m](../../src/central_difference.m)
- [differentiation_demo.m](../../examples/differentiation_demo.m)
- [Differentiation figure](../../figures/21_numerical_differentiation.png)

## Guided questions

1. Why must the number of subintervals be even for composite Simpson's rule?
2. How can mesh refinement be used to estimate integration accuracy?
3. Why is numerical differentiation more sensitive to noisy data than integration?
4. Why does making the step size extremely small not always improve a derivative estimate?

## Run this chapter

```matlab
addpath('src');
addpath('examples');

integration_demo
differentiation_demo
```

## Chapter summary

| Method | Purpose | Main condition |
| --- | --- | --- |
| Composite Simpson's rule | Integrate smooth functions | Use an even number of subintervals |
| Mesh refinement | Assess integration accuracy | Compare successive estimates |
| Central difference | Estimate a first derivative | Balance step size against noise and roundoff |
