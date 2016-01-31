## What is it?
An evolving group project to build out a modular Rube Goldberg / GBC style ball-bearing churning machine

## Why?
* Something everyone can contribute to, from very simple to fiendishly complex
* Something new members, or walk-ins, can tinker with
* Modular, extensible - so it can slowly grow over time
* Something we can take to events/shows to get people talking

## Stuff it would be fun to explore
* Different fabrication techniques (old-school woodwork and brass; 3D printed; laser-cut; cardboard and hot-glue)
* Different mechanisms - both mechanical and digital, even fancy control stuff (think magnetic levitation)
* Interactivity - either mechanical (levers) or electronic (wifi, twitter)
  * Dr Nim game
  * Pin-ball table

## Principles
* Bonkers is good, the crazier the better
* Aesthetics are not important (albeit pretty things are always good)
* Needs to be transportable (in bits)
* Power sources should be kept to a minimum and be shared/standardised (i.e. so all modules can work from a common power bus)
* Support for vertical arrangements/stacking (i.e. on shelves) for interest and to help pack more into table-top displays
* Interoperability with other ball-contraption standards would be nice

## Specification

* Modules should be cuboid, and fit within a fixed 200mm grid.  Each side should be an even multiple of 200mm.
* Modules are intended to be chained together side to side and/or stacked
* Modules should have an input on one side with an output on the opposite side.  Plus an additional input on one of the other sides to allow balls to enter from above. This permits horizontal and vertical arrangements.
* Modules may optionally have a second output on the remaining edge.
* Modules may contain a manual divert mechanism to allow OUTPUTS to be selectively enabled
* The IN basket should have an opening of at least 50mm x 50mm, 40mm above the supporting surface (e.g. table)
* The OUT chute should be higher than 40mm above the supporting surface.
* IN and OUT feeds should be centred on edges of the grid (e.g. 100mm from a grid intersection)
* Most modules will be a single rigid unit, that operates on a single level, moving balls from input to output
* Drop chutes can be used to move balls down through a stack of modules
* Tall lift modules can be used to raise balls up through a stack of modules
* Modules should be stackable, either by having an integral frame or by leaving room for supporting posts in each corner:
  * Modules interlock vertically using 6mm dowels, set 10mm in from each corner
  * Supporting posts are 20mm x 20mm, appropriate room should be left in the corners of each module for these
  * All modules must have a solid base plate, with appropriate holes to receive dowels
* Each module should be able to accept balls at an average rate of 1 ball per second.  Balls can be passed continuously, or in a batch.  A batch should not exceed 30 balls.
* Balls should be 16mm (nominal, assume +-1mm tolerance) and either metal or glass 
* Any modules that rely on metal balls (e.g. magnetism based) should fail gracefully if non magnetic balls (e.g. marbles) are used - i.e. just pass the balls straight to the next module
* Ball weight may vary considerably (e.g. between metal/glass), so modules should be tolerant to weight changes (e.g. by rejecting balls that do not have an appropriate weight)
* Contraptions should be supplied with two power rails, 12v and 5v (e.g. from a single ATX supply)
* Modules that need power should have terminal block connections for 12v, 5v and Ground.

## Prototype

See progress on associated Group:
[https://groups.google.com/forum/#!topic/swindon-hackspace/tyj6q6KdNs0](https://groups.google.com/forum/#!topic/swindon-hackspace/tyj6q6KdNs0)

## References

* The [GBC standard](http://www.teamhassenplug.org/GBC/)
* [thickl33t A-Maze-Balls standard](http://thinkl33t.co.uk/a-maze-balls-a-collaborative-makerfaire-project/)
* Buying balls - we got our first batch [on ebay](http://www.ebay.co.uk/itm/Catapult-Slingshot-Ammo-Steel-Balls-Choose-Size-From-2mm-to-16mm-FREE-POST-/161126780433?var=460220302041), £15 for 100
