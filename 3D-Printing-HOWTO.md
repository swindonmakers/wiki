This page is for collecting knowledge of 3D Printing in general, and how to use the Makerspace' 3D printers, specifically. Info may be mostly provided using a series of links, as the internet is a pretty good resource for this.

## What is 3D printing?

Several resources on the general principle, while reading please note that the Makerspace printers are <span title="Fused Deposition Modelling">FDM</span> style printers.

- [3dhubs - what is 3d printing](https://www.3dhubs.com/what-is-3d-printing)
- [Instructables - 3D printing basics](https://www.instructables.com/id/3D-Printing-Basics/)
- [Matterhackers - anatomy of a 3d printer](https://www.matterhackers.com/articles/anatomy-of-a-3d-printer)
- [3dhubs - Introduction to Fused Deposition Modelling](https://www.3dhubs.com/knowledge-base/introduction-fdm-3d-printing)

## Our 3D Printers

The Makerspace currently has three working 3D printers:

- [[Prusa MK2 3D Printer]]
- [[Wanhao Duplicator i3 Printer]]
- [[Makerbot Replicator 2x Printer]]

## Finding models

To get started in 3D printing, you can look for models that other people have already designed (and tested!) for you. There are a fair number of sites with free downloads, and probably many more with paid model downloads. Try these:

- [Thingiverse](https://thingiverse.com)
- [MyMiniFactory](https://myminifactory.com)
- [Cults3d](https://cults3d.com/en)

## Printing a model

### Summary

- Find and download (see above), or make (see below), an .stl file of the model you wish to print.
- Slice the model, this creates a .gcode (or .gco) file of the same model, which contains commands specific to the printer you wish to print on, save the .gcode file to your computer.
- Send the file to the printer, using the "Upload" button on Octoprint.
- Load the filament you want, ensure the printer bed is clear and freshly cleaned with IPA (spray bottle provided)
- Choose the uploaded file, then hit the "Print" button on Octoprint
- Watch closely to ensure the first few layers are printed correctly
- Keep an eye on the rest of the print
- Remove object carefully from the bed. (How depends on which printer)

See also:
- [nvbots - from idea to 3d part](https://nvbots.com/blog/going-idea-3d-part-expect-3d-printing/)

### Slicing

.stl files are generic files which describe a model using points and triangles. To operate a printer, we need a file which describes a model using motor movements. Eg: Move extruder head left 2mm, turn on extruder, move motor head left 2mm, turn off extruder, move z motor up 0.1mm. These commands are written in [GCODE](https://reprap.org/wiki/G-code).

The process of converting .stl files into .gcode files is called **slicing**, this is because the gcode commands instruct the printer to print the object one tiny layer at a time. The size of the layer (layer height), can be set in the slicing software, and is usually between 0.1mm (quite fine), and 0.3mm (coarse) - 0.2mm is a good average, for printers with a 0.4mm nozzle.

There are several slicing softwares:

- [Cura (by Ultimaker)](https://ultimaker.com/en/products/ultimaker-cura-software) - installed on the laptop in the fab room
- [Slic3r](http://slic3r.org/)
- [Craftware](https://craftunique.com/craftware/)

The Cura slicing software has built-in profilea for both of the 3D printers we own.

See also:
- [nvbots - introduction to slicing](https://nvbots.com/blog/introduction-to-slicing/)

### Changing filament

The Makerspace has several spools of filament members are free to use. You may also bring your own, check the required size on the Printer's wiki page. If using large amounts of filament, please consider donating a new spool, they cost approximately £20/kg, from [3dfilaprint](https://3dfilaprint.com) - please do not donate random very cheap filament from ebay.

To change the current filament, see the "changing filament" section of each printer's Wiki page.

## Troubleshooting

If you are having issues with the printer(s), please record them on the [3d printing group on the forum](https://forum.swindon-makerspace.org/c/3d-printing-group) the 3d printer maintainers may also be able to help via Telegram.

## Designing your own models

Here comes the hard bit... Luckily the internet has got us covered here too, in no particular order:

- [Hackaday - 3d printering series (SketchUp, OpenSCAD, FreeCad, AutoCAD, Blender)](https://hackaday.com/2014/01/15/3d-printering-making-a-thing-with-sketchup/)
- [OpenSCAD manual](https://en.wikibooks.org/wiki/OpenSCAD_User_Manual)
- [Solvespace Tutorials (youtube)](https://www.youtube.com/watch?v=1Em_XESnqUM&list=PLEvJVXu3VfGMSOdpA0jrGRzoM7NlNOl5s)
- [Fusion 360 Tutorial](http://help.autodesk.com/view/fusion360/ENU/)

