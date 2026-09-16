## Reporting Issues

If the laser cutter is not cutting all the way through the material, using the suggested settings on [[HPC Laser Cutter]] then please assist the maintainers by cutting some material tests using known settings.

For this purpose there is a file on the Controller named "TEST PLY", and another named "TEST ACR", these are set to cut + engrave a small shape, centred at the current Origin, to test:

* Find some scrap **3mm** plywood (or acrylic, pick one)
* Put it in the laser cutter in the back right corner, set the correct laser head height, press "File", scroll to find the "TEST PLY" (or "TEST ACR") file and choose it. Move the laser head about 2cm from the back right corner, press "Origin" to set the location, press Frame to ensure the test piece can be cut there, and run it.
* While the laser is cutting the outside box of the test piece, look at the current monitor (on the back right corner of the machine, attached via a grey cable), and note what value it is outputting, eg: 14mA
* Repeat for all four corners, label each test piece (eg BR for back right) - you'll need to set "Origin" for each corner.

In the Lightburn software, with the laser running, select "Laser Tools", "Controller Status Info". A dialog box should appear that lists various times the laser has been in use, note the "Total job 'laser on' time" value.

Enter a row in the [Laser Status](https://docs.google.com/spreadsheets/d/1NNtouRcA-ndLL3F7ORl5UAKT8Uut2qOAekwm2lPl5j8/edit?usp=sharing) spreadsheet for each test corner.

* Date - what date did you do the test
* Who -your name!
* Cut Through? -yes if the piece cut all of the way through the material, No with notes/number of passes if not
* Current (mA) - the current readout on the little monitor while doing a cutting action
* Status: laser on - the controller status info laser on hours
* Test material - plywood/acrylic
* Corner - Back Right, Back Left, Front Right, Front left
* Engrave depth - if you can find a working caliper, measure the depth of the engraved square on each piece

## Known Issues