## Materials
The Laser Cutter can be used to cut Acrylic, Laserable Plywood, and various other materials that won't kill you with fumes if you set them on fire. [We have a list](https://github.com/swindonmakers/wiki/wiki/HPC-Laser-Cutter#settings)

## Software
There's a laptop that lives in the Fab Room next to the Laser, which has a copy of Lightburn installed on it, which is the software used to layout and transfer files onto the Laser for cutting. You can obtain your own copy and pre-prepare your files at home here: [Lightburn Download](https://lightburnsoftware.com/pages/download-trial). We have some machine settings & material library (link tbd) you can import to setup for the Makerspace Laser.

Please do NOT change any settings in Lightburn on the Fab Room laptop without asking, other than:

* The library (please add to this if materials not yet there!)
* The positioning settings (see below)

Feel free to try out other settings on your own copy, and report back if they seem useful.

## Design
To get the best results, create a DXF or SVG file (vector format). Lightburn supports a number of file formats, and has various tools to create simple shapes and text, their docs are at [Design & File Importing](https://docs.lightburnsoftware.com/BasicUsageEssentials.html)

Use the File -> Import menu item or the toolbar icon to import your DXF (or other) file.

## Line/Fill settings (previously Cut/Engrave)
Lightburn can do multiple types of operation in one file. If you would like to fill/engrave/partly cut a part of your design, it will need to be a completely enclosed area. Select that line, or lines with the mouse (hold CTRL to select multiple at once), and choose a different colour for it in the colour bar at the bottom of the screen, this will create a separate entry in the Cuts/Layers window. If your design consists of a detailed part and an outline (eg an image inside a circle for a coaster), then add a separate layer for the outer rim as well

![Cuts / Layers Window](https://docs.lightburnsoftware.com/img/CutsAndLayers.png)

Change the mode to "Fill" for engraving, or "Cut" for cutting lines, for image files you can also choose "Image".

Layers can be re-ordered, to suggest which order to cut them. Lightburn will however choose to cut the innermost parts before the outer ones, regardless of the layer order.

## Material settings
Each layer will need Speed and Power settings, appropriate for the type of material, and the type of operation. Lightburn has a material library which is available as a tab behind the Laser settings (or check the Window menu to turn it on)

![Material Library](https://docs.lightburnsoftware.com/img/MaterialLibrary/LibraryWindowLocation.png)

Choose a layer, look in the library, if the material is in the library, choose it and click "Assign" to apply those Speed+Power settings to the layer. Repeat for each layer.

To Fill/Engrave/Draw lines (cut not all the way through), use the "Engrave" library entries. Note that Fill areas cannot be close to the edge of the cutting area, the controller will warn you if it is too close.

If your material is not yet in the library, look it up in the [Settings List](https://docs.lightburnsoftware.com/img/MaterialLibrary/LibraryWindowLocation.png). To enter the values, double-click on the layer row

## Positioning on the material
The Laser cutter bed is 680cm x 400cm, the Lightburn software on the laser laptop is setup for the correct size and origin (top-right).

There are 2 settings for positioning your design:

![Lightburn Start From settings](https://docs.lightburnsoftware.com/img/CoordinatesStartFrom.png)

The absolute or relative position:

* Absolute Coordinates - the design will be cut where it is positioned on the bed representation in the lightburn design window.
* User Origin - the design will be cut where the controller "Origin" is saved.
* Current Position - the design will be cut at the current laser head position (use the arrow keys to move it around, `ESC` out of the menu first if necessary)

The Job Origin:

Together with the positioning setting you can also set which point of your design (top, bottom, left, right, centre, corners) is mapped to the current position or origin. 

## Laser focus height
The laser needs to be focused on your material surface in order to cut properly. As its possible other members have cut different thicknesses of material set this every time you start a new cutting session (or different material thickness). On the top of the laser this is a box of focus setting devices.

![Laser focus setting device](https://i.imgur.com/OhgOvWJ.jpg)

On the laser controller, press the Z/U button. Use the Left arrow button to move the bed upwards, or the Right arrow button to move the bed down, until the focus tool is standing on your material.

## Set User Origin
To cut a design repeatably at a particular position on the laser bed, you can set an Origin which the head will be reset to after homing, and the design will be cut at when using "User Origin".

On the laser controller, ensure you are out of any menus by hitting the `ESC` button. Use the arrow keys to move the laser head to your chosen position, hit the "Origin" button on the controller (it doesn't beep).

## Testing & Cutting
Once the design is laid out, you must verify the positioning and whether any fill operations are far enough away from the edge. To do this click the "Frame" button on the Laser tab (switch back from the Material library if you had it open). This will send the file to the laser and cause it to move the laser head to the chosen starting position, it will then move the laser head in a box shape showing where the extents of the design will be cut.

Pay attention while this is happening, that the head doesn't collide with any weights used to hold down your material. If the controller beeps and refuses to frame your design, check the screen, it has probably indicated an issue with the fill being too close to the edge. Hit ESC on the controller and reposition your design.

You can also do this operation in three steps:

* "Send" the design to the laser (confirm the default file name choice)
* Use "File" on the controller to choose the file sent
* Use "Frame" on the controller to have the head move around the outline.

# Running the laser
With the design positioned, cut layers setup, file on the laser and the outline verified with Frame, you can now cut. Ensure the extraction tube is connected (goes from laser out of the ceiling), turn on the Extraction fan (white power switch next to the extraction tube).

Tap "Start" on the laser controller.
