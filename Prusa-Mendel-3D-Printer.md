## Using the Prusa Mendel 3D Printer

This page is a work in progress and only contains some of the pieces needed to use the printer - please ensure you have been instructed on its proper use before operating the printer.

### 3D Model

Ready-made 3D models can be download as `STL` files from sites such as [Thingiverse](http://www.thingiverse.com/thing:200472/#files), [YouMagine](https://www.youmagine.com), and [My Mini Factory](http://www.myminifactory.com).  Catalogue sites such as [GrabCAD.com](https://grabcad.com) and [STL Finder](http://www.stlfinder.com/) can also be useful for models of various parts.

Create your own designs using software such as [FreeCAD](http://www.freecadweb.org/wiki/index.php?title=Download#Stable_FreeCAD_installers) or [OpenSCAD](http://www.openscad.org), then export a 3D model (or _mesh_) as an `STL` file.

### Slicing

An `STL` file needs to be _sliced_ into layers and exported as `gcode` instructions for the printer.

Below are some profiles for various software packages that can be used as a starting point for setting up the printer.

[Craftware](http://www.craftunique.com/craftware) | [Cura](https://www.ultimaker.com/pages/our-software) | [Slic3r](http://slic3r.org/download)
:---------- | :------ | :--------
[PrusaMendel-PLA.cwsp](files/mendel/PrusaMendel-PLA.cwsp) | [PrusaMendel-PLA.ini](files/mendel/PrusaMendel-PLA.ini) | -
[PrusaMendel-Filaflex.cwsp](files/mendel/PrusaMendel-Filaflex.cwsp) | [PrusaMendel-Filaflex.ini](files/mendel/PrusaMendel-Filaflex.ini) | -


### Print Server

The printer has a dedicated Raspberry Pi that serves a web interface using [OctoPrint](http://octoprint.org). It can be accessed on the `MOCBTHUB` wifi network at <http://172.16.0.21:5000>.

### Upgrading OctoPrint

To upgrade the OctoPrint software, pull or clone the desired branch from the [OctoPrint repo](https://github.com/foosel/OctoPrint) to `~/OctoPrint`.

Ensure the Python development package is installed using `sudo apt-get install python-dev`, then run the install script from the updated repo with `cd OctoPrint; sudo python setup.py install`.

### Firmware

[Repo for the printer firmware](https://github.com/snhack/Prusa-Mendel-Firmware).