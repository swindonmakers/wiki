A page for collecting notes and information about the HPC laser cutter that we have on loan from Reprap Ltd.

# Using the cutter:

To begin with, you will want to make your drawings into a dxf file, and get it on to the computer by the cutter.  You can do this using a usb key, emailing it to yourself, sticking it on the internet somewhere... just remember that if you log in to your email, you should log back out.

Next, open the laser cutter software, which is named, imaginatively, "laser cut".  It's pinned to the taskbar.

* Import your dxf file -- File Menu -> Import.

* Simplify the lines to cut -- Tools Menu -> Unify lines. 

* Create layers if needed

    If your dxf file is all one layer, but you want to actually engrave some parts, and cut others, or only partially cut some, create some layers. Do this by using the mouse to pick (or click + drag) all the parts for the new layer, then click on a colour in this list at the bottom of the screen. Repeat to add more to the same layer, or create a third one, etc.

* Specify how to cut or engrave various layers

    In the top-right corner of the program, there is a list with some colour swatches in, which match the colours of your imported dxf file, one for each layer.  When you go to cut, it will start at the top of the list, cut all lines of that colour, and then move on to the next one.  You can drag-and-drop if you don't like the order.  (For example, you should try to leave cuts that will create small pieces until after the cuts that will add features to those small features.)  Each colour also has it's own settings associated with them -- type, speed, and power.  You'll want to change these to get a good cut, and the kind of cut you want.  If you want to cut shapes into your workpiece, even if you don't want to cut all the way through, leave the type on "cut".  Change the power and speeds to where you want them -- look at most of the rest of this page for starting places, but note that similar looking materials can require different settings anyway -- for example, different densities of foamboard, even if they are the same thickness, or wood with or without knots in it.  The power level is in percent.  Going over 100% will not be helpful, and seems to cause odd things to happen.  The physics of the laser mean that there's a minimum power level under which the laser doesn't fire, which seems to be around 10%.  FIXME: what are the units of speed, anyway?  There are two speeds listed -- "speed" and "corner speed".  "Speed" is how fast it moves on straight lines, and "corner speed" is how fast it moves when going around corners, which should generally be about 5 slower.  There are also some advanced settings for doing things like cutting dashed lines.  Most of these are untested and not really understood.

* Arrange parts

    If you're cutting a bunch of parts, and your dxf has them scattered all over the place, drag & drop them until you have them arranged as close as possible in a vaguely rectangular shape. This saves on material.

* Check the equipment

    Go around to the chiller, lift the lid, and smell the water.  If it smells like chlorine (think swimming pool), that's good.  If it doesn't, throw in a capful of the "sterilizing fluid" that should be sitting on top of the chiller.  That keeps stuff from growing in the water cooling water, which would end up burning up inside the laser tube, where it's really hard to clean.

* Turn on

    Flip the key-switch on the side of the laser cutter to turn it on.  This will turn on the compressor, the extractor fan on the roof, the chiller, and provide power to the fancy stainless steel extractor/filter unit.  (Which won't turn on quite yet.)  If any of that stuff doesn't turn on, something is wrong, and you shouldn't cut until everything is working properly.

* Send data to laser

    Once the laser is on, you can send over your instructions by hitting the "Download" button, on the far right of the lasercut software, then "Download Current". Once this is done counting, all the work is on the laser (unless you need to rejig something..). To ensure your items are cut starting at the top-right of the laser bed, make sure the "immediate" checkbox near the button is checked. If it wasn't, do it and Download again.

* Align laser material in the laser

    Open the lid of the laser and put in your material, if the laser head isn't currently top-right, hit the "Datum" button on the laser to move it there. Align your material so that the top-right corner is under the laser head (red light!)

* Make sure the laser is focused

    To make an ideal cut, the red dot of the laser head should be a single dot - all around the work piece. Hit ESC on the laser controls, hands outta the way, then "Test" - this will move the laser head around the extreme edges of the thing you told it to cut. This shows you a) where the edges are and b) whether its in focus everywhere. If its not in focus at all, hit the Z button in the middle of the control pad, and then Up or Down to adjust - this *should* move in tiny increments.. if it doesn't - then someone needs to insert instructions here on how to change the increments.

    If the laser is focused in some places and not others, tape down or weigh down your material with something.. keep hitting "Test" to check, and also make sure your weights are outside of the cutting area!

* Turn on the Filter

    Press the ! button in the middle of the control pad on the filter (behind the PC, the large shiny thing!).. it will make lots of noise!

* Cut!

    Close the laser lid, and press the "Start/Pause" button

# Cut Settings

Work area: 680 x 400mm

Rolls of fabric on roof - @TheOrbTwo

## Red cotton
* Cut: speed 200, power 30, passes 1
* Engrave (shallow): Speed 250, power 18, passes 1

## Black mesh netting
* Cut: speed 200, power 16, passes 1/2 depending on threads
* Engrave nicely: Speed 250, power 13, passes 1

## Rubbery material
* Cut  MORE TESTING REQUIRED. didnt cut fully at 250s 45p
* Engrave nicely: speed 250, power 15/15, passes 1

## Cardboard 0.22mm Thickness (UPDATE GSM value)
* Kerf value of 0.1mm (or oversize edges of design by 0.1mm)
* Cut: speed 320, power 17, passes 1
* Engrave: speed 400, power 14/13, passes 1, note corners may still pinhole due to laser power and thickness of material

## Corrugated Cardboard single wall
* Cut: speed , power , passes 1
* Engrave: speed , power , passes 1

## Fleece to cut through just support material on back. NOTE TEST on your material, fluffy side down.
* Cut: speed 250, power 13/14, passes 1/2 depending
* Engrave: speed 300, power 13, passes 1 - Engraving is useful for marking material for hand cutting.

## Thin fleece to cut through just support material on back. NOTE TEST on you material, fluffy side down
* Cut: speed 180, power 14, passes 1

## Foamboard (stuff Rob has) [link](http://www.artdiscount.co.uk/paper-board/board/foam-board/white-foam-board-5mm.html)
Still a bit sketchy on long curves for some reason, where the head goes slower than it should / does on straights.
* score: speed 250, power 18/14, passes 1
* half: speed 130, power 28/24, passes 1
* cut: speed 100, power 42/40, passes 1

## Simon's 10mm packaging foam (velvet facing)
* cut: speed 20, power 20, passes 1

## 3mm Plywood
* cut: speed 20, power 50/45, total kerf 0.2mm (use offset of 0.1)
* engrave: speed 50, power 18/14, passes 1

## 1.5mm Plywood
* cut: speed 20, power 28/26

## 3mm Acrylic

NOTE: Focus must be dead on to avoid non-parallel cuts, some experimentation may be required as focus indicator does not give optimum focus.

* cut: speed 20, power 60/55
* engrave: coming soon

# Details
For details on the actual equipment, see the [[HPC Laser Cutter Internals]] page
