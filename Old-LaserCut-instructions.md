You will need your drawings in dxf format, and some way to transfer them to the computer by the cutter. USB flash drives are preferred for ease of use, but you can use dropbox or similar - remember to use private browsing so that your details aren't saved when you're finished.

### LaserCut Software
Next, open the laser cutter software, which is named, imaginatively, "laser cut".  It's pinned to the taskbar and also on the desktop.

* Import your dxf file -- File Menu -> Import.

* Simplify the lines to cut -- Tools Menu -> Unify lines. 

   This joins up lines that touch or almost touch, and allows the software to select a (relatively) efficient path forthe laser to travel in. If you have issues with engraving text, make sure you're running this step.

* Create layers if needed

    Layers define the laser settings. If you wish to engrave some parts and cut others, or to perform partial cuts, you will need to set layers for your different operations. This is accomplished by using the mouse to pick (or ctrl-click or click + drag) all the lines or parts for the new layer, then click on a colour in this list at the bottom of the screen. Repeat to add more to the same layer, or create a third one, etc.

* Specify how layers are treated.

    In the top-right corner of the program, there is a list with some colour swatches in, which match the colours of the layers in your drawing. The laser will cut each layer in the order shown in the list, top to bottom - this can be changed by dragging and dropping the layers. For example, you should perform engraving and minor cuts before big cuts which will leave loose pieces. Each colour also has its own settings associated with them -- type, speed, and power. These should be set to match the material being worked on - the materials list below will give starting points, but note that similar looking materials can require different settings anyway -- for example, different densities of foam board, even if they are the same thickness, or wood with or without knots in it. Power ranges from 10% (the laser will not fire below 10%) and 100%. **Generally it's helpful to perform some test operations before committing to a job to ensure that your settings are correct.**

Speed is measured in mm/s. There are two speeds listed -- "speed" and "corner speed". "Speed" is how fast it moves on straight lines, and "corner speed" is how fast it moves when going around corners, which should generally be about 5mm/s slower. 

* Arrange parts

    If you're cutting a bunch of parts, and your dxf has them scattered all over the place, drag & drop them until you have them arranged as close as possible in a vaguely rectangular shape. This saves on material.

    If engraving text, ensure the text is arranged with the longest dimension left/right. This speeds up engraving as the laser has to make fewer passes (it engraves left and right, back and forth).
