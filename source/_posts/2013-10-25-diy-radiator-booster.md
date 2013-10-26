layout:       post
title:        Diy Radiator Booster
subtitle:     Warm your rooms quicker
categories:   projects
author:       Robert Longbottom
image:        1.jpg
date:         2013-10-25 18:05
discuss:      r7FS_yE-FJY

Central heating is a great invention and radiators generally do a 
good job of pumping out heat into a room.  Sometimes however due
to the layout of the room or positioning of the radiator it
doesn't quite work as well as it could.  I have a room like this
and decided to go for a bit of a DIY solution.

<!-- more -->

![Booster in place](2.jpg)

My kitchen and dining room are one and also open to the stairs 
and landing.  With only one big raditor in the whole space most 
of the heat tends to rise and go up the stairs rather than circulating
in the rooms, meaning it always feels chilly.  There are various
[commercial radiator boosters](http://www.nigelsecostore.com/acatalog/Radiator_Booster.html)
available but some reviews say they are noisy and they all sit on top of
the radiator which would mean moving it everytime I closed the 
curtains.  So I decided to design and build my own.

## The Idea

Take a standard quick PC fan, mount it to the bottom of the radiator, 
create a duct to direct the air across the floor and build a circuit
to turn it on automatically when the radiator gets warm.

## The Fan

Rather conveniently the gap between the front and back panels of 
the double radiator is just over 80mm meaning a standard PC fan
will fit nicely.  I bought a Be Quiet Silentwings Pure 80mm fan
like this one from [ebuyer](http://www.ebuyer.com/409820-be-quiet-silentwings-pure-80mm-bl041)
which turned out to be pretty much silent when running.

## The Circuit

I needed a circuit that would switch on the 12V fan when the 
radiator warmed up and turn it off again when it cooled down.
I could have gone down the microcontroller route to do this, but 
it seemed like a fairly simple circuit with a temperature
sensor and a relay should be able to do the job.  After some time
googling I found exactly what I needed.  [This site](http://www.escol.com.my/Projects/Project-03%28Thermostat-1%29/Proj-03.html) 
has done an excellent job of describing how to make a temperature 
controlled relay using a few basic electronics componets.  There are
kits for sale, but I chose to just buy the components and assemble
them on some strip board.

![Circuit](3.jpg)

## The Ducting

Initially I was planning on using some thin plywood or something
similar for the ducting.  However a few members of the hackspace
have 3D printers and kindly offered to print something for me.
So following on from a talk given at the hackspace some months
ago about how to [use openscad](https://groups.google.com/forum/#!topic/swindon-hackspace/PvvfdYWvo0c) 
I decided to try and design a 3D printable enclosure.

![Ducting](4.jpg)

It took a couple of attempts to get something that was printable, 
but with the help and advice of other members I managed to design
a nice curved duct with some fins and small box to mount the electronics 
in.  The design is available on [thingiverse](http://www.thingiverse.com/thing:168527).

## Putting it all together

With all the parts made and colder weather fast approaching I 
assembled everything and wired it up using and old 12V power
supply I had lying around.  Tuning the temperature at which the
fan comes on is as simple as adjusting the potentiometer
on the circuit board.  The fan doesn't blast hot air out like a
fan heater does, but it does produce a gentle breeze of warm
air across the floor.  Whether it has made a huge difference
is hard to tell so far but I don't think it can hurt.

![Complete](5.jpg)
