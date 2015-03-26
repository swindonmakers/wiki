# OpenSCAD Machine Design - Tutorial 1
## Basic quad frame layout with motors

In this first tutorial, we're going to cover:

* Starting a project, python pre-requisites
* Simple assembly of a printed part and an existing vitamin
* Using the vitamin catalogue
* Use of utility tools and assembly guide generation
* Using the _sandbox_
* Printing the STL

## Objective

The outcome of this tutorial is a basic quad-copter frame sized to fit the motors from the Hubsan X4 (or similar).  Our OpenSCAD model will contain the frame itself (as a single printable part) and a representation of the motors.  The model will not contain the battery, flight controller, wiring, etc (this will be tackled in the later tutorials).

If you have the relevant parts, then at the end of the tutorial you will be able to print out the frame for test assembly, and even fly the frame by taping the battery/flight-controller to it.


## Starting a project, Python pre-requisites

### Python Pre-requisites
There are various utility scripts included in the template project to aid the design process, they are all written in Python (tested against v2.7.6).  As such, you will need to ensure you have  a compatible version of Python installed along with a couple of dependencies:

1. PIL - the Python Image Library - use: pip install pillow
2. Pystache - the Pystache template library - use: pip install pystache

### Cloning the template
Once you have the pre-requisites installed, you can copy, clone or fork the template project from github:
[](https://github.com/Axford/OpenSCAD_Machine_Design_Template)

### File structure
The project files are all contained within a top-level "hardware" directory, on the assumption you will add other top-level directories for software development, notes, etc.

You will find the following directories within /hardware:

Directory | Contains
------------ | ------------
.              | Top-level _machine_ .scad file
assemblies | SCAD files that describe all the assemblies/sub-assemblies
ci |  Python utility scripts 
config | Global configuration files
cutparts | SCAD files for any cut parts
docs | Generated documentation including assembly guide(s) and vitamin catalogue
images | Generated images of the machine
printedparts | SCAD files for the printed parts of your machine
sandbox | Playground for developing parts, assemblies, etc
utils | Utility scad files to provide assembly functionality, speed modelling, etc 
vitamins | Models of all the non-printable parts (e.g. motors, switches, nuts, bolts)


### Vitamins, Printed-parts, Cut-parts and Assemblies

Models of complete machines are comprised of a few fundamental building blocks:
* Vitamins - are the physical parts you use as-is (not make) within your machine (e.g. screws, motors, batteries)
* Printed-parts - are the parts you will print on a 3D printer
* Cut-parts - are the parts you make using a non-printing fabrication process (e.g. cutting, drilling, bending)
* Assemblies - represent how the vitamins, printed-parts and cut-parts should be put together

Vitamins, printed-parts and cut-parts are collectively referred to as _parts_.

Assemblies are typically arranged in a hierarchy, with a top-level assembly containing a combination of parts and sub-assemblies.

A typical design process will rapidly iterate over the following steps:
* Import, or develop, the key vitamins (often drive systems and electronics)
* Layout groups of vitamins within assemblies
* Develop the printed parts to hold the vitamins together
* Print, test, repeat

Project teams can often tackle these steps in parallel, with team members owning development of the various vitamins, printed-parts and assemblies.  Collaboration techniques are covered in a later tutorial.


