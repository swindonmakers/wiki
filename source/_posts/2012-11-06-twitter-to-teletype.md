layout:       post
title:        Twitter To Teletype
subtitle:     Getting a museum piece to print tweets
date:         2012-11-06 20:06
author:       Rob
categories:   projects tty pi
image:        TeletypeComplete.jpg

The [Museum of Computing](http://www.museum-of-computing.org.uk/) in Swindon has a working Teletype and a desire to get it to print out tweets as part of a display in the museum.  Since the [Swindon Hackspace]({{ site.url }}) is based in the museum it was a perfect project for hackspace members.

![Teletype](Teletype.jpg)

<!-- more -->

## Current Loop Interface

The teletype uses a current loop interface to communicate with other (teletype) devices.  The current loop interface is similar to a standard RS232 serial interface found on a PC except rather than using changes in voltage to represent 0's and 1's it uses changes in current.  Data is sent at 110 baud - very slowly compared to modern standards, but this is as fast as the teletype can print characters and it has no means to buffer the data it receives.

After a few failed attempts and fried components a circuit was built to convert from RS232 serial into current loop using.... [ _what?, circuit diagram?, any more info?_ ]

![Current Loop Converter](CurrentLoopConverter.jpg)

The teletype also uses a slightly different character set to standard ASCII so a character set conversion was required.  This conversion implemented in the C# code running on the Raspberry Pi. This also allowed for use of some of the mechanical functions of the teletype such as the bell which you can hear ring as the teletype prints out a tweet

[Character Map Table](https://github.com/snhack/TwitterToTeletype/wiki/images/TeletypeCharMap.png)

## Mechanical Issues?

The teletype is mainly a mechanical device and contains only a single circuit board consisting of a few resistors, diodes and transistors _photo required_  Many of the hardest problems to overcome turned out to be mechanical rather than electronic or software problems.

Upon initially managing to send data to the teletype over and RS232 port and via the current loop converter many characters were being printed out incorrectly.  After reading the teletype manuals found online it was discovered that there was a mechanical adjustment lever at the back of the teletype which controlled the alignment of some cogs used in decoding the character data sent over the current loop.  After a few minor adjustments with this lever most characters now print correctly.

![Lever Position](LeverPostion.jpg)

You may notice that the teletype still occasionally prints the wrong character.  This is down to mechanical issues rather than any software or electronic fault and is simply due to the age of the machine and worn mechanical components.

## Whats With All The Noise?

Because the teletype is a mechanical device which uses moving parts to decode the data it receives it has to be running continuously and hence makes a lot of noise even when not printing text.  In order to minimize the noise generated when the teletype wasn't printing anything a circuit was created using an ATTiny2313 (similar to the programmable chip used in an Arduino) and a relay to turn the power to the teletype on just before data was due to be sent and off once the printing was complete.  This chip was also programmed to bridge the connection from USB on the Raspberry Pi to the serial data that was needed to send to the current loop converter to talk to the teletype.

![USB Switch](UsbSwitch.jpg)
![USB Switch](UsbSwitch2.jpg)

## Getting Tweets And Putting It All Together

A C# application was written to connect to the twitter API and pickup tweets sent to the museums twitter account.  Running under Mono on Linux, this software then communicates with the ATTiny micro-controller via a USB to serial converter and sends instructions to turn the teletype on.  It then sends the text of the tweet in 50 character chunks (due to memory limitations on the ATTiny) to be forwarded on to the current loop interface at 110 baud and finally the teletype prints out the tweet.

{% youtube _HGV4Ppnx14 %}

![Complete](TeletypeComplete.jpg)
![Printing](TeletypePaper.jpg)

## More Information

* [Swindon Hackspace]({{ site.url }})
* [Museum of Computing](http://www.museum-of-computing.org.uk/)
* [Model 33 Teletype on Wikipedia](http://en.wikipedia.org/wiki/Teletype_Model_33 )
* [Current loop on Wikipedia](http://en.wikipedia.org/wiki/Current_loop)
* [Source Code](https://github.com/snhack/TwitterToTeletype)
* [Raspberry Pi](http://www.raspberrypi.org/)

*This article was originally posted at: [TwitterToTeletype/wiki](https://github.com/snhack/TwitterToTeletype/wiki)*
