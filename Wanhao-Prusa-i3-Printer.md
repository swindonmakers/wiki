## The Makerspace printer

This is an FDM printer. It takes 3mm/2.85mm filament, PLA is generally used. The bed is 200x200mm.

The [Octoprint](http://192.168.1.12/) for it (only reachable on the internal space network/wifi).

Cura profile (for flexible filament): [[http://inside.swindon-makerspace.org/WanhaoFFX.ini]]

### Changing filament

To change the filament:
- first either use the buttons on Octoprint, or the UI on the electronics box, to warm up the extruder hotend enough to melt the plastic - 200 degrees should be enough for PLA.
- second use the "retract" button in Octoprint while gently pulling on the filament going into the extruder. You may have to do this several times
- replace the filament spool on the holder and locate the end
- feed the end into the top of the extruder, shove gently while using the "extrude" button in Octoprint; repeat until the colour changes coming out of the extruder.
- use pliers or similar to remove the excess filament dribble


## General notes

Some specs: [[https://3dprinterwiki.info/wiki/wanhao-duplicator-i3/part-specifications/]]

## Reflashing Firmware
Guide to firmware flashing the Meltzi board: [[http://www.instructables.com/id/Using-an-Arduino-to-Flash-the-Melzi-Board-Wanhao-I/]]

Sanguino hardware for Arduino: [[https://github.com/Lauszus/sanguino/tree/master]]

Marlin for the Wanhao: [[https://www.thingiverse.com/thing:2450111]]