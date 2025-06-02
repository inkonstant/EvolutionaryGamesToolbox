# EvolutionaryGamesToolbox

## Overview

The EvolutionaryGamesToolbox is a self-contained MATLAB toolbox designed to help researchers and students simulate and analyze evolutionary game dynamics for the classical iterated prisoners dilemma (CIPD). It includes core algorithms for population-update rules, stability analysis, and publication-ready visualizations.

## Features

- **Tournament Simulations**

  - **TourSimFit.m**: Run fitness‐based evolutionary PD tournaments

  - **TourSimImi.m**: Run imitation‐based evolutionary PD tournaments

- **Theoretical Analyses**

  - **TourTheFit.m**: Simulates an evolutionary tournament using a fitness‐based update with an alternative population redistribution method.

  - **TourTheImi.m**: Generates the Markov chain representing population‐to‐population transitions under imitation dynamics.

- **Strategy Library**

  - Numerous .m files (e.g., TitForTat.m) in Code/extras/ implement classic and custom CIPD strategies

  - Drop in new .m files under Code/extras/ to expand the strategy pool

- **Modular, Extensible Design**

  - Core logic isolated in Code/core/; strategy logic isolated in Code/extras/

  - Easily configure, run, and extend tournaments without modifying underlying solvers

- **Documentation & Report**

  - Detailed API docs in /Documentation

  - Full project report (PDF) in /Report covering theory, derivations, and example outputs

## Installation

1. **Download** or **clone** the repository.

   ```shell
   git clone https://github.com/inkonstant/EvolutionaryGamesToolbox.git
   ```

2. **Unzip** (if downloaded as a ZIP) and locate the folder EvolutionaryGamesToolbox.

3. **Set the MATLAB path** to include all toolbox folders:  
   Navigate to EvolutionaryGamesToolbox folder and type in MATLAB's command window:

   ```matlab
   setup
   ```

4. **Verify** the installation by running one of the example scripts (e.g. Examples/demo_fit_the_1.m).

## Quickstart

To get started quickly, users can run the example scripts provided in the /Examples folder.

```matlab
% From MATLAB’s command window:
Examples/demo_fit_sim_1
```

These examples demonstrate how to set up simulations, configure strategy sets, and visualize the resulting dynamics, making it easy to understand the functionality and capabilities of the toolbox.

## Report

A detailed report in PDF format (Report/EvolutionaryGamesToolbox_Report.pdf) accompanies this toolbox.  
This report covers:

- Theoretical background and mathematical derivations

- Detailed function descriptions (inputs/outputs)

- Extended case studies and example analyses

- High-resolution figures suitable for publication

## Documentation

Detailed documentation is available in the docs/ directory, including:

- Axelrod tournament theory background

- Strategy implementation guide

- Evolutionary dynamics references

- Case studies reproducing classical results

- Visualization examples

## Contributing

We welcome contributions! Please follow these steps:

1. Fork the repository

1. Create a feature branch:

   ```shell
   git checkout -b feature/YourFeature
   ```

1. Implement your changes and add relevant tests

1. Commit with clear messages:

   ```shell
   git commit -m "Add [feature/fix]: Brief description"
   ```

1. Push to your branch and open a Pull Request

Ensure code follows MATLAB style conventions and include unit tests where applicable.

## License

Released under the MIT License. See LICENSE for complete terms.

## Citation

If you use this toolbox in your research, please cite:

Konstantakis, Ioannis and Mastrogiannis, Ilias (2025). EvolutionaryGamesToolbox: A MATLAB toolbox for evolutionary game dynamics. GitHub. https://github.com/inkonstant/EvolutionaryGamesToolbox

Last updated: May 31, 2025
