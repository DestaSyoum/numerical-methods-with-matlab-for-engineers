# Numerical Methods with MATLAB for Engineers

A comprehensive collection of teaching materials, MATLAB implementations, and worked examples for a numerical methods course designed for engineering students.

[![MATLAB](https://img.shields.io/badge/MATLAB-R2020a+-blue)](https://www.mathworks.com/products/matlab.html)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

## 📑 Table of Contents

- [Overview](#-overview)
- [Course Structure](#-course-structure)
- [Getting Started](#-getting-started)
- [Repository Structure](#-repository-structure)
- [Learning Outcomes](#-learning-outcomes)
- [Reference Text](#-reference-text)
- [Visual Credits](#-visual-credits)
- [Contributing](#-contributing)
- [License](#-license)
- [Contact](#-contact)

## 📚 Overview

This repository provides structured teaching notes, MATLAB implementations, worked demonstrations, and supporting figures for a numerical methods course. The materials are designed to support lectures, tutorials, laboratory sessions, and independent study.

**Key Features:**
- **Theory → Algorithm → Implementation**: Each chapter presents the mathematical foundation, the numerical algorithm, its MATLAB implementation, and a reproducible example
- **Emphasis on Engineering Practice**: Focus on method selection, numerical reliability, and interpretation of engineering results
- **Hands-on Learning**: Interactive demonstrations that encourage experimentation with parameters and tolerances

## 🎯 Course Structure

<table style="border: none;">
<tr style="border: none;">
<td style="border: none; padding: 0;" width="65%">

### Chapter 1: Numerical Foundations
- **1.1** Mathematical modelling and numerical problem solving
- **1.2** MATLAB foundations for numerical work
- **1.3** Scripts, functions, and reproducibility
- **1.4** Roundoff and truncation errors

[View Chapter 1 →](chapters/chapter-01-numerical-foundations/README.md)

</td>
<td style="border: none; padding: 0;" width="35%">

<img src="https://commons.wikimedia.org/wiki/Special:FilePath/Meshing_in_Finite_Element_Analysis.jpg?width=720" alt="Finite element mesh generation" width="100%">

</td>
</tr>
</table>

<table style="border: none;">
<tr style="border: none;">
<td style="border: none; padding: 0;" width="65%">

### Chapter 2: Nonlinear Equations and Optimization
- **2.1** Bracketing methods (Bisection)
- **2.2** Open methods (Newton-Raphson)
- **2.3** One-dimensional optimization (Golden-section search)

[View Chapter 2 →](chapters/chapter-02-nonlinear-equations-and-optimization/README.md)

</td>
<td style="border: none; padding: 0;" width="35%">

<img src="figures/07_optimization.png" alt="Optimization" width="100%">

</td>
</tr>
</table>

<table style="border: none;">
<tr style="border: none;">
<td style="border: none; padding: 0;" width="65%">

### Chapter 3: Linear Systems and Eigenvalue Problems
- **3.1** Linear systems and matrix formulation
- **3.2** Gaussian elimination
- **3.3** LU factorization
- **3.4** Conditioning and iterative methods
- **3.5** Eigenvalue problems

[View Chapter 3 →](chapters/chapter-03-linear-systems-and-eigenvalue-problems/README.md)

</td>
<td style="border: none; padding: 0;" width="35%">

<img src="figures/13_eigenvalue.png" alt="Eigenvalue problems" width="100%">

</td>
</tr>
</table>

<table style="border: none;">
<tr style="border: none;">
<td style="border: none; padding: 0;" width="65%">

### Chapter 4: Data Approximation and Signal Analysis
- **4.1** Linear regression
- **4.2** Least-squares approximation
- **4.3** Fourier analysis
- **4.4** Polynomial interpolation
- **4.5** Splines and piecewise interpolation

[View Chapter 4 →](chapters/chapter-04-data-approximation-and-signal-analysis/README.md)

</td>
<td style="border: none; padding: 0;" width="35%">

<img src="https://commons.wikimedia.org/wiki/Special:FilePath/STFT_colored_spectrogram_25ms.png?width=720" alt="Spectrogram showing Fourier analysis in signal processing" width="100%">

</td>
</tr>
</table>

<table style="border: none;">
<tr style="border: none;">
<td style="border: none; padding: 0;" width="65%">

### Chapter 5: Numerical Integration and Differentiation
- **5.1** Numerical integration formulas
- **5.2** Integration of functions
- **5.3** Numerical differentiation

[View Chapter 5 →](chapters/chapter-05-numerical-integration-and-differentiation/README.md)

</td>
<td style="border: none; padding: 0;" width="35%">

<img src="https://commons.wikimedia.org/wiki/Special:FilePath/Heat_Transfer.gif?width=720" alt="Heat transfer showing numerical integration" width="100%">

</td>
</tr>
</table>

<table style="border: none;">
<tr style="border: none;">
<td style="border: none; padding: 0;" width="65%">

### Chapter 6: Ordinary Differential Equations
- **6.1** Initial-value problems
- **6.2** Adaptive methods and stiffness
- **6.3** Boundary-value problems

[View Chapter 6 →](chapters/chapter-06-ordinary-differential-equations/README.md)

</td>
<td style="border: none; padding: 0;" width="35%">

<img src="figures/22_initial_value_problem.png" alt="ODE initial value problem" width="100%">

</td>
</tr>
</table>

## 🚀 Getting Started

### Prerequisites
- MATLAB R2020a or later
- Basic understanding of calculus and linear algebra

### Installation

1. Clone this repository:
```bash
git clone https://github.com/DestaSyoum/numerical-methods-with-matlab-for-engineers.git
cd numerical-methods-with-matlab-for-engineers
```

2. Open MATLAB and navigate to the repository root

3. Add the source directories to your MATLAB path:
```matlab
addpath('src');
addpath('examples');
```

### Running Examples

Run individual demonstrations:
```matlab
root_finding_demo
optimization_demo
linear_system_demo
```

Or run all examples at once:
```matlab
run_all_examples
```

**Note:** The scripts generate figures in the `figures/` directory. Students are encouraged to modify initial values, tolerances, intervals, and model parameters to observe their effects on convergence and accuracy.

## 📁 Repository Structure

```
numerical-methods-with-matlab-for-engineers/
├── chapters/          # Chapter notes and learning guidance
│   ├── chapter-01-.../
│   ├── chapter-02-.../
│   ├── chapter-03-.../
│   └── ...
├── src/               # MATLAB implementations of numerical algorithms
│   ├── bisection.m
│   ├── newton_raphson.m
│   └── ...
├── examples/          # Worked demonstrations and figure-generation scripts
│   ├── root_finding_demo.m
│   ├── optimization_demo.m
│   └── ...
├── figures/           # Generated figures used in the notes
├── run_all_examples.m # Script to run all demonstrations
└── README.md          # This file
```

## 🎓 Learning Outcomes

After completing this course, students will be able to:

- Formulate engineering problems as numerical models
- Select appropriate numerical methods based on problem characteristics
- Implement numerical algorithms in MATLAB
- Apply sensible convergence criteria and assess numerical reliability
- Interpret results in an engineering context
- Understand the limitations and sources of error in numerical computations

## 📚 Reference Text

Steven C. Chapra, *Applied Numerical Methods with MATLAB for Engineers and Scientists*

## 🖼️ Visual Credits

The chapter previews use openly licensed or public-domain visuals hosted by Wikimedia Commons. Full author and licence details are listed in [MEDIA_CREDITS.md](MEDIA_CREDITS.md).

## 🤝 Contributing

This repository is primarily designed as a teaching resource. Suggestions, corrections, and improvements are welcome. Please feel free to open an issue or submit a pull request.

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 📧 Contact

For questions or feedback about the course materials, please open an issue on GitHub or contact the repository maintainer.
