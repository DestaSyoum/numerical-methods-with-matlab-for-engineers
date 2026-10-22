# Chapter 6: Ordinary Differential Equations

## Chapter overview

Ordinary differential equations describe changing engineering systems such as heat transfer, motion, vibrations, circuits, and chemical processes. This chapter covers initial-value problems, stiffness, and boundary-value problems.

## Learning outcomes

Students should be able to formulate an ODE model, solve an initial-value problem numerically, select a solver for a stiff system, and apply finite differences to a boundary-value problem.

## 6.1 Initial-value problems

An initial-value problem specifies the state at a starting point and calculates how it evolves. Classical fourth-order Runge-Kutta uses several slope estimates within each time step to achieve high accuracy.

- [rk4.m](../../src/rk4.m)
- [ode_demo.m](../../examples/ode_demo.m)
- [Initial-value figure](../../figures/22_initial_value_problem.png)

## 6.2 Adaptive methods and stiffness

Adaptive solvers change the time step to control error efficiently. A stiff system contains processes with very different time scales; an explicit solver can require impractically small steps, while a stiff solver such as `ode15s` is designed for this situation.

- [stiff_ode_demo.m](../../examples/stiff_ode_demo.m)
- [Stiff-system figure](../../figures/23_stiff_system.png)

## 6.3 Boundary-value problems

A boundary-value problem specifies conditions at more than one location. Finite differences replace derivatives by algebraic expressions at grid points, resulting in a linear system for the unknown interior values.

- [finite_difference_bvp.m](../../src/finite_difference_bvp.m)
- [bvp_demo.m](../../examples/bvp_demo.m)
- [Boundary-value figure](../../figures/24_boundary_value_problem.png)

## Guided questions

1. What distinguishes an initial-value problem from a boundary-value problem?
2. Why can a stiff system be difficult for an explicit method?
3. What does reducing the RK4 step size do to accuracy and computational cost?
4. How does a finite-difference grid convert a boundary-value problem into linear equations?

## Run this chapter

```matlab
addpath('src');
addpath('examples');

ode_demo
stiff_ode_demo
bvp_demo
```

## Chapter summary

| Problem | Appropriate approach | Main check |
| --- | --- | --- |
| Initial-value ODE | RK4 or an adaptive MATLAB solver | Step-size convergence |
| Stiff ODE | Stiff solver such as `ode15s` | Solver steps and physical behaviour |
| Boundary-value ODE | Finite differences | Grid-refinement study |
