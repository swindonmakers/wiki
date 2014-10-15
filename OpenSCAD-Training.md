## Introduction

This page summarises a series of instructor-lead workshops to introduce people to modelling with OpenSCAD, primarily as a precursor 3D printing.   The workshops are developed/lead by members of the Swindon Hackspace.  The output of the course is a set of parts for a simple mobile robot, that you design yourself and will be ready to print.

## Course Outline

1. Intro to OpenSCAD - language basics, exporting to STL
2. Advanced functions and Common libraries (utils and vitamins) - an overview of the most useful libraries out there
3. Multi-part models - coding best practise, modularity, using "attach", animations
4. Machine design - concepts, file structure, bulk generating STL, generating BOMs
5. Collaborative design (using github/dropbox) - best practises, hint&tips


## Interested People
1. Rob - for the move advanced stuff (2 onwards)
2. Jess - 2 onwards


## References

* [OpenSCAD Website](http://openscad.org)
* [Cheat Sheet](http://www.openscad.org/cheatsheet/index.html)
* [OpenSCAD Language Reference](http://en.wikibooks.org/wiki/OpenSCAD_User_Manual/The_OpenSCAD_Language)

## Lesson Plan

### 1. Intro to OpenSCAD

**Goal:** Design a basic part (Raspberry Pi Sled) and export it as an STL file for printing.

**Agenda**
* Interface
* 2D Shapes - Circle, Square
* Transformations - Translate, Rotate, Mirror
* Booleans - Union, Difference, Intersection
* Hull
* Extrusion - linear_extrude
* Variables
* Loops - For
* 3D Shapes - Sphere, Cube, Cylinder
* Modules
* Layout and coding best practises
* Finish your part
* Export as STL

**Homework**
* Model a common "vitamin" (bolt, motor, etc)
* Add Color 

### 2. Advanced Features and Common Libraries

**Goal:** Design a simple mobile robot base to house 2 motors

**Agenda**
* Creating/using libraries - include, use - turn your homework vitamin into a library part
* Intro to public libraries - selection of some key parts for the design
* Laying out the parts - importing and placing the required vitamins
* Blocking out the base
* Useful libraries/functions to speed modelling - MCAD, moreShapes
* Refining the base
* Checking for common problems - collisions, slices
* Conditionals - If, ?
* Avoiding non-manifold volumes - eta

**Homework**
* Refine your base model
* Experiment with Rotate_extrude to model a wheel for the robot
* Incorporate the wheels into the overall robot model


### 3. Multi-Part Models

**Goal:** Extend the robot design to incorporate bump sensors

**Agenda**
* Overview of key concepts - Vitamin, Printed Part, Assembly
* Organising your project - file structure, naming conventions
* Making assemblies easier - Attach
* Attach the bump sensors
* Refactor your design
* Animate the wheels

**Homework**
* Add a placeholder for the electronics (Arduino + motor control)
* Add a battery
* Add a pen and start to design a pen lift mechanism using a micro-servo



