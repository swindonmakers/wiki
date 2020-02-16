(Will add images later)

## Mainly based on using the Prusa i3 MK2, the orange + black one

## This is a 3D Printer

* Output molten plastic via the hot end (200+ degrees C!)
* Bed is also warm or hot (60 - 100 degrees C)
* X, Y, Z movement don't obstruct or interfere
* We use a web based software (Octoprint) to send files to two of the printers, and an SD card for the third one.

## You will need

* A model, as a .STL file - download or make using CAD software
* Slicer software - [Cura (by Ultimaker)](https://ultimaker.com/en/products/ultimaker-cura-software)
* A computer (there's one in the space)
* Much time (likely an hour at least)

## Slicing

* Choose the correct Printer in Cura - *Prusa i3 Mk2* for the one we mostly use.
* Open your .stl file.
* Drag the on screen image around check for red coloured parts that aren't on the base - these will probably need supports. (see Support option in menu)
* Note you can rotate the item to print it a different way up, which may need less support.
* If your item has a small base area, or thin base walls, it will probably need a *Brim*
* Hit the *Slice* button.
* Preview the results, look through the layers to see if you were wrong about not needing supports.
* Look at the (estimated!) time required, if it is too long, think about using a different Profile, or less Infill.
* Save the .gcode file after final slicing.

Repeat above until satisfied with the result - this may also include starting a print, noting you were wrong about one of the settings, stopping it, and re-slicing.

## Printing

* Turn on the printer and its Raspberry pi (2 power switches!)
* Check the printer bed is clear and clean of old prints.
* Spray a little hairspray on the bed.
* Open the printer's [Octoprint](http://192.168.1.11) page in a browser.
* *Connect* the printer using the button in Octoprint, if not connected.
* *Upload* your .gcode file and wait for it to save and appear in the list.
* *Print* your file.

## Now wait and watch!

## Troubleshooting

...
