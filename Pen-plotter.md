Swindon Hackspace Pen Plotter
=============================

What is it?
-----------

A plotting device that uses changeable pens to draw. Maximum drawing size is about A3. Graphtek MP1000, with a serial (RS232) interface. It came with documentation for that model (or at least a similar version with a parallel interface).

The plotter also came with several pens (black and some colours) and some special pens for creating PCBs! There are two different sizes of PCB pen, the recommendation was to use the larger (.3mm?) of the two.  There is a small bottle of etch resist to use in the pens which should be diluted 50/50 with meths.  You should only need to put a very small amount of etch resist in the pen and the pen needs to be cleaned out thoroughly after each use to prevent it from getting blocked up.  The copper board should be cleaned up as much as possible so it's nice and shiny so that the etch resist will apply cleanly.

The plotter can be sent commands using GPGL, which is handily defined in the accompanying documentation.

How to use it
-------------

To generate GP-GL with Eagle (PCB design software):

* Download the Eagle software from Cadsoft: https://www.cadsoftusa.com/download-eagle/
 * Or get the package "eagle" on Debian (and presumably derived distributions, such as ubuntu).
* Find the eagle.def file.  In the debian package, it's /usr/share/eagle/bin/eagle.def
* Add a new stanza to the bottom of the file, to teach Eagle how to output GP-GL.

```
[GRAPHTEK_MP1000]
; Partly from http://en.wikipedia.org/wiki/Graphtec_Corporation , but mostly from reading docs
Type = PenPlotter
Long = "Graphtek MP1000"
Init = ":\n"
Reset = ":\n"
; 360 x 270 mm
Width = 14.173228
Height = 10.629921
; 0.1mm
ResX = 254
ResY = 254
Move     = "M%d,%d\n"
Draw     = "D%d,%d\n"
PenSelect = "J%d\n"
```

* Open your board file in eagle
* File > CAM Processor
* Set your output device
* "pos. Coord" should be on
* "Optimize" should probably be on
* Set the layers you want to plot on the right-hand side, and select the pen numbers to use.  Note that the plotter only has 6 pen positions, but some of the layers default to 8.
 * You probably want Top || Bottom, Pads, and Vias.
* Process Job

You should now have a raw file containing the gp-gl code to draw.
Next, you need to prep the plotter and output the file to the plotter.

Prepping the plotter and your computer:
* Hook up the power.  Duh.
* There should be a DB-25 to DE-9 cable and a USB serial adapter already connected.  Hook those up to your computer's USB.
 * FIXME: At least one of the cables that came with doesn't work.  Figure out which, and trash it.
 * FIXME: JMM: Get another usb serial thingy, so that one can stay with.  Just in case it's special.
* Setup your computer's USB->serial port to 9600 bps, even parity, seven data bits, one stop bit, no flow control.
 * On UNIXy like systems (or at least linux) this can be done with: stty -F /dev/ttyUSB0 9600 cs7 parenb -parodd -cstopb
 * FIXME: Confirm for OSX? Settings for windows?
  * The DIP switches are already set such that the plotter expects to get data at 9600 bps, even parity, seven data bits, one stop bit -- 9600 7E1.
  * FIXME: Record the DIP switch information from inside front cover of book.  DIP switches are underdocumented.
NB:  Thus far, we've done it without flow control.  This may be a mistake, but I'm going to document what has worked so far.  Please, somebody, have a go at flow control.  To disable flow control, add clocal to the stty line above.
* Tape down paper.  You can also use bits of steel to hold down the paper (the bed is magnetic), but that has clearance issues -- bits of the plotter can shove around the steel.  The (0,0) corner of the bed is in the lower-left corner, so you probably want the paper aligned there.

Writing out the file:
* Here's where it gets a bit obnoxious.  If you simply output the file out to the device, it can't keep up.  It will plot fine for a while, then start plotting random garbage.  To avoid this, delay a bit between each line.  A little experimentation has shown that 0.1 seconds per line isn't enough, but 0.5 seconds per line is.  This was done with a trivial perl script:  (FIXME: rewrite script, didn't save it previously, more fool me.)    

Future Work
-----------

* Experiment with flow control, to be able to get rid of the horrible hack of per-line delays.
* Figure out actual meaning of DIP switches
* Repeatable procedure for writing resist
* Lathe up pen adapter for use with more easily findable pens?
* Repeatable solution for actually etching?
* Drill station?
