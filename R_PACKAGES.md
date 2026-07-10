# R Packages for Open Systems Pharmacology

The Open Systems Pharmacology (OSP) ecosystem provides a comprehensive suite of R packages that enable scripted workflows with models developed in PK-Sim® and MoBi®. These packages allow users to perform various pharmacokinetic and pharmacodynamic analyses, create standardized reports, and develop advanced modeling workflows.

## Core Packages

### ospsuite

**Repository:** [OSPSuite-R](https://github.com/Open-Systems-Pharmacology/OSPSuite-R)  
**Documentation:** [https://www.open-systems-pharmacology.org/OSPSuite-R/](https://www.open-systems-pharmacology.org/OSPSuite-R/)  
**Description:** The core R package that provides functionality for loading, manipulating, and simulating models created in PK-Sim® and MoBi®. It offers extended workflows including parameter sensitivity analysis, PK-parameter calculation, population simulations, and individual creation.

**Key Features:**
- Load and run simulations from PK-Sim® and MoBi®
- Parameter and molecule start value manipulation
- Population simulation capabilities
- PK analysis and sensitivity analysis
- Data import/export functionality
- Unit conversion and dimension handling

## Analysis and Modeling

### ospsuite.parameteridentification

**Repository:** [OSPSuite.ParameterIdentification](https://github.com/Open-Systems-Pharmacology/OSPSuite.ParameterIdentification)  
**Documentation:** [https://www.open-systems-pharmacology.org/OSPSuite.ParameterIdentification/](https://www.open-systems-pharmacology.org/OSPSuite.ParameterIdentification/)  
**Description:** Provides functionality for performing parameter identification (model fitting to observed data) with simulations created in PK-Sim® and MoBi®.

**Key Features:**
- Parameter estimation and optimization
- Model fitting to observed data
- Integration with ospsuite for simulation execution

### ospsuite.globalsensitivity

**Repository:** [OSPSuite.GlobalSensitivity](https://github.com/Open-Systems-Pharmacology/OSPSuite.GlobalSensitivity)  
**Documentation:** [https://www.open-systems-pharmacology.org/OSPSuite.GlobalSensitivity](https://www.open-systems-pharmacology.org/OSPSuite.GlobalSensitivity).  
**Description:** A package for performing global sensitivity analysis on OSP models. Currently under development.

**Key Features:**
- Global sensitivity analysis methods
- Integration with OSP modeling framework

### ospsuite.bmlm

**Repository:** [OSPSuite.BMLM](https://github.com/Open-Systems-Pharmacology/OSPSuite.BMLM)  
**Description:** Bayesian Multi Level Model (BMLM) for parameter identification, providing advanced statistical methods for model parameter estimation.

**Key Features:**
- Bayesian parameter identification
- Multi-level modeling approaches
- Advanced statistical inference

## Reporting and Visualization

### ospsuite.reportingengine

**Repository:** [OSPSuite.ReportingEngine](https://github.com/Open-Systems-Pharmacology/OSPSuite.ReportingEngine)  
**Documentation:** [https://www.open-systems-pharmacology.org/OSPSuite.ReportingEngine/](https://www.open-systems-pharmacology.org/OSPSuite.ReportingEngine/)  
**Description:** A comprehensive framework for designing and creating automated reports evaluating PBPK models. Supports both markdown and MS-Word report generation.

**Key Features:**
- Automated report generation for PBPK model evaluation
- Support for markdown and MS-Word formats
- Template-based report creation
- Integration with qualification workflows

### ospsuite.plots

**Repository:** [OSPSuite.Plots](https://github.com/Open-Systems-Pharmacology/OSPSuite.Plots)  
**Documentation:** [https://www.open-systems-pharmacology.org/OSPSuite.Plots/](https://www.open-systems-pharmacology.org/OSPSuite.Plots/)  
**Description:** A package for creating standardized figures and dependent tables used by R packages in the OSP ecosystem. Currently under development.

**Key Features:**
- Standardized graphics framework
- Dependent table generation
- Integration with OSP visualization standards

### tlf

**Repository:** [TLF-Library](https://github.com/Open-Systems-Pharmacology/TLF-Library)  
**Documentation:** [https://www.open-systems-pharmacology.org/TLF-Library/](https://www.open-systems-pharmacology.org/TLF-Library/)  
**Description:** An object-oriented framework for creating standardized reporting **T**ables, **L**istings, and **F**igures used across the OSP ecosystem.

**Key Features:**
- Standardized plotting and table generation
- Object-oriented framework for reproducible visualizations
- Integration with other OSP R packages
- Customizable themes and layouts

## Utility and Support

### ospsuite.utils

**Repository:** [OSPSuite.RUtils](https://github.com/Open-Systems-Pharmacology/OSPSuite.RUtils)  
**Documentation:** [https://www.open-systems-pharmacology.org/OSPSuite.RUtils/](https://www.open-systems-pharmacology.org/OSPSuite.RUtils/)  
**Description:** A collection of utility functions that support R packages in the OSP ecosystem, providing common functionality and helper methods.

**Key Features:**
- Common utility functions for OSP packages
- Helper methods for data manipulation
- Shared functionality across the ecosystem

### rSharp

**Repository:** [rSharp](https://github.com/Open-Systems-Pharmacology/rSharp)  
**Documentation:** [https://www.open-systems-pharmacology.org/rSharp/](https://www.open-systems-pharmacology.org/rSharp/)  
**Description:** R package for communication with .NET Core that provides access to .NET libraries from R. It allows creating .NET objects, accessing their fields, and calling their methods.

**Key Features:**
- Access to .NET libraries from R
- Create .NET objects and call their methods
- Communication bridge between R and .NET Core
- Support for Windows, macOS, and Linux platforms

## Quality Control and Testing

### ospsuite.qualificationplaneditor

**Repository:** [OSPSuite.QualificationPlanEditor](https://github.com/Open-Systems-Pharmacology/OSPSuite.QualificationPlanEditor)  
**Documentation:** [https://www.open-systems-pharmacology.org/OSPSuite.QualificationPlanEditor/](https://www.open-systems-pharmacology.org/OSPSuite.QualificationPlanEditor/)  
**Description:** Tools for editing and managing qualification plans used in the OSP qualification framework.

**Key Features:**
- Qualification plan management
- Integration with OSP qualification workflows

### RE-Test-Reports

**Repository:** [RE-Test-Reports](https://github.com/Open-Systems-Pharmacology/RE-Test-Reports)  
**Documentation:** [https://www.open-systems-pharmacology.org/RE-Test-Reports/](https://www.open-systems-pharmacology.org/RE-Test-Reports/)  
**Description:** Assess consistency of reports generated using the ospsuite.reportingengine package, providing test infrastructure and validation.

**Key Features:**
- Automated testing of report generation
- Quality assurance for reporting engine
- Template validation and consistency checks

## Installation

### System Requirements

**R Version:** 4.x.x  
**Operating Systems:** 
- Windows 10®, Windows 11®, Windows Server 2016®, Windows Server 2019®
- Linux (Ubuntu 22.04 with precompiled packages available)

### Prerequisites

Before installing OSP R packages, install the required external dependencies:

- **Visual C++ Redistributable** (Windows)
- **.NET 8** (Windows and Linux)

Detailed installation instructions are available in the [rSharp documentation](https://github.com/Open-Systems-Pharmacology/rSharp#prerequisites).

### Quick Installation

The recommended installation method is from GitHub using the `{remotes}` package:

```r
# Install the core ospsuite package
install.packages("remotes")
remotes::install_github("Open-Systems-Pharmacology/OSPSuite-R@*release")

# Install additional packages as needed
remotes::install_github("Open-Systems-Pharmacology/TLF-Library")
remotes::install_github("Open-Systems-Pharmacology/OSPSuite.ReportingEngine")
remotes::install_github("Open-Systems-Pharmacology/OSPSuite.ParameterIdentification@*release")
```

### Package Dependencies

OSP R packages have interdependencies. The typical installation order is:

1. `{ospsuite.utils}` - Base utility functions
2. `{tlf}` - Tables, listings, and figures framework  
3. `{ospsuite}` - Core simulation engine
4. `{ospsuite.reportingengine}` - Report generation
5. Additional analysis packages as needed

## Documentation and Support

### Getting Started

For new users, we recommend following the documentation in this order:

1. [ospsuite Getting Started Guide](https://www.open-systems-pharmacology.org/OSPSuite-R/articles/ospsuite.html)
2. [Loading simulations and accessing entities](https://www.open-systems-pharmacology.org/OSPSuite-R/articles/load-get.html)
3. [Running simulations](https://www.open-systems-pharmacology.org/OSPSuite-R/articles/run-simulation.html)
4. [Creating reports](https://www.open-systems-pharmacology.org/OSPSuite.ReportingEngine/)

### Community and Support

- **Forum:** [Open Systems Pharmacology Project Forum](http://forum.open-systems-pharmacology.org)
- **Code of Conduct:** [OSP Code of Conduct](https://github.com/Open-Systems-Pharmacology/Suite/blob/master/CODE_OF_CONDUCT.md)
- **Contributing:** [Contribution Guidelines](https://github.com/Open-Systems-Pharmacology/Suite/blob/master/CONTRIBUTING.md)
- **R Coding Standards:** [R Coding Standards](https://github.com/Open-Systems-Pharmacology/Suite/blob/master/CODING_STANDARDS_R.md)

## License

All OSP R packages are released under the [GPLv2 License](https://github.com/Open-Systems-Pharmacology/Suite/blob/master/LICENSE).

---

**Note:** OSP Qualification Framework and R packages are not included in the main OSP Suite setup and must be installed separately. Installation instructions are provided in the documentation of each tool or on the GitHub download sites.

All trademarks within this document belong to their legitimate owners.
