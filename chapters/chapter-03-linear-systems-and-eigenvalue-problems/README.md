# Chapter 3: Linear Systems and Eigenvalue Problems

## Chapter overview

Many engineering models reduce to a system of linear algebraic equations, `A x = b`. This chapter develops direct and iterative solution methods, introduces conditioning, and shows how eigenvalues describe important modal and stability properties of a system.

## Learning outcomes

After completing this chapter, students should be able to:

1. express an engineering model in matrix form;
2. solve a linear system using elimination and factorization;
3. assess a solution using a residual and a condition number;
4. apply a stationary iterative method; and
5. estimate a dominant eigenvalue using the power method.

## 3.1 Linear systems and matrix formulation

The standard form is `A x = b`, where `A` is the coefficient matrix, `x` contains unknowns, and `b` is the right-hand side. Before solving, check dimensions, units, and whether the equations are independent.

**Key check:** after computing a solution, calculate the residual `r = b - A x`. A small residual indicates that the computed vector satisfies the stated equations closely.

## 3.2 Gaussian elimination

Gaussian elimination transforms the system to an upper-triangular form, followed by back substitution. Partial pivoting exchanges rows so that a large available pivot is used, reducing the effect of roundoff error.

- [gauss_elimination.m](../../src/gauss_elimination.m)
- [linear_system_demo.m](../../examples/linear_system_demo.m)

## 3.3 LU factorization

LU factorization writes a matrix as `P A = L U`, where `P` records row exchanges, `L` is lower triangular, and `U` is upper triangular. It is particularly efficient when the same matrix must be solved with several different right-hand sides.

- [lu_factorization.m](../../src/lu_factorization.m)
- [linear_system_demo.m](../../examples/linear_system_demo.m)

## 3.4 Conditioning and iterative methods

### Conditioning

The condition number measures sensitivity of the solution to small changes in the input. A large value warns that small data or roundoff errors can cause a large change in the calculated solution.

- [conditioning_demo.m](../../examples/conditioning_demo.m)
- [Conditioning figure](../../figures/11_conditioning.png)

### Jacobi iteration

Jacobi iteration updates every unknown using values from the previous iteration. It is simple and can be useful for large sparse systems, but it does not converge for every matrix.

- [jacobi_iteration.m](../../src/jacobi_iteration.m)
- [linear_system_demo.m](../../examples/linear_system_demo.m)
- [Convergence figure](../../figures/09_12_linear_systems.png)

## 3.5 Eigenvalue problems

For `A v = lambda v`, the scalar `lambda` is an eigenvalue and `v` is its associated eigenvector. In engineering, eigenvalues appear in vibration modes, stability analysis, and principal-component methods.

The power method estimates the eigenvalue of largest magnitude by repeatedly multiplying an initial vector by the matrix and normalizing.

- [power_method.m](../../src/power_method.m)
- [eigenvalue_demo.m](../../examples/eigenvalue_demo.m)
- [Power-method figure](../../figures/13_eigenvalue.png)

## Guided questions

1. Why is pivoting important in Gaussian elimination?
2. When is LU factorization preferable to repeated elimination?
3. Can a system have a small residual but still be sensitive to input errors?
4. What feature of a matrix helps Jacobi iteration converge?
5. What does the dominant eigenvalue represent in the power method?

## Run this chapter

```matlab
addpath('src');
addpath('examples');

linear_system_demo
conditioning_demo
eigenvalue_demo
```

## Chapter summary

| Method | Main use | Important check |
| --- | --- | --- |
| Gaussian elimination | General direct solution | Pivot size and residual |
| LU factorization | Repeated solutions with one matrix | Factorization residual |
| Jacobi iteration | Structured large systems | Convergence history |
| Power method | Dominant eigenvalue | Eigenpair residual |
