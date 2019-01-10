The [HPC LS6840](http://hpclaser.co.uk/index.php?main_page=product_info&cPath=1&products_id=38) laser cutter was obtained by free loan agreement from [Reprap LTD](https://reprapltd.com/) in October 2016. A condition of this loan agreement is that a notice of the free loan will be displayed on the laser at all times, therefore this notice MUST NOT be removed.

| Contents |
| --- |
| [Designing for the Laser](#designing-for-the-laser) |
| ***   [Tabbed Box Maker](#tabbed-box-maker) |
| [Preparing your file](#preparing-your-file) |
| [Using the cutter](#using-the-cutter) |
| [What you can't Cut](#what-you-can-not-cut) |
| [Settings](#settings) |
| [Maintenance](#maintenance) |


# Designing for the Laser

The best format for the LaserCut 5.3 software to import is a .dxf file (R14, if multiple options are available). This can be generated using many different design programs, but the recommended option is Inkscape (available for free download from https://inkscape.org/en/).

## Tabbed Box Maker

![](http://thelaserco.com/wp-content/uploads/2017/04/Laser_Cut_Finger_Jointed_Box-1.jpg)

A common use for the laser cutter is to make tabbed boxes like the image above. There are many ways to achieve this, from manually drawing out each side, to software programs and websites aimed at creating these boxes. If you've already got Inkscape set up, the best way however is to use the [Tabbed Box Maker plugin](https://github.com/paulh-rnd/TabbedBoxMaker).

To install the plugin make sure Inkscape is closed, then download the files from GitHub (get them all with the _Download Zip_ option) and copy them to the relevant extensions folder. All three files (Boxmaker.inx, Schroffmaker.inx and Boxmaker.py) should be copied.
![](https://i.ocatelle.xyz/screenshots/chrome_2018-10-08_22-50-19.png)
The extensions folder can be found at the following location:

`<INSTALL PATH>/share/extensions`

This plugin gives you a wide array of options, and these are explained below.

![](https://i.ocatelle.xyz/screenshots/2018-10-08_21-38-59.png)

| Option | Use |
| ------------- | ------------- |
| Unit | Change what unit your input sizes are measured in. This will affect every size input. |
| Box Dimensions | Changes whether input sizes are internal or external dimensions. Final sizes depend on the thickness of your material. |
| Length | One side of the box, in whatever unit you selected |
| Width | One side of the box, in whatever unit you selected |
| Height | One side of the box, in whatever unit you selected |
| Minimum/Prefered Tab Width | Smallest tab size, in whatever unit you selected |
| Tab Width | for fixed the tab width is the value given in the Tab Width, for proportional the side of a piece is divided equally into tabs and 'spaces' with the tabs size greater or equal to the Tab Width setting |
| Material Thickness | Thickness of your material, in whatever unit you selected |
| Kerf | Width of the cut itself, in whatever unit you selected. Ideally this is around 0.1mm for the laser, but may be wider depending on material and focus |
| Clearance | If you want loose joints, add to this in whatever unit you selected. Usually you want a value of 0 here. |
| Layout/Style | Determines type of drawing produced |
| Box Type | Decides if you want to leave open sides or if you want to have an enclosed box | 
| Dividers (Length Axis) | Number of dividers you want along the Length Axis | 
| Dividers (Width Axis) | Number of dividers you want along the Width Axis | 
| Key the dividers into | The plugin can add slots and tabs to hold the dividers in place, select where you would like these to slot into | 
| Space Between Parts | Gap between pieces in the drawing, in whatever unit you selected. Large numbers will waste material. The default of 1mm is usually fine |



# Preparing your file

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

Speed is measured in mm/s. There are two speeds listed -- "speed" and "corner speed". "Speed" is how fast it moves on straight lines, and "corner speed" is how fast it moves when going around corners, which should generally be about 5mm/s slower. 

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

# What you can not cut



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

# Settings

**Note: The lens has been replaced as of 06/06/2018. Cutting efficiency is markedly better than before, so test your cut settings first! If you find you can cut just as well with a lower power, please update the wiki to reflect the new settings.**

Work area: 680 x 400mm

Website of useful settings for different materials (you will need to test and trial some settings first to be sure)
[Bosslaser Laser Settings](https://www.bosslaser.com/laser-settings)

Rolls of fabric - @TheOrbTwo

## Cut Settings
| Material | Speed (mm/s) | Power (%) | Passes | Note |
| -------- | ------------ | --------- | ------ | ---- |
| Red cotton | 200 | 30 | 1 | | 
| Black mesh | 200 | 16 | 1-2 | | 
| Rubbery material | <250 | 45 | 1 | |
| Card, 250gsm | 320 | 17 | 1 | |
| Cardboard, Single Wall, 4mm | 50 | 30 | 1 | |
| Fleece, support material only | 250 | 14 | 1-2 | Test first, fluffy side down |
| Thin fleece, support material only | 180 | 14 | 1 | Test first, fluffy side down |
| Foamboard, 5mm | 100 | 42 | 1 | To cut all the way through |
| Foamboard, 5mm | 130 | 28 | 1 | To cut half way through | 
| Foamboard, 5mm | 250 | 18 | 1 | To score |
| Plywood, 3mm | 20 | 50 | 1 | |
| Plywood, 1.5mm | 20 | 28 | 1 | |
| Balsa, 1/16th | 150 | 24 | 1 | |
| Acrylic, 3mm, Clear | 15 | 65 | 1 | |
| Acrylic, 3mm, Colour | 20 | 65 | 1 | |
| Acrylic, 6mm, Clear | 4 | 65 | 1 | |
| Leather, 4mm | 4 | 30 | 1 | MUST BE REAL LEATHER! Cover with masking tape to reduce burning |

## Engrave Settings
| Material | Speed (mm/s) | Power (%) | Passes | Note |
| -------- | ------------ | --------- | ------ | ---- |
| Red cotton | 250 | 18 | 1 | |
| Black mesh | 250 | 13 | 1 | |
| Rubbery material | 250 | 15 | 1 | |
| Card 250gsm | 400 | 14 | 1 | |
| Cardboard, Single Wall, 4mm | 250 | 15 | 1 | |
| Fleece, support material only | 300 | 13 | 1 | Test first, fluffy side down |
| Plywood 3mm | 200 | 20 | 1 | | 
| Acrylic, 3mm | 200 | 15 | 1 | |
| Leather, 4mm | 150 | 20 | 1 | MUST BE REAL LEATHER! Cover with masking tape to reduce burning |

![Cutting and Engraving examples](https://github.com/swindonmakers/documentation/blob/master/20170906_210624.jpg?raw=true)
![Cross cut of leather](https://github.com/swindonmakers/documentation/blob/master/20170906_210646.jpg?raw=true)

# Details
For details on the actual equipment, see the [[HPC Laser Cutter Internals]] page
