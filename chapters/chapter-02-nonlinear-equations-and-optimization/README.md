# Chapter 2: Nonlinear Equations and Optimization

## Chapter overview

Engineering models often lead to equations that cannot be rearranged to give an exact solution. Numerical methods provide systematic procedures for estimating the required value to a stated tolerance. This chapter introduces reliable root-finding methods and a derivative-free optimization method for a bounded design problem.

## Learning outcomes

After completing this chapter, students should be able to:

1. formulate a nonlinear equation as `f(x) = 0`;
2. select an appropriate root-finding method from the information available;
3. implement bisection and Newton-Raphson methods in MATLAB;
4. define and apply sensible convergence criteria; and
5. solve a bounded, one-dimensional optimization problem using golden-section search.

## 2.1 Bracketing methods

### Bisection method

For a continuous function, if `f(a)` and `f(b)` have opposite signs, then a root lies in the interval `[a, b]`. The bisection method repeatedly divides this interval in half and retains the half that contains the sign change.

**Strengths:** reliable, easy to implement, and does not require a derivative.

**Limitation:** convergence is steady but relatively slow.

### MATLAB material

- [bisection.m](../../src/bisection.m) - reusable implementation with tolerance and iteration controls.
- [root_finding_demo.m](../../examples/root_finding_demo.m) - demonstration using `f(x) = cos(x) - x`.
- [Root-finding figure](../../figures/05_06_root_finding.png) - graphical interpretation of the solution.

### Check your understanding

1. Why is a sign change required before applying bisection?
2. What happens to the width of the bracket after `n` iterations?
3. Which stopping criterion is more appropriate when the function values are poorly scaled: residual size or interval width?

## 2.2 Open methods

### Newton-Raphson method

Newton-Raphson uses the tangent to the function at the current estimate:

```text
x_(k+1) = x_k - f(x_k) / f'(x_k)
```

Near a simple root, Newton-Raphson can converge very quickly. Its behaviour depends on the initial estimate and on a derivative that is not close to zero.

### MATLAB material

- [newton_raphson.m](../../src/newton_raphson.m) - implementation with a derivative check.
- [root_finding_demo.m](../../examples/root_finding_demo.m) - comparison with bisection for the same equation.

### Check your understanding

1. Why can Newton-Raphson fail when `f'(x)` is close to zero?
2. Compare the iteration counts for bisection and Newton-Raphson in the example.
3. Change the initial estimate. Does the method still converge to the same root?

## 2.3 One-dimensional optimization

### Golden-section search

Golden-section search finds the minimum of a bounded, unimodal function without requiring derivatives. At each iteration, it reduces the interval containing the minimum while reusing one previous function evaluation.

### MATLAB material

- [golden_section.m](../../src/golden_section.m) - scalar minimization over a closed interval.
- [optimization_demo.m](../../examples/optimization_demo.m) - a bounded design-objective example.
- [Optimization figure](../../figures/07_optimization.png) - the objective curve and calculated minimum.

### Check your understanding

1. What does unimodal mean in the context of a bounded optimization problem?
2. Why is an interval required for golden-section search?
3. How would an engineering constraint change the optimization model?

## Worked session

Run the demonstrations from the repository root:

```matlab
addpath('src');
addpath('examples');

root_finding_demo
optimization_demo
```

For each method, record the stopping tolerance, iteration count, final estimate, and residual. Then explain whether the method was appropriate for the problem.

## Chapter summary

| Method | Use when | Important condition |
| --- | --- | --- |
| Bisection | Reliability is the priority and a bracket is known | The function changes sign across the interval |
| Newton-Raphson | A derivative and a reasonable initial estimate are available | The derivative is not close to zero |
| Golden-section search | A bounded scalar objective has one minimum in the interval | The objective is unimodal on the interval |
