# Chapter 2 - Roots and Optimization

This chapter develops two related ideas: finding a point where a model reaches a target value, and choosing an input that gives the best design outcome. The implementations are written from first principles in MATLAB so each iteration is visible.

## Section 5 - Bracketing methods

### Idea

If a continuous function changes sign between `a` and `b`, at least one root lies in that interval. Bisection repeatedly halves the interval and keeps the half that still brackets the sign change.

### Why it matters

Bisection is not the fastest root solver, but it is reliable. It is a sensible first choice when the available information is limited to function evaluations and a valid bracket.

### Implementation and example

- [bisection.m](../../src/bisection.m) implements the method and records every iterate.
- [root_finding_demo.m](../../examples/root_finding_demo.m) solves `cos(x) - x = 0`.
- [Generated figure](../../figures/05_06_root_finding.png) visualizes the function and root.

## Section 6 - Open methods

### Idea

Newton-Raphson starts from an estimate and uses the local tangent:

```text
x_(k+1) = x_k - f(x_k) / f'(x_k)
```

### Practical judgement

Newton-Raphson is usually much faster near a simple root, but it needs a derivative and can behave poorly if the initial estimate is unsuitable or the derivative is close to zero. A safe bracketed method can be used first, followed by an open method.

### Implementation and example

- [newton_raphson.m](../../src/newton_raphson.m) validates the derivative before updating.
- [root_finding_demo.m](../../examples/root_finding_demo.m) compares its result and iteration count with bisection.

## Section 7 - Optimization

### Idea

Optimization replaces “find where the response is zero” with “find the input that minimizes or maximizes an objective.” For a one-dimensional, bounded, unimodal objective, golden-section search shrinks the interval without derivatives.

### Practical judgement

The objective function must represent an engineering trade-off. A numerical optimum is only useful if the constraints and units are meaningful.

### Implementation and example

- [golden_section.m](../../src/golden_section.m) minimizes a scalar function over a bounded interval.
- [optimization_demo.m](../../examples/optimization_demo.m) finds the minimum of a synthetic design objective.
- [Generated figure](../../figures/07_optimization.png) shows the objective and selected minimum.

## Key takeaways

| Task | Recommended starting method | Main caution |
| --- | --- | --- |
| Reliable root with a sign-changing interval | Bisection | Linear convergence can be slow |
| Rapid root near a good estimate | Newton-Raphson | Derivative and initial estimate matter |
| Bounded scalar minimum without derivatives | Golden-section search | Objective should be unimodal |

## Run this chapter

```matlab
addpath('src'); addpath('examples');
root_finding_demo
optimization_demo
```
