## Overview

LogoBot is a simple, extensible, Arduino-based mobile robot developed by the Swindon Hackspace.  It is heavily inspired by the vast number of existing mobile robots designs (Mirobot in particular).  The development of the reference design has been kicked-off through the OpenSCAD Course and will be an ongoing collaborative project for all members of the Hackspace to participate in.  

## Principles / Requirements

* Highly interactive - to attract/hold attention
* Cheap (Total BOM <£20 would be great)
* Suitable for ages 6 - 100
* Simplicity is key - all parts/functionality must be easy to explain and understandable by 6-yr olds
* Solderless (where practical)
* Extensible - more sensors, more functionality
* Personalisable - we don't want lots of bland, generic little robots


## BOM

Outline BOM:

* Arduino Pro Mini or Micro
* 2x 5V Geared Stepper motors (28BYJ-48) with associated drivers (ULN2003). If you use ULN2803 you can drive two steppers from a single chip - [aliexpress link to 2 steppers and a driver board](http://www.aliexpress.com/item/New-2-Stepper-Motor-28BYJ-48-With-Drive-Test-Module-Board-ULN2803-Freeshipping/1405946480.html)
* 4x lever microswitch
* 1x RGB LED (discrete, not serial!)
* 1x Piezo sounder
* A power switch (slider)
* 4x AA batteries
* Miscellaneous consumables (jumpers, fasteners)
* A bunch of printed parts (base, shell, wheels, bumpers, etc)


## Design

Having discussed a variety configurations, we've settled on the following reference design:

* 2-wheels (stepper driven) with caster(s) - arranged as per traditional Turtle bot
* Front and rear bumpers, each connected to a pair of microswitches - users can choose to remap these switches to control behaviours and/or use them as bump switches
* An RGD LED to give the robot character, located near the top/centre of the robot
* A piezo sounder for audio feedback (R2D2 style noises?)

**Extensions / Optional Extras**

* Central pen with micro-servo lift
* Bluetooth UART - for cable-free programming, inter-bot comms, host interface, etc
* WIFI UART - for cable-free programming, inter-bot comms, host interface, etc
* Serial RGB LED (to reduce pin count)
* IR Reflectance sensors - for collision avoidance, cliff detection, line following, following behaviour, etc
* IR transceiver - for interaction with TV remotes and/or other robots
* Ultrasonic distance sensors - for collision avoidance, following behaviour, etc
* Speaker - for complex audio playback (e.g. WAV, MP3)
* Microphone(s) - for sound following/localisation and/or voice recognition/recording
* Light Sensors (LDR,etc) - following behaviour, etc
* Tilt sensor - for "I've fallen over" behaviour, etc


## Source Files

All source files (hardware and software) are stored on github:
[https://github.com/snhack/LogoBot](https://github.com/snhack/LogoBot)

Notes:
* Clone the repo to get started
* Open the hardware/LogoBot.scad file to view the complete model
* Feel free to commit your own files, but please follow the file structure and naming/coding conventions described in the various README.md files
* If you are amending an existing/shared file, then please submit a pull request


## Hardware Development Owners

This is an evolving list of who is owning the development of various parts:

### Vitamins
* Stepper Motors - Malcolm
* Stepper Drivers - Rob
* Piezo - James
* Battery Pack - Jess
* Microswitches - Steve
* Arduino - Jamie
* LED - Rob
* Nuts/Bolts - Rob
* MicroServo - Damian
* Marble Caster - Damian

### References

* [Mirobot.io](http://mirobot.io/)
* [ProtoBot](http://www.thingiverse.com/thing:18264)
* [ScoutBot](http://www.thingiverse.com/thing:13042)
* [MiniSkybot](http://www.thingiverse.com/thing:7989)
