# Numerical Methods with MATLAB for Engineers

## Course support material

This repository contains structured teaching notes, MATLAB implementations, worked demonstrations, and figures for a numerical methods course for engineering students. The materials support lectures, tutorials, laboratory sessions, and independent study.

Each chapter presents the mathematical idea, the algorithm, its MATLAB implementation, and a reproducible example. The emphasis is on method selection, numerical reliability, and interpretation of engineering results.

## Available material

### Chapter 2: Nonlinear Equations and Optimization

| Section | Topic | Learning activity |
| --- | --- | --- |
| 2.1 | Bracketing methods | Use bisection to locate a root safely within a known interval. |
| 2.2 | Open methods | Apply Newton-Raphson and compare its convergence with bisection. |
| 2.3 | One-dimensional optimization | Use golden-section search to locate a bounded minimum. |

Start with the [Chapter 2 notes](chapters/chapter-02-nonlinear-equations-and-optimization/README.md).

### Chapters 3-6

| Chapter | Topic | Notes |
| --- | --- | --- |
| 3 | Linear Systems and Eigenvalue Problems | [Open Chapter 3](chapters/chapter-03-linear-systems-and-eigenvalue-problems/README.md) |
| 4 | Data Approximation and Signal Analysis | [Open Chapter 4](chapters/chapter-04-data-approximation-and-signal-analysis/README.md) |
| 5 | Numerical Integration and Differentiation | [Open Chapter 5](chapters/chapter-05-numerical-integration-and-differentiation/README.md) |
| 6 | Ordinary Differential Equations | [Open Chapter 6](chapters/chapter-06-ordinary-differential-equations/README.md) |

## Using the MATLAB material

Open MATLAB in the repository root and run:

```matlab
addpath('src');
addpath('examples');

root_finding_demo
optimization_demo
```

The scripts generate figures in the `figures/` directory. Students are encouraged to change initial values, tolerances, intervals, and model parameters, then interpret the effect on convergence and accuracy.

## Repository structure

```text
chapters/   Chapter notes and learning guidance
src/        MATLAB implementations of numerical algorithms
examples/   Worked demonstrations and figure-generation scripts
figures/    Generated figures used in the notes
```

## Course development

| Chapter | Theme |
| --- | --- |
| 1 | Numerical modelling, MATLAB foundations, and error analysis |
| 3 | Linear systems and eigenvalue problems |
| 4 | Regression, interpolation, and Fourier analysis |
| 5 | Numerical integration and differentiation |
| 6 | Ordinary differential equations |

Chapters 2-6 are available. Chapter 1 will be added after the foundational material has been prepared to the same standard.

## Reference

Steven C. Chapra, *Applied Numerical Methods with MATLAB for Engineers and Scientists*. The text is used as a reference for topic sequencing. All notes, MATLAB code, examples, and figures in this repository are independently prepared for this course.
