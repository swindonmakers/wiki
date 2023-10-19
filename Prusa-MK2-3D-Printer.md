## The Makerspace printer

This is an FDM printer. It takes 1.75 filament, PLA is generally used. The bed is 200x200mm.

The [Octoprint](http://192.168.1.11/) for it (only reachable on the internal space network/wifi).
<details><summary>Octoprint Login Info</summary>
<p>

```
Login: makerspace
Password: makenow
```

</p>
</details>

## Induction reference

See [[3D Printing HOWTO]]

## Differences for this specific printer

### Cura profile

Choose the Prusa3D - Prusa i3 MK2 profile

### Troubleshooting

- Errors when heating

This printer currently has a tendency to quit the initial heating cycle with a **M112** error. If this happens, restart the printer (use the button under the dial on the controls, or the power switch) and restart the heating.

- Quits printing after the initial 9-point bed level check

If the two Z motors are not level this sometimes happens. On the printer controls to choose 'Calibration' and then **Calibrate Z**, follow the instructions on the screen. Yes, it does want you to intentionally move the Z axis up until they bounce off the top ends, try not to do this a lot).

### Changing filament

To change the filament:
- first either use the buttons on Octoprint, or the UI on the printer screen, to preheat the extruder hotend enough to melt the plastic - 200 degrees should be enough for PLA.
- second use the "unload filament" option on the printer screen, pull gently to remove the filament completely
- replace the filament spool on the holder and locate the end
- feed the end into the top of the extruder, shove gently while using the "load filament" option on the printer screen; answer "no" until the colour changes coming out of the extruder.
- use pliers or similar to remove the excess filament dribble

### Removing items from the bed

Do NOT use a scraper.

This printer has a magnetic bed, lift it up at one of the front corners. Gently bend the bed away from the printed part, it should pop off (some materials are more stubborn, bend more or pull).

Replace the bed by aligning the cutout at the back around the two pins that stick out of the printer. Once aligned drop the bed so the magnets stick. Redo if wonky!

### Maintenance

Only for maintainers.

* [The Assembly Manual](https://manual.prusa3d.com/c/Original_Prusa_i3_MK2S_kit_assembly)
* [Prusa Farm Maint Tips](https://blog.prusaprinters.org/top-6-tips-original-prusa-i3-3d-printer-maintenance/)
* [Prusa 3D Maint List](https://help.prusa3d.com/article/sVQHD6vtfm-bearings-maintenance)
* [Original intro video, somewhat outdated](https://www.youtube.com/watch?v=JqH41K2vq0g)

## General notes

Some specs: [[https://www.prusa3d.com/]], [[https://makezine.com/product-review/prusa-i3-mk2/]] 
