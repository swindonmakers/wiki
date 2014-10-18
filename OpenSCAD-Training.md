## Introduction

This page summarises a series of instructor-lead workshops to introduce people to modelling with OpenSCAD, primarily as a precursor 3D printing.   The workshops are developed/lead by members of the Swindon Hackspace.  The output of the course is a set of parts for a simple mobile robot, that you design yourself and will be ready to print.

## Course Outline

1. Intro to OpenSCAD - language basics, exporting to STL
2. Advanced functions and Common libraries (utils and vitamins) - an overview of the most useful libraries out there
3. Multi-part models - coding best practise, modularity, using "attach", animations
4. Moving into Production - iterative development techniques, bulk generating STL, generating BOMs, efficient documentation/manuals


## Interested People
1. Rob - for the move advanced stuff (2 onwards)
2. Jess - 2 onwards
3. Jamie - 1 onwards


## OpenSCAD References

* [OpenSCAD Website](http://openscad.org)
* [Cheat Sheet](http://www.openscad.org/cheatsheet/index.html)
* [OpenSCAD Language Reference](http://en.wikibooks.org/wiki/OpenSCAD_User_Manual/The_OpenSCAD_Language)

## Lesson Plan

### 1. Intro to OpenSCAD

**Goal:** Able to model a basic part (e.g. Raspberry Pi Sled) and export it as an STL file for printing.

**Example Code**
See the associated github repo for [example code](https://github.com/snhack/OpenSCAD/tree/master/Extended%20Course/wk1%20-%20Intro%20to%20OpenSCAD)

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
* Add Color (make it pretty)

### 2. Advanced Features and Common Libraries

**Goal:** Understand how to integrate various vitamins and printed parts in a single model

**Example Code**
See the associated github repo for [example code](
https://github.com/snhack/OpenSCAD/tree/master/Extended%20Course/wk2%20-%20Advanced%20Features)

**Agenda**
* Review homework - use at least one as a group walkthrough / code review
* Checking/solving for common problems - non-manifold, collisions, slices
* Conditionals - If, ?
* Creating/using libraries - include, use - turn your homework vitamin into a library part
* Structuring your project files - quick intro, detail is covered in wk3
* Laying out vitamins - pre-cursor to designing printed parts around them
* Fleshing out - designing your printed part around your vitamins
* Useful public libraries/functions to speed modelling - MCAD, moreShapes, various vitamins

**Homework**
* Own the development of a part of the robot model (e.g. wheels, shell, bumper) and/or progress an individual project
* Develop your part (and possibly a sub-assembly) within the playground ready for integration in wk3


### 3. Multi-Part Models

**Goal:** Understand more advanced techniques for working with complex models and collaborative design

**Agenda**
* Review homework - use at least one as a group walkthrough / code review
* Review key concepts - Vitamin, Printed Part, Assembly
* Detailed project structure - centralised config, naming conventions, etc
* Making assemblies easier - Attach, Connectors, best practises
* Refactoring to use Connectors and Attach
* Working with sub-sub-assemblies
* Creating special visualisations for documentation
* Basic animation

**Homework**
* Refactor your vitamins / assemblies / parts to use Connectors and Attach
* Start modelling an optional extra


### 4. Moving into Production

**Goal:** Understand techniques to efficiently move a project into production

**Agenda**
* Review homework - use at least one as a group walkthrough / code review
* Iterative development techniques - using the sandbox
* Bulk generating STL
* Generating BOMs
* Efficient documentation/manuals - NaturalDocs, bulk generating visualisations, Markdown integration?
