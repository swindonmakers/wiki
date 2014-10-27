# Overview

Assembled best practices on using OpenSCAD for complex machine design (e.g. CNC machines, robotics).


## Continuous Integration and Deployment

Jenkins to trigger automatic integration testing and deployment (if tests pass) on commit to staging branch.  Validation reports should be in markdown format.  Should they auto-submit issues?

* Static analysis (lint style) - rules vary by .scad type (e.g. assembly, vitamin).  Should include checking for various interface modules (e.g. _View)
* Log and .csg analysis - using Openscad output log and dummy.csg
* BOM generation - report errors
* vitamin STL generation
* vitamin view rendering
* STL generation
* STL view rendering
* Other views rendering
* Summarise errors?  
* Create github issues?  
* Auto-commit to staging (for images, STL and markdown)
* Publish web content (to gh-pages branch)
* Send notifications (twitter?)


### Static Analysis Rules

#### Root .scad

Validate...
* Inclusion of global config file

#### Assemblies

Validate... 
* Filename format
* Module name matches filename
* Assembly module contains step() calls
* File does not contain any include or use statements
* Any variables have correct naming convention
* Any supplementary modules have correct naming convention
* Any functions have correct naming convention
* Any included _STL modules have associated _View modules
* _View modules contain an echo line with correct structure

#### Vitamins
Validate...
* Filename format
* Module name matches filename
* Module accepts a single parameter, or none
* Any include or use statements are within the /vitamins directory or a sub-directory
* Any variables have correct naming convention
* Any supplementary modules have correct naming convention
* Any functions have correct naming convention
* Contains a _View module that accepts a single parameter, or none
* _Part modules contain echo lines with correct structure, and that those echo contents exist as modules
* _View modules contain an echo line with correct structure


#### Views

None


### Log/CSG Analysis Rules

#### All

* No syntax errors
* No warnings
* dummy.csg is produced
* dummy.csg contains more than empty group (or groups)

#### Assemblies

Check global rules, when the assembly module is called.

#### Vitamins

Check global rules, when the following are called:
* Vitamin module
* _Parts module
* _View module
* any defined Parts


### BOM Generation

* Check all referenced .scad files and modules exist - is that done here? or later?


## References

* Mendel90 design
* http://www.cannymachines.com/entries/9/openscad_dimensioned_drawings

 