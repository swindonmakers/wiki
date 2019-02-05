
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

