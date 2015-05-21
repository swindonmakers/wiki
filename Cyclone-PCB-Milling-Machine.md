Mal has brought in his almost-working [Cyclone PCB Milling Machine](http://reprap.org/wiki/Cyclone_PCB_Factory) for us to get working.  The first job is to get it actually cutting PCBs.

# Todo
* Replace x-axis lead screw, it's slightly bent causing wiggles in the cuts.  What dia is it? How long?
* Work out how to use the bed auto leveling software.

# Software

## Toolchains Confirmed To Work
* Eagle, design circuit, export Gerber -> Flatcam, export gcode -> ...?

## PCB Design
* Eagle - works, but steep learning curve, can generate Gerber files that work with Flatcam (gerber -> gcode)
* 123dcircuits.io - easy to design a circuit, but exported Gerber doesn't work with Flatcam
* Fritzing - needs investigation

## Geber -> Gcode Conversion
* [Flatcam](http://flatcam.org/) looks fairly user friendly, easy to use and actively developed.

## Machine Control
* Pronteface (or any 3d Printer software) can drive the machine around.
* [CNC Gcode Controller](http://reprap.org/wiki/CNCGcodeController) looks like it should be good and has bed auto leveling support, runs okay on Windows under Java 7.  `java -jar CNC-GCode-Controller_libs.jar`

# Random links
* http://www.cyclonecnc.4fan.cz/