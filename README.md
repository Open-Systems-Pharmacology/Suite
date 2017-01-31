This open source Systems Pharmacology project makes formerly commercial software tools PK-Sim® and MoBi® available as freeware under GPLv2. All source code goes public. 

We invite everyone in the field of Systems Pharmacology, be it in academia, industry or regulatory bodies, to use the platform. Active participation of computer and modeling & simulation scientists in the further development of the modeling & simulation platform, the incorporated systems models, processes for their qualifaction and application etc. is encouraged and highly welcome! Please follow the community’s activities in this GitHub project.



# Open Systems Pharmacology Suite with PK-Sim® and MoBi® for Quantitative Systems Pharmacology

## Unmatched Flexibility - Unlimited Transparency

The Computational Open Systems Pharmacology Software Suite contains different softwaretools and has been designed 
using a modular concept to allow efficient multi-scale modeling and simulation. 
The overall platform with its various software tools is implemented in a modular way 
as will be explained in more detail below. 
The central software tools PK-Sim® and MoBi® make use of building blocks as introduced here. 
While PK-Sim® is based on a whole-body concept, 
the focus of its counterpart, MoBi®, is at the molecular level. 
However, both tools extend to additional physiological scales as illustrated.

## PK-Sim
![pksim](https://cloud.githubusercontent.com/assets/1041237/22438535/5b908010-e6fa-11e6-802b-a79992b54188.png)

PK-Sim® is a comprehensive software tool for whole-body physiologically based pharmacokinetic modeling. 
It enables rapid access to all relevant anatomical and physiological parameters for humans and 
the most common pre-clinical animal models (mouse, rat, minipig, dog, and monkey) 
that are contained in the integrated database. Moreover, access to different PBPK calculation methods 
to allow for fast and efficient model building and parameterization is provided. 
Relevant generic passive processes, such as distribution through blood flow 
as well as specific active processes such as metabolization by a certain enzyme 
are automatically taken into account by PK-Sim®. 
Like most PBPK modeling tools, PK-Sim® is designed for use by non-modeling experts 
and only allows for minor structural model modifications. 
Unlike most PBPK modeling tools though, PK-Sim® offers different model structures to choose from, 
e.g. to account for important differences between small and large molecules. 
More importantly, PK-Sim® is fully compatible with the expert modeling software tool MoBi®, 
thereby allowing full access to all model details including the option for extensive model modifications and extensions. 
This way customized systems pharmacology models may be set up to deal with the challenges of modern drug research and development.

PK-Sim® uses building blocks that are grouped into Individuals, Populations, Compounds, Formulations, 
Administration Protocols, Events, and Observed Data. Building blocks from these groups are combined to produce a model. 
The advantage of building blocks is that they can be reused. 
For example, after having established a model for a drug after single dose intravenous administration to an animal species, 
just substitute the individual by a suitably parameterized virtual human population and obtain a first in man simulation model. 
Further substitute the formulation, to obtain a controlled-release per oral simulation model, substitute the protocol 
to obtain a multiple dose simulation model, or substitute the compound to obtain a simulation model for another drug.
 

## MoBi
![mobi](https://cloud.githubusercontent.com/assets/1041237/22438534/5b8d6b28-e6fa-11e6-9180-3d079eea356a.png)

MoBi® is a software tool for multiscale physiological modeling and simulation. 
Within the restrictions of ordinary differential equations, almost any kind of (biological) model 
can be imported or set up from scratch. Examples include biochemical reaction networks, 
compartmental disease progression models, or PBPK models. However, de novo development of a PBPK model, 
for example, is very cumbersome such that the preferred procedure is to import them from PK-Sim®. 
Importantly, MoBi® also allows for the combination of the described examples and thereby is a very powerful tool 
for modeling and simulation of multi-scale physiological systems covering molecular details on the one hand 
and whole-body architecture on the other hand.

De novo model establishment and simulation is supported by graphical tools and building blocks to support expert users. 
MoBi® uses building blocks that are grouped into Molecules, Reactions, Spatial Structures, Passive Transports, 
Observers, Events, Molecule Start Values, Parameter Start Values, and Observed Data. 
The different building blocks are described in detail in Part IV, “Working with MoBi®”. 
Building blocks out of the above-mentioned groups can be combined to generate models. 
The advantage of building blocks is that they can be reused. For example, a different set of starting values 
may define a new scenario, situation, or individual. Refine a Reaction(s) network and update it in all tissues 
where it should be considered.

## Toolboxes for Matlab and R

The MoBi® toolboxes for R and Matlab® are interfaces to the common statistical and technical computing environments, respectively. 
Basically, the toolboxes can be used to access and modify model parameters as well as to execute simulations and retrieve results. 
That way, the toolboxes can be used to script or code batch simulations, analysis tasks, or customized workflows to any complexity. 
Results can be visualized using the options available in the respective environment. 
Apart from the  communication and exchange via Matlab®, PK-Sim® and MoBi® have import and export functions that allow 
for the import of experimental data via MS Excel® and models based on SBML or the export of simulation results via MS Excel®, for example. 

## Software installation

How to install setups for the Open Systems Pharmacology Software Suite with PK-Sim® and MoBi®

If you would like to install the Software from scratch:

1. Download the Software Setup and install it on your computer
  
  Make sure you are provided with administrator rights; these are required!
2. Download PK-Sim Express Gene Expression Database and copy to a folder accessible for all users. 
3. Configure PK-Sim Gene Expression Database (for details view OSP Suite manual chapter 10 „PK-Sim Options“)

## System Requirements

### Operating Systems
Windows 7®, Windows 8®, Windows 10®
 
### Processor
Minimum: 1 GHz (the faster the better!)
 
### Memory
Minimum: 2 GB RAM (3+ GB recommended)
 
### Disk Space
Minimum: 2 GB
 
### Optional Software
 * Matlab® (version 2013b or later - 32bit)
 * R® (versions 3.3 or later - 32bit) 
    
## Additional information

www.open-systems-pharmacology.org

All trademarks within this document belong to their legitimate owners.
