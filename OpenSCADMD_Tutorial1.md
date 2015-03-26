# OpenSCAD Machine Design - Tutorial 1
## Basic quad frame layout with motors

In this first tutorial, we're going to cover:

* Starting a project, python pre-requisites
* Key concepts - parts and assemblies
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

1. PIL - the Python Image Library - use: `pip install pillow`
2. Pystache - the Pystache template library - use: `pip install pystache`

### Cloning the template
Once you have the pre-requisites installed, you can copy, clone or fork the template project from github:
[](https://github.com/Axford/OpenSCAD_Machine_Design_Template)

Rename the root directory to something meaningful for this project, e.g. "QuadFrame"


### File structure
The project files are all contained within a top-level "hardware" directory, on the assumption you will add other top-level directories for software development, notes, etc.

You will find the following directories within /hardware:

Directory | Contains
------------ | ------------
.              | Top-level *machine* .scad file (named "OpenSCAD_Machine_Design_Template.scad" in the template)
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


You can check the template files are laid out correctly by opening the `hardware/OpenSCAD_Machine_Design_Template.scad` file.  OpenSCAD should open and preview a small cube.  You shouldn't have any error messages in the console.

You can also test the Python utility scripts are working properly by:
1. Open a terminal
2. Navigate to the `/hardware/ci` directory
3. Run `./catalogue.py` to update the Vitamin Catalogue

A lot of status messages will fly by, with the last line being "Saving markdown".  We'll explore the Vitamin Catalogue in more detail later in this tutorial.



## Key Concepts - Parts and Assemblies

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


### Defining our _machine_

Before we start modelling our parts, we need to setup our *machine* SCAD file:

1. Rename `/hardware/OpenSCAD_Machine_Design_Template.scad` to `/hardware/QuadFrame.scad`
2. Open `/hardware/QuadFrame.scad` in your favourite text editor
3. Change the line:
  `machine("OpenSCAD_Machine_Design_Template.scad","OpenSCAD_Machine_Design_Template") {`
to 
  `machine("QuadFrame.scad","My Printable Quadcopter Frame") {`

_NB: It's generally good practise to use the same name for the *machine* SCAD file as for the root project directory._

The *machine* SCAD file is a primarily a "wrapper" around your top-level assembly, but it also links in the global configuration file (config.scad) and provides information to the build process about the project.  Critically, the line you edited in step 4 tells the build process the name of the machine file and the description to use in the assembly guide.

We'll return to edit this file once we've created our top-level assembly.  For now, just check it previews without errors in OpenSCAD.


### Creating the top-level assembly

The top-level, or final, assembly is where you define how all the various parts come together.  It is purely for on-screen display, either in OpenSCAD or in the assembly guide, but is critical to helping you correctly model your machine.  It's also one of the best places to start a new design.

Creating a new assembly file requires a few steps, however, there is a utility script that automates most of the process:
 1. Open a terminal and navigate to `/hardware/ci`
 2. Run `./adda.py assembly Final "Final Assembly"`

The *adda.py* script will:
 * Create a templated assembly file at:  `/hardware/assemblies/Final.scad`
 * Add the assembly to the global configuration (`/hardware/config/assemblies.scad`)
 * Create a sandbox file to aid with developing your assembly at: `/hardware/sandbox/assembly_FinalAssembly.scad`

Open the assembly file (`/hardware/assemblies/Final.scad`) in your text editor, it should look something like this:

    module FinalAssembly () {
    
        assembly("assemblies/Final.scad", "Final Assembly", str("FinalAssembly()")) {
    
        // base part
    
        // steps
        step(1, "Do something") {
                view(t=[0,0,0], r=[52,0,218], d=400);
    
                //attach(DefConDown, DefConDown)
                //      AnotherAssembly();
            }
        
        }
    }

The FinalAssembly is an OpenSCAD module, contain as `assembly()` statement.  The `assembly()` statement tells the build-system to treat this as an assembly and to show the assembly *steps*.  It takes three parameters:
 1. The location of the the current file (relative to the `/hardware` directory)
 2. The description of the assembly
 3. How to _call_ the module from within OpenSCAD scripts - this is critical to the build system

Within the `assembly()` statement are:
 1. A call to the _base part_ - the part you start with when assembling this assembly
 2. A sequence of assembly _steps_ - defined within `step()` statements

A `step()` statement takes two parameters:
 1. The step number
 2. The assembly instructions for the step - these are inserted directly into the assembly guide and can contain markdown syntax

Each `step()` statement then contains:
 1. Any _views_ that should be rendered by the build system and included in the assembly guide
 2. The part(s) that should be attached to the _base part_ in this assembly step

Don't worry about the contents of the `step()` statement for now, we'll come back to that later in the tutorial.

We have one more small change to make before we start integrating parts into this assembly - we need to add this assembly to our *machine* file:

 1. Open '/hardware/QuadFrame.scad'
 2. Replace from `//Top level assembly` to `cube([10,10,10])` with `FinalAssembly();`
 3. Save the changes


## Using the vitamin catalogue

As mentioned above, the best way to start a designing a part is by first laying out any associated vitamins within an assembly.  With that in mind, we'll first layout the 4 motors before before designing a printed frame to hold them.

All of the library vitamins are located in the `/hardware/vitamins` directory.  The associated source code should all be clearly structured, but reading through lots of SCAD files is not the quickest way to get started.  Instead, the machine design template generates a *Vitamin Catalogue* to make life easier.

Like all of the auto-generated documentation, it is produced in two formats: markdown and HTML.  The HTML version is actually dynamically rendered from the markdown file, which unfortunately means it can only be viewed through a local web server (due to browser security restrictions).  If you have a local web server configured, then navigate to `/hardware/docs/VitaminCatalogue.htm`.  Otherwise, grab yourself a markdown viewer (e.g. LightPaper) and open `/hardware/docs/VitaminCatalogue.md`.

_NB: You can also view the live reference catalogue on github here: [Reference Vitamin Catalogue](https://rawgit.com/Axford/OpenSCAD_Machine_Design_Template/master/hardware/docs/VitaminCatalogue.htm)_

You should see a long list of vitamins that are available for use in your project.  The variety of parts that can be generated by each vitamin SCAD file are shown.  Alongside a description and image of each part is the associated _call_ statement that you should use in your project.

Locate the section for the *vitamins/DCMotor.scad* file and look for the *CL072014 DC Motor* part.  The associated _call_ statement should be `DCMotor(DCMotor_CL072014)`.  This is a basic model of the motors used in the Hubsan X4 and is what we'll use to help layout our printable frame.

### Including the motor vitamin in your machine

Now we've located an appropriate vitamin in the library, we need to add it to our machine.  This is a two step process:
 1. Make sure the relevant vitamin SCAD file is *included* in our global configuration
 2. *Call* the appropriate vitamin from within an assembly

To include the `DCMotor.scad` file in our machine:
 1. Open `/hardware/config/vitamins.scad` in your text editor
 2. Append this line: `include <../vitamins/DCMotor.scad>`

The `/hardware/config/vitamins.scad` file lists all *include* statements for vitamins we are using in our machine. It's best to keep these in alphabetical order for readability.

Now let's add the `DCMotor(DCMotor_CL072014)` *call* to our assembly.  Open `/hardware/assemblies/Final.scad` in your text editor and modify the `step()` statement to the following:

     step(1, "Insert the motors") {
            view(t=[0,0,0], r=[52,0,218], d=400);
     
            attach(DefConUp, DCMotor_Con_Face)
                DCMotor(DCMotor_CL072014);
        }

If you open `/hardware/QuadFrame.scad` in OpenSCAD, you should see the DC motor model.  Clearly we are going to need more than one motor, but first let's specify some global machine parameters to define the layout.


## Global machine parameters

Global machine parameters are available in every assembly, part, etc and should be used for the key parametric values of your design.  For our quadcopter layout, we'll keep things simple and assume the frame will be symmetrical with the arms arranged in a cross - the X layout.  This means we only need to define one parameter for the length of the arms:

 1. Open `/hardware/config/machine.scad` in your text editor
 2. Add the following line to the end of the file: `ArmLength = 85/2;`
 3. Save and close the file

This ArmLength is based on the Hubsan X4 having a diagonal distance of approx 85mm between motors.  You're welcome to choose a different ArmLength for your design.


## Laying out the motors

Now we have our ArmLength global parameter, we can roughly layout the motors within the assembly.  To do this, let's change the code where we previously *attached* a single motor to:

    for (i=[0:3])
        rotate([0,0, 45 + i*90])
        translate([ArmLength,0,0])
        attach(DefConUp, DCMotor_Con_Face)
                DCMotor(DCMotor_CL072014);

Previewing the machine in OpenSCAD should now show 4 motors laid out in a cross.


## Adding a new printed part to the machine

Now it's time to add a new printed part for the frame - as with the assembly, the Python utility makes this very quick:

 1. Open a terminal and navigate to `/hardware/ci`
 2. Run `./adda.py printedpart Frame Frame`

The *adda.py* script will:
 * Create a templated printed-part file at:  `/hardware/printedparts/Frame.scad`
 * Add the printed-part to the global configuration (`/hardware/config/printedparts.scad`)
 * Create a sandbox file to aid with developing your part at: `/hardware/sandbox/printedpart_Frame.scad`

Open the printed-part file (`/hardware/printedparts/Frame.scad`) in your text editor, it should look something like this:

    // Connectors
    Frame_Con_Def = [[0,0,0], [0,0,-1], 0,0,0];

    module Frame_STL() {
        printedPart("printedparts/Frame.scad", "Frame", "Frame_STL()") {

            view(t=[0,0,0],r=[72,0,130],d=400);

            if (DebugCoordinateFrames) frame();
            if (DebugConnectors) {
                connector(Frame_Con_Def);
            }

            color(Level3PlasticColor) {
                if (UseSTL) {
                    import(str(STLPath, "Frame.stl"));
                } else {
                    Frame_Model();
                }
            }
        }
    }


    module Frame_Model()
    {
        // local vars

        // model
        difference() {
            union() {
                cube([10,10,10]);
            }


        }
    }

Don't worry to much about the contents, for now let's add the Frame to our assembly:
 1. Open `/hardware/assemblies/Final.scad` in your text editor
 2. After the `// base part` comment add the line: `Frame_STL();`
 3. Save and close the file

At this point, if you preview the machine in OpenSCAD you won't see anything new except for a warning in the console stating `WARNING: Can't open import file '"printedparts/stl/Frame.stl"'.`.  This is because our new part is still in development and we've not yet run the build tools to generate the associated STL.

This is where the *sandbox* comes into play - it allows us to work on new parts before running the build process.  Open the `/hardware/sandbox/printedpart_Frame.scad` file in OpenSCAD and you should be able to see the new part (just a small cube).


### Refining the Frame

We can now refine our frame design within the `Frame_Model()` module at the bottom of the `/hardware/printedparts/Frame.scad` file.  

Here's a basic frame design to get you started - refine/change it as much as you'd like:

    module Frame_Model()
    {
        l = ArmLength;
        aid = DCMotor_RearCan_OD(DCMotor_CL072014) + 0.5;  // dia of motors, inc tolerance
        aod = aid + 2 * 2.5; // outer dia of motor holders
        ll = 15;  // leg length
        w = 25;  // width of central plate

        difference() {
            union() {

                // arms
                for (i=[0:3])
                    rotate([0,0,45 + i*90]) {
                        // Nice rounded end
                        hull() {
                            translate([l, 0, -tw])
                                cylinder(r=aod/2, h=tw);

                            translate([l-aod, -tw/2, -tw])
                                cube([1, tw, tw]);
                        }

                        // Rest of the arm
                        translate([0, -tw/2, -tw])
                            cube([l, tw, tw]);

                        // basic landing leg
                        translate([l-aod, -tw/2, -ll])
                            cube([tw, tw, ll]);
                    }

                // central plate for fixing battery and flight controller to
                translate([-w/2, -w/2, -tw])
                    cube([w, w, tw]);
            }

            // holes for motors
            for (i=[0:3])
                rotate([0,0,45 + i*90])
                translate([l, 0, 0])
                    cylinder(r=aid/2, h=100, center=true);


        }
    }

The resulting frame should look like this in OpenSCAD:

![](https://raw.githubusercontent.com/Axford/OpenSCAD_Machine_Design_Template/master/guide/images/QuadFrame_BasicFrame.png)


## Run the build process

Now we have a basic frame design, we can run the build process to explore the results:

 1. Open a terminal and navigate to `/hardware/ci`
 2. Run `./build.py`

The build process will take a minute or so to complete, you can see a fairly verbose output in the terminal window.  Once the process has completed, let's check a few things:

 * Open the machine SCAD file in OpenSCAD, you should now see the frame with motors

![](https://raw.githubusercontent.com/Axford/OpenSCAD_Machine_Design_Template/master/guide/images/QuadFrame_BasicFrameAssembly.png)

 * Open `/hardware/docs/QuadFrameAssemblyGuide.htm` (served from a web server) or open `/hardware/docs/QuadFrameAssemblyGuide.md` in a markdown viewer - you should see a section for the Bill of Materials and assembly instructions for the Final Assembly (albeit one step)

 
