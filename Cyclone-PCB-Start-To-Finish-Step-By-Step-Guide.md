This page is intended to be a brief step-by-step process workflow for designing (using Fritzing), "slicing" (using FlatCAM) and cutting (using CNCGcodeController) a PCB using the Hackspaces Cyclone PCB Milling Machine.  It's mainly a brief guide on which buttons to click in which bits of software so that you can get to an end result.  The software process is similar to 3dPrinting in that the first step is design, the second step is to generate gcode ("slice") and the final step is to feed that gcode to the machine.

# Software Setup

## Fritzing (Design)
Standard install, no special config.

## FlatCam ("Slice")
Install FlatCAM and go to the Options tab -> Application Defaults and set
* Units = mm

Gerber Options
* Isolation Routing Tool Dia: 0.1mm is the actual tool dia, but using 0.35 seems to work well, adjust if tracks get merged or overlap.

Excellon Options
* Cut Z: -0.4 (this is the depth of drill markings)
* Travel Z: 4.0
* Feed Rate: 1.0

Geometry Options 
* Cut Z: -0.2 (this is the depth of cut for isolation routing)
* Tool Dia: 0.1
* Travel Z: 4.0
* Feed Rate: 1.0

CNC Job Options 
* Tool Dia: 0.1

Select File -> Save Defaults and then File -> New to copy the new app defaults into the project defaults.

## CNC Gcode Controller Settings (cut)
* Homing = lower left
* Fast Move Feedrate: 600
* Size of Workingspace: 150 x 100 x 50

AutoLevel/Options:
* Zero Height: 0
* Max Depth: 1
* Safe Height: 5
* Clearance: 5
* Feedrate: 50

AutoLevel/Distance:
* Distance: 10


***

# Using the Software

## Fritzing (Design)
Design a circuit in Fritzing.  When you get to the board layout stage be sure to:
* Set the PCB to be single sided by clicking on the grey PCB area and then in the Inspector window setting "layers" to "one layer (single-sided)".  
* Ensure all your tracks end up on the bottom layer.
* Use the widest track width you can get away with.  You can select all tracks using the routing menu(?) and adjust them all at once.
* Some components (voltage regulators, header pins, ...) allow you to change the pad size, increase the pad size as much as possible so you have more room for drilling and soldering.

Then File -> Export -> For Production -> Extended Gerber

## FlatCam (for generating isolation routing gcode)
* File -> Open Gerber -> select the xxx_copperBottom.gbl (tracks should appear in green in the view window)
* Project tab: select the file you just loaded
* Selected tab: Isolation Routing (check tool dia) -> Click Generate Geometry (fine red isolation lines should surround the green)
* Project tab: select the _iso item you just created
* Selected tab: Create CNC Job (check cut, travel, tool dia) -> Click Generate (blue isolation lines should appear and some light yellow travel moves)
* Project tab: select the _iso_cnc item you just created
* Selected tab: click Export G-Code (you are done in FlatCam)
* (optional) On the toolbar click "Clear Plot" (3rd icon in). Project tab: select the _iso_cnc item again. Selected tab: click Update Plot.  This should redraw the plot showing the travel moves (light yellow) and cuts (blue) that outline the circuit tracks.  If this doesn't look right, you've done something wrong!  Start again.

## FlatCam (for generating drilling guide holes)
Rather than changing tool and getting the machine to drill the holes and risking disturbing the mechanical setup, we simply use the cutting tool to mark the centers of the drill holes to act as a guide for manual drilling for now.
* File -> Open Excellon -> select the xxx_drill.txt (red circles should appear in the view)
* Project tab: select the file you just loaded.
* Selected tab: in the tools list, select all rows.  (click in and ctrl-A in Windows)
* Check Cut Z = -0.4, Travel Z = 4.0
* Click Generate.
* Project tab: select the _drill.txt_cnc you just created.
* Selected tab: click Export G-Code

## CNC GCode Controller
* Bottom left of window, choose com port (or SIM(ulator)), connect

