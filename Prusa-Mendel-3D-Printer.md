## Using the Prusa Mendel 3D Printer

This page is a work in progress and only contains some of the pieces needed to use the printer - please ensure you have been instructed on its proper use before operating the printer.

### 3D Model

Ready-made 3D models can be downloaded as `STL` files from sites such as [Thingiverse](http://www.thingiverse.com/thing:200472/#files), [YouMagine](https://www.youmagine.com), and [My Mini Factory](http://www.myminifactory.com).  Catalogue sites such as [GrabCAD.com](https://grabcad.com) and [STL Finder](http://www.stlfinder.com/) can also be useful for models of various parts.  Some formats (such as `STEP`) can be opened in FreeCAD and then exported as `STL`.

Create your own designs using software such as [FreeCAD](http://www.freecadweb.org/wiki/index.php?title=Download#Stable_FreeCAD_installers) or [OpenSCAD](http://www.openscad.org), then export a 3D model (or _mesh_) as an `STL` file.

### Slicing

An `STL` file needs to be _sliced_ into layers and exported as `gcode` toolpath instructions for the printer to follow.

The slicing software needs to be configured for the printer and material used, as well as the type of output required (lightweight vs. strong, good quality vs. speed, etc.). Below are some profiles for various software packages that can be used as a starting point with the hackspace's Prusa Mendel 3D Printer.

[Craftware](http://www.craftunique.com/craftware) | [Cura](https://www.ultimaker.com/pages/our-software) | [Slic3r](http://slic3r.org/download)
:---------- | :------ | :--------
[PrusaMendel-PLA.cwsp](files/mendel/PrusaMendel-PLA.cwsp) | [PrusaMendel-PLA.ini](files/mendel/PrusaMendel-PLA.ini) | -
[PrusaMendel-Filaflex.cwsp](files/mendel/PrusaMendel-Filaflex.cwsp) | [PrusaMendel-Filaflex.ini](files/mendel/PrusaMendel-Filaflex.ini) | -


### Print Server

The printer has a dedicated Raspberry Pi that serves a web interface using [OctoPrint](http://octoprint.org). It can be accessed on the `MOCBTHUB` wifi network at <http://172.16.0.21:5000>.

