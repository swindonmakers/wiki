## The Makerspace Makerbot Printer

This is an FDM printer. It takes 1.75 filament, ABS is generally used. The bed is 225x145 (height 150). It can support 2 extruders, but currently contains 1 (previous owner had an issue with the 2nd extruder, the nozzles weren't level)

This Printer probably works best with its own proprietary software, downloadable (Mac/Windows) from [Makerbot Print](https://www.makerbot.com/3d-printers/makerbot-print/download/) 

Octoprint / Cura are still being investigated, investigation so far:

[Plugin for Cura](https://github.com/Ghostkeeper/X3GWriter) - Install using Cura itself; Toolbox -> Packages - This will enable Cura to save Makerbot format (.x3g) files. These are binary files, Octoprint will not be able to send them to the printer! Copy onto an SD card to use.

Octoprint will not connect to the printer without a plugin, install this one: [Plugin for Octoprint](https://plugins.octoprint.org/plugins/gpx/) - install using Octoprint Plugin Manager (under Settings). After install, make sure you go to the settings again after reboot and setup the plugin itself.

Both of these plugins build+install the (GPX tool for converting GCODE into X3G files)[https://github.com/markwal/GPX]. 

### Changing filament

The Makerbot UI, under "Utilities", "Change Filament" has options for loading and unloading filament.