A page for collecting notes and information about the HPC laser cutter that we have on loan from Reprap Ltd.

Link to [Laserscript LS6840](http://www.laserscript.co.uk/LS6840.html) info page

# Using the cutter:

You will need your drawings in dxf format, and some way to transfer them to the computer by the cutter. USB flash drives are preferred for ease of use, but you can use dropbox or similar - remember to use private browsing so that your details aren't saved when you're finished.

Next, open the laser cutter software, which is named, imaginatively, "laser cut".  It's pinned to the taskbar and also on the desktop.

* Import your dxf file -- File Menu -> Import.

* Simplify the lines to cut -- Tools Menu -> Unify lines. 

   This joins up lines that touch or almost touch, and allows the software to select a (relatively) efficient path forthe laser to travel in. If you have issues with engraving text, make sure you're running this step.

* Create layers if needed

    Layers define the laser settings. If you wish to engrave some parts and cut others, or to perform partial cuts, you will need to set layers for your different operations. This is accomplished by using the mouse to pick (or ctrl-click or click + drag) all the lines or parts for the new layer, then click on a colour in this list at the bottom of the screen. Repeat to add more to the same layer, or create a third one, etc.

* Specify how layers are treated.

    In the top-right corner of the program, there is a list with some colour swatches in, which match the colours of the layers in your drawing. The laser will cut each layer in the order shown in the list, top to bottom - this can be changed by dragging and dropping the layers. For example, you should perform engraving and minor cuts before big cuts which will leave loose pieces. Each colour also has its own settings associated with them -- type, speed, and power. These should be set to match the material being worked on - the materials list below will give starting points, but note that similar looking materials can require different settings anyway -- for example, different densities of foamboard, even if they are the same thickness, or wood with or without knots in it. Power ranges from 10% (the laser will not fire below 10%) and 100%. **Generally it's helpful to perform some test operations before committing to a job to ensure that your settings are correct.**

FIXME: what are the units of speed, anyway?  There are two speeds listed -- "speed" and "corner speed".  "Speed" is how fast it moves on straight lines, and "corner speed" is how fast it moves when going around corners, which should generally be about 5 slower.  There are also some advanced settings for doing things like cutting dashed lines.  Most of these are untested and not really understood.

* Arrange parts

    If you're cutting a bunch of parts, and your dxf has them scattered all over the place, drag & drop them until you have them arranged as close as possible in a vaguely rectangular shape. This saves on material.

    If engraving text, ensure the text is arranged with the longest dimension left/right. This speeds up engraving as the laser has to make fewer passes (it engraves left and right, back and forth).

* Check the equipment

    Go around to the chiller, lift the lid, and check the colour of the water. If it's brown, lumpy or has sediment in, change the water according to the procedure below. Next, smell the water. If it smells like chlorine (think swimming pool), that's good. If it doesn't, throw in an inner capful of the "sterilising fluid" that should be sitting on top of the chiller (instructions are on the bottle). That keeps the water sterile, as any organic contaminants can damage the laser tube.

* Turn on

    Flip the key-switch on the side of the laser cutter to turn it on.  This will turn on the compressor, the extractor fan on the roof, the chiller, and provide power to the fancy stainless steel extractor/filter unit.  (Which won't turn on quite yet.)  If any of that stuff doesn't turn on, something is wrong, and you shouldn't cut until everything is working properly.

**Note: If cutting in hot weather, make sure the chiller's temperature drops to withing 2-3C of the target temperature before starting work. The target temperature is the bottom figure (currently 18C), the current temperature the top figure. It may take five minutes to chill sufficiently if ambient temperature in the space is over 25C.**

* Send data to laser

    Once the laser is on, you can send over your instructions by hitting the "Download" button, on the far right of the lasercut software, then "Download Current". Once this is done counting, all the work is on the laser (unless you need to rejig something..). To ensure your items are cut starting at the top-right of the laser bed, make sure the "immediate" checkbox near the button is checked. If it wasn't, do it and Download again.

* Align laser material in the laser

    Open the lid of the laser and put in your material, if the laser head isn't currently top-right, hit the "Datum" button on the laser to move it there. Align your material so that the top-right corner is under the laser head (red light!)

* Make sure the laser is focused

    To make an ideal cut, the red dot of the laser head should be a single dot - all around the work piece. Hit ESC on the laser controls, remove your hands and other appendages from the work area, then press "Test" - this will move the laser head around the extreme edges of your workpiece. This shows you a) where the edges are and b) whether it is in focus everywhere. If it is not in focus at all, hit the Z button in the middle of the control pad, and then Up or Down to adjust - this *should* move in tiny increments.. if it doesn't - then someone needs to insert instructions here on how to change the increments.

    If the laser is focused in some places and not others, tape down or weigh down your material with something.. keep hitting "Test" to check, and also make sure your weights are outside of the cutting area!

**Note: If cutting transparent or translucent acrylic, focus the laser *before* removing the plastic film**

* Turn on the Filter

    Press the ! button in the middle of the control pad on the filter (large silver cabinet with a blue screen and tumble dryer type hoses attached) and wait a few seconds. If it's noisy, it's working!

* Cut!

    Close the laser lid, and press the "Start/Pause" button

# Changing the water

* If the water needs to be changed, take an empty bucket, and around four to six litres of clean tap water. 
* Turn off the laser cutter and chiller, and pull the chiller forwards slightly for easier access. 
* Around the back of the chiller, position your bucket behind the water pipe fittings and remove the "outlet" pipe carefully. It will likely drip into the bucket.
* Remove the lid of the chiller, and the lid of your water container (if applicable).
* Turn on the laser cutter with the key, and the chiller will start pumping water into the bucket. Note: It will beep angrily, this is how it warns of a leak. Ignore it, because you should be catching the leak in your bucket. 
* Pour your water into the chiller to keep the level roughly constant. It will pump through the chiller, through the laser and into the bucket, hopefully flushing out any contaminants.
* Once you approach the bottom of your water container, switch off the laser cutter. The chiller should switch off. Re-attach the outlet pipe.
* Turn on the laser cutter again. Keep an eye on the water level, and top up if required - the water should just cover the pipework coils inside the tank.
* Put in an inner capful (~15ml) of the sterilising fluid kept by the chiller, and leave the chiller on for two minutes to allow the sterilised water to be circulated.
* Re-fit the lid and turn off the chiller. Carefully slide it back into position.

# Cut Settings

**Note: The lens has been replaced as of 06/06/2018. Cutting efficiency is markedly better than before, so test your cut settings first! If you find you can cut just as well with a lower power, please update the wiki to reflect the new settings.**

Work area: 680 x 400mm

Website of useful settings for different materials (you will need to test and trial some settings first to be sure)
[Bosslaser Laser Settings](https://www.bosslaser.com/laser-settings)

Rolls of fabric - @TheOrbTwo

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

## Corrugated Cardboard 4mm thick single wall
* Cut: speed 50 , power 30, passes 1
* Partial cut: speed 250, power 30, passes 1
* Engrave: speed 250, power 15, passes 1

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
* engrave: speed 200, power 20, bidir = 0

## 1.5mm Plywood
* cut: speed 20, power 28/26

## 3mm Acrylic

Clear material absorbs less laser, so needs marginally higher power settings.

NOTE: Remove protective film once laser is focused.

* cut (solid colours): speed 20, power 60/55
* cut (transparent/translucent): speed 15, power 70/65
* engrave: speed 200, power 15

## 6mm acrylic (clear)
*cut (transparent): speed 4, power 60/55

NOTE: 6mm acrylic in space Very smelly and antisocial, cut when no one around!

## Leather (4mm) - Veg tanned

It's best to cover the leather in masking tape as this will reduce the surface burning.

* cut: speed 4, power 30/30
* engrave: speed 150, power 20 (very shallow) - (try 30 for a bit deeper)

![Cutting and Engraving examples](https://github.com/swindonmakers/documentation/blob/master/20170906_210624.jpg?raw=true)
![Cross cut of leather](https://github.com/swindonmakers/documentation/blob/master/20170906_210646.jpg?raw=true)

# Details
For details on the actual equipment, see the [[HPC Laser Cutter Internals]] page
