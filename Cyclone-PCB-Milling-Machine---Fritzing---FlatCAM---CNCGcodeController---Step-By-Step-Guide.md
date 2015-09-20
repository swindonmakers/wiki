This page is intended to be a brief step-by-step process workflow for designing (using Fritzing), "slicing" (using FlatCAM) and cutting (using CNCGcodeController) a PCB using the Hackspaces Cyclone PCB Milling Machine.  It's mainly a brief guide on which buttons to click in which bits of software so that you can get to an end result.  The software process is similar to 3dPrinting in that the first step is design, the second step is to generate gcode ("slice") and the final step is to feed that gcode to the machine.

# Software Setup

## Fritzing (Design)
Standard install, no special config.

## FlatCam ("Slice")
Install FlatCAM and go to the Options tab -> Application Defaults and set
* Units = mm

Gerber Options
* Isolation Routing Tool Dia: 0.1

Excellon Options
* Cut Z: -0.3
* Travel Z: 5.0

Geometry Options 
* Tool Dia: 0.1
* Travel Z: 5.0

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
Design a circuit in Fritzing, be sure to set the PCB to be single sided by clicking on the grey PCB area and then in the Inspector window setting "layers" to "one layer (single-sided)".  Ensure all your tracks end up on the bottom layer.

Then File -> Export -> For Production -> Extended Gerber

## FlatCam
* File -> Open Gerber -> select the xxx_copperBottom.gbl (tracks should appear in green in the view window)
* Project tab: select the file you just loaded
* Selected tab: Isolation Routing (check tool dia) -> Click Generate Geometry (fine red isolation lines should surround the green)
* Project tab: select the _iso item you just created
* Selected tab: Create CNC Job (check cut, travel, tool dia) -> Click Generate (blue isolation lines should appear and some light yellow travel moves)
* Project tab: select the _iso_cnc item you just created
* Selected tab: click Export G-Code (you are done in FlatCam)
* (optional) On the toolbar click "Clear Plot" (3rd icon in). Project tab: select the _iso_cnc item again. Selected tab: click Update Plot.  This should redraw the plot showing the travel moves (light yellow) and cuts (blue) that outline the circuit tracks.  If this doesn't look right, you've done something wrong!  Start again.

## CNC GCode Controller
* Bottom left of window, choose com port (or SIM(ulator)), connect

### Simple Controls tab
* Home X, Home Y
* !!! Ensure Z-endstop croc clip is connected to PCB and to Dremel bit !!!
* !!! Ensure there is some copper below the Dremel bit and it is not isolated from the other croc clip !!!
* Home Z -  be ready to switch the machine off if it doesn't stop when it hits the board.  Hitting the board and not stopping isn't too much of an issue so long as you stop the machine quickly, it will simply jack the dremel up out of the z-axis.  If this happens, power the machine off, be sure to also disconnect from the Arduino (or reset it) and power everything back on.  Then use CNC GCode Controller to lift Z before doing anything else.  Maybe check the z-endstop is working by pressing home and touching the dremel croc clip onto the PCB board, z should go back up a bit then come down.  Touch again and z should stop.

### Auto Level tab
* Define roughly the area you are going to cut in by setting Start and End X & Y, this will make the auto level process much quicker (and more reliable).  You really need to pick a totally clear area.  Any "misses" with the homing will mean you have to start all over again.
* !!! Ensure Z-endstop croc clip is connect to PCB and to Dremel bit !!!
* !!! Ensure there is a connection via the copper where you will be levelling to where you have the other end clipped on !!!
* Click "Start".  Machine should go and z-home at a grid of points.
* !!! Watch it to ensure the homing works and it makes it to every point !!!
* You should get a pretty coloured gradient map of the board levels.

### CNC Milling tab
* Click (1) Load File (the .gcode file you exported from FlatCam)
* The file will probably load with 2 warnings and 2 errors, ignore them(?)  You should see your isolation routing cut in the grid.
* In the Preview box, you should have two "depths" -0.3 which are the cuts and 5.0 which are the travels.  View both, check they look sensible.
* In the Positioning box Tick Z Autolevelling and set X & Y to be the Start X and Start Y you used in the Auto Level step.  (or maybe add 5mm for good luck)
* Click (2) Optimise (may save some time, but generally doesn't for the isolation routing layer)
* !!! Disconnect the z-endstop croc clip from the dremel, clip it somewhere safe that is not attached to the other croc clip, i.e. not onto the edge of the PCB !!!
* Plug in the Dremel and power it up.  Give it 30s to get up to speed.
* Tick Single step, this will allow you to step though the gcode a line at a time, this is a good plan until you know the machine is working okay
* Click (3) Milling
* Press Resume over and over to step through the G-Code
* If its looking good, untick Single Step and hit resume to let the machine run.  You can re-tick single step at any time or pause.