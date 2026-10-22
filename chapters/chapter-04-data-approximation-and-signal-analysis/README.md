# Chapter 4: Data Approximation and Signal Analysis

## Chapter overview

Experimental and simulated data must often be represented by a useful mathematical model. This chapter covers regression, interpolation, splines, and Fourier analysis, with an emphasis on selecting an approximation that matches the question being asked.

## Learning outcomes

Students should be able to fit and evaluate regression models, distinguish fitting from interpolation, construct interpolants, and interpret a frequency spectrum.

## 4.1 Linear regression

Linear regression fits a straight-line relation by minimizing the sum of squared residuals. Inspect residuals as well as `R^2`; a high `R^2` alone does not prove that a straight line is appropriate.

- [linear_regression.m](../../src/linear_regression.m)
- [regression_demo.m](../../examples/regression_demo.m)

## 4.2 Least-squares approximation

Polynomial least squares fits a chosen model to more data points than unknown coefficients. Increasing polynomial degree may improve fit to the available data while worsening prediction outside the measured range.

- [poly_least_squares.m](../../src/poly_least_squares.m)
- [Regression figure](../../figures/14_15_regression.png)

## 4.3 Fourier analysis

The Fourier transform represents a signal as a sum of frequency components. Sampling frequency must exceed twice the highest frequency of interest, and longer records improve frequency resolution.

- [fourier_demo.m](../../examples/fourier_demo.m)
- [Fourier figure](../../figures/16_fourier_analysis.png)

## 4.4 Polynomial interpolation

Interpolation passes exactly through supplied data points. The Lagrange form is conceptually direct, but a high-degree polynomial can oscillate between points.

- [lagrange_interpolation.m](../../src/lagrange_interpolation.m)
- [interpolation_demo.m](../../examples/interpolation_demo.m)

## 4.5 Splines and piecewise interpolation

Piecewise interpolation uses low-degree polynomials over short intervals. Shape-preserving piecewise cubic interpolation is often a safer engineering choice than a single high-degree polynomial.

- [interpolation_demo.m](../../examples/interpolation_demo.m)
- [Interpolation figure](../../figures/17_18_interpolation.png)

## Guided questions

1. What is the difference between a fitted model and an interpolating model?
2. Why should extrapolation be treated cautiously?
3. What determines frequency resolution in an FFT?
4. Why can high-degree polynomial interpolation be unreliable?

## Run this chapter

```matlab
addpath('src');
addpath('examples');

regression_demo
fourier_demo
interpolation_demo
```

## Chapter summary

| Tool | Best use | Main caution |
| --- | --- | --- |
| Regression | Trend modelling with noisy data | Inspect residuals |
| Fourier analysis | Finding periodic components | Sampling and leakage |
| Polynomial interpolation | Local, smooth data representation | Oscillation at high degree |
| Piecewise cubic interpolation | Shape-preserving interpolation | Choose the method to suit the data |