### Simple Controls tab
* Home X, Home Y
* !!! Ensure Z-endstop croc clip is connected to PCB and to Dremel bit !!!
* !!! Ensure there is some copper below the Dremel bit and it is not isolated from the other croc clip !!!
* Home Z -  be ready to switch the machine off if it doesn't stop when it hits the board.  Hitting the board and not stopping isn't too much of an issue so long as you stop the machine quickly, it will simply jack the dremel up out of the z-axis.  If this happens, power the machine off, be sure to also disconnect from the Arduino (or reset it) and power everything back on.  Then use CNC GCode Controller to lift Z before doing anything else.  Maybe check the z-endstop is working by pressing home and touching the dremel croc clip onto the PCB board, z should go back up a bit then come down.  Touch again and z should stop.

### Auto Level tab
* Define roughly the area you are going to cut in by setting Start and End X & Y, this will make the auto level process much quicker (and more reliable).  You really need to pick a totally clear area.  Any "misses" with the homing will mean you have to start all over again.  Make sure the autolevel area you choose is bigger than what you intend to cut by at least 5mm.  Note that by default it starts at 5,5.  It's probably worth always changing this to 0,0.
* !!! Ensure Z-endstop croc clip is connect to PCB and to Dremel bit !!!
* !!! Ensure there is a connection via the copper where you will be levelling to where you have the other end clipped on !!!
* Click "Start".  Machine should go and z-home at a grid of points.
* !!! Watch it to ensure the homing works and it makes it to every point !!!
* You should get a pretty coloured gradient map of the board levels.

### CNC Milling tab
* Click (1) Load File (the .gcode file you exported from FlatCam)
* The file will probably load with 2 warnings and 2 errors, ignore them(?)  You should see your isolation routing cut in the grid.
* In the Preview box, you should have two "depths" -0.2 which are the cuts and 5.0 which are the travels.  View both, check they look sensible.
* In the Positioning box Tick Z Autolevelling and set X & Y to be the Start X and Start Y you used in the Auto Level step.  (maybe add 5mm for good luck)
* In the Positioning box Tick Mirror X (or mirror Y) if you have any connectors that need to be the right way round.  Remember you are cutting the underside of the board.
* Click (2) Optimise (will save some time in the drilling, but generally doesn't for the isolation routing layer)
* Replace the F1.000 command near the start with G01 F1000 (or the machine will move incredibly slowly in Z and just wont work right)  To do this, right click on the command in the list and select "Edit"
* !!! Disconnect the z-endstop croc clip from the dremel, clip it somewhere safe that is not attached to the other croc clip, i.e. not onto the edge of the PCB !!!
* Disconnect the other end of the z-endstop from the PCB and clip it somewhere out of the way.  This should stop false z-endstop triggers while cutting.  (Don't clip it onto the other croc clip.)
* Plug in the Dremel and power it up.  Give it 30s to get up to speed.
* Ensure that the Dremel power cable is away from other wires, it seems to trigger end stops and sometimes upsets motor control.
* Tick Single step, this will allow you to step though the gcode a line at a time, this is a good plan until you know the machine is working okay
* Click (3) Milling
* Press Resume over and over to step through the first few lines of G-Code.  The dremel should move out to the point at which it will start the first cut.
* If its looking good, before the first G01 Z-0.2 command untick Single Step and hit resume to let the machine run.  You can re-tick single step at any time or pause.

## Drilling Guides
* Still on the CNC Milling tab, load the gcode you generated for the drilling guides and follow the same steps as above to mark the drilling points.  If you drill immediately after cutting all you should need to do is load the file and click on (3) Milling.  Take the same precautions with end stops, cables, the Dremel and stepping through the first few lines of gcode.


## Post Clean Up & Drilling
* Clean up the rough edges around the tracks using some fine (300 grit or finer?) sandpaper until the track edges look tidy.
* Wash the board in warm water, use an old toothbrush to clean out the cuts.
* Use a multimeter to check that all the tracks are isolated from the non-connected copper and also from any nearby tracks.  Run a small flat head screw driver around the cuts of any tracks that aren't isolated until they are.
* Use a small hand drill to drill out the holes for the components.  A 0.75mm drill bit works well for most small legged components; resistors, caps, etc.  Larger components like voltage regulators and pin headers may need 1mm holes drilling.  The drill guide holes should help to keep in the right place.