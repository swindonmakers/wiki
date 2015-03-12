Inspired by Rob's Y6, I'm in the process of building my own version.  Key requirements/constraints:

* Must be foldable!  
* Majority of parts cannibalised from my 3DR Hexacopter
* Easy to fly - I'd rather have stability than agility!
* Use spare 17mm OD carbon tube for spars
* As many printable bits as practical
* OpenSCAD model
* FPV ready - for when I get that far
* Look cool

Guts:
* APM 2.5 with uBlox GPS
* WFly 7-channel receiver
* Unmanned tech ESCs with SimonK firmware
* 880KV motors
* 10 inch props on top, 12 inch props on bottom
* 4S 5000mAh battery
* 3DR radio for telemetry link
* Neopixel 16 ring for status and knowing which way it's pointing (the Cyclops eye) 
* ATTiny-based controller for Neopixel ring - reading MAVLink telemetry


## Cyclops Eye (Neopixel Status Ring)

The plan is to drive the Neopixel ring with an ATTiny (on little stripboard circuit), with the colours/patterns being determined by the drone status.  Drone status to be decoded from the MAVLink telemetry stream - shared with the 3DR radio.  

The arducodes google code project (maintained by jDrones) has reference code for decoding the MAVLink protocol (for the jD_IOBoard):
* http://www.jdrones.com/wiki/guide-jd-ioboard/#sthash.SzPerDTv.dpbs 
* https://code.google.com/p/arducodes/source/browse/#svn%2Ftrunk%2FjD_IOBoard%2FjD_IOBoard_MAVLink

Planned states for the ring:

* Disarmed - slow spinner fading from bright to off, anti-clockwise ![](http://movies.abhinayrathore.com/images/progress_spinner.gif)
  * No GPS lock - Red
  * GPS lock - Blue
* Armed - Mostly on, rotating LED off, clockwise - rotation speed proportional to ground speed (slow if hovering)
  * No GPS lock - Red
  * GPS lock - White
* Low Voltage - All LEDs flash red, 1hz







