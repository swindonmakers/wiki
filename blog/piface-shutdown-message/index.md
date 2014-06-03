layout:       post
title:        PiFace Shutdown Message
subtitle:     A useful addition to your Raspberry Pi
categories:   projects
author:       Robert Longbottom
image:        piface-shutdown.jpg
date:         2014-06-03 16:13
published:    true

If you're running your Raspberry Pi in a headless mode, sometimes it's hard to know 
when shutdown is complete and it's safe to turn off the power. If you have a 
[PiFace](http://uk.farnell.com/piface/piface-control-display/i-o-board-with-lcd-display-for/dp/2344458)
you could use that to display a message when shutdown is complete.  In this article 
we'll see how to do just that.

<!-- more -->

### The Message

First of all, let's create a python script to display a message on the PiFace.  
Check out my previous post on [getting started with the PiFace]({% post_url 2014-05-04-piface-control-and-display-board %})
for more details on exactly how to do this.

This is the script I'll be using, it displays the Swindon Hackspace logo and
a simple message.

```py
import pifacecad as p

cad = p.PiFaceCAD()
cad.lcd.backlight_on()
cad.lcd.cursor_off()
cad.lcd.blink_off()

cad.lcd.set_cursor(5,0)
cad.lcd.write("Shutdown")
cad.lcd.set_cursor(5,1)
cad.lcd.write("Complete")

sh = p.LCDBitmap([3,7,14,12,24,24,31,31])
cad.lcd.store_custom_bitmap(0, sh)
sh = p.LCDBitmap([31,31,0,27,27,27,31,31])
cad.lcd.store_custom_bitmap(1, sh)
sh = p.LCDBitmap([24,28,14,7,3,0,0,0])
cad.lcd.store_custom_bitmap(2, sh)
sh = p.LCDBitmap([0,0,0,24,28,14,7,3])
cad.lcd.store_custom_bitmap(3, sh)
sh = p.LCDBitmap([31,31,27,27,27,0,31,31])
cad.lcd.store_custom_bitmap(4, sh)
sh = p.LCDBitmap([31,31,3,3,6,14,28,24])
cad.lcd.store_custom_bitmap(5, sh)

cad.lcd.set_cursor(1,0)
cad.lcd.write_custom_bitmap(0)
cad.lcd.write_custom_bitmap(1)
cad.lcd.write_custom_bitmap(2)
cad.lcd.set_cursor(1,1)
cad.lcd.write_custom_bitmap(3)
cad.lcd.write_custom_bitmap(4)
cad.lcd.write_custom_bitmap(5)
```

Test that your script works by running it now: `python3 ShutdownMessage.py`.

### Getting the Script to Run on Shutdown.

The Linux rc system controls what services and processes run at boot time and at 
shutdown. It's fairly easy to insert a small script into the startup sequence 
because you can simply add it to `rc.local`, however there is no equivalent for 
shutdown.

We will need to create ourselves a fully fledged init script.  This will live 
in `/etc/init.d/`.  If you have installed the PiFace package on your Raspberry Pi 
you should already have one in there called `pifacecadsysinfo` which you can configure 
to run at startup to display system info (CPU temperatures, etc).  This will be a 
good starting point for our shutdown script.  Make a copy of it and call it `pifaceshutdown`.

```sh
sudo cp /etc/init.d/pifacecadsysinfo /etc/init.d/pifaceshutdown 
```

Open it up in your favourite editor, since it is in the `etc` folder you'll need 
to be root to be allowed to save changes, so I use this:

```sh
sudoedit /etc/init.d/pifaceshutdown
```

Looking at the structure of the script there are a few points of interest.  The header 
at the top defines some parameters used by the init system to determine script order, 
more on that later.  

For now I'm interested in the start and stop functions.  The `stop()` function is where 
we need to call our script.  We can take the code currently in the `start()` function and 
use that as a basis of our `stop()` function.  We don't need all that stuff about tracking 
the process identifier so just copy the call to python.

```sh
stop() {
        echo -n "Displaying PiFace CAD shutdown message: "
        /usr/bin/python3 $SCRIPT_FILE
        echo "[Complete]"
}
```

Make sure to change the value of the `SCRIPT_FILE` variable towards the start of the 
script to point to wherever you saved your python script.  I saved mine in the home 
directory under a `piface` folder.  You'll need to specify the full path here.

```sh
SCRIPT_FILE="/home/pi/piface/ShutdownMessage.py"
```

We don't want to do anything on start in this script (we could display a startup message of 
course), so clear out that method and just replace it with a friendly message that will be 
printed out to the console.

```sh
start() {
        echo "PiFace CAD shutdown message no action on start"
}
```

### The Tricky Bit

The whole idea of this is to try and give us an indication that it's safe to disconnect 
the power, so we want our script to run as late as possible in the shutdown sequence.

Linux startup and shutdown is controlled by scripts which are run as part of
run-levels.  There is more info [here](http://www.debian.org/doc/debian-policy/ch-opersys.html#s-sysvinit)
but for now all we need to know is that runlevel zero specifies 
scripts to run at shutdown. The scripts live in `/etc/init.d` and from there they
are linked to directories `/etc/rc0.d`, `/etc/rc1.d`, etc, one for each run-level.

We can see which scripts are currently configured to run at shutdown by looking in 
`/etc/rc0.d`.  These scripts will be run in order when the system shuts down. 'K' means
kill and the two digit number is used to provide the order.  For scripts with the same
number it isn't really defined what the exact order is, the implication being that it
isn't really important.  Some Linux init systems will try to run scripts in parallel in
order to speed up the process.

```sh
pi@raspberrypi ~ $ ls -l /etc/rc0.d/
total 4
lrwxrwxrwx 1 root root  22 Feb  9  2013 K01fake-hwclock -> ../init.d/fake-hwclock
lrwxrwxrwx 1 root root  17 Feb  9  2013 K01ifplugd -> ../init.d/ifplugd
lrwxrwxrwx 1 root root  17 Feb  9  2013 K01lightdm -> ../init.d/lightdm
lrwxrwxrwx 1 root root  14 May  3 19:48 K01lirc -> ../init.d/lirc
lrwxrwxrwx 1 root root  18 Feb  9  2013 K01plymouth -> ../init.d/plymouth
lrwxrwxrwx 1 root root  24 Apr 21  2013 K01tightvncserver -> ../init.d/tightvncserver
lrwxrwxrwx 1 root root  22 Feb  9  2013 K01triggerhappy -> ../init.d/triggerhappy
lrwxrwxrwx 1 root root  17 Feb  9  2013 K01urandom -> ../init.d/urandom
lrwxrwxrwx 1 root root  20 Apr 21  2013 K02alsa-utils -> ../init.d/alsa-utils
lrwxrwxrwx 1 root root  18 Apr 21  2013 K03sendsigs -> ../init.d/sendsigs
lrwxrwxrwx 1 root root  17 Apr 21  2013 K04rsyslog -> ../init.d/rsyslog
lrwxrwxrwx 1 root root  22 Apr 21  2013 K05umountnfs.sh -> ../init.d/umountnfs.sh
lrwxrwxrwx 1 root root  20 Apr 21  2013 K06nfs-common -> ../init.d/nfs-common
lrwxrwxrwx 1 root root  17 Apr 21  2013 K06rpcbind -> ../init.d/rpcbind
lrwxrwxrwx 1 root root  20 Apr 21  2013 K07hwclock.sh -> ../init.d/hwclock.sh
lrwxrwxrwx 1 root root  20 Apr 21  2013 K07networking -> ../init.d/networking
lrwxrwxrwx 1 root root  18 Apr 21  2013 K08umountfs -> ../init.d/umountfs
lrwxrwxrwx 1 root root  20 Apr 21  2013 K09umountroot -> ../init.d/umountroot
lrwxrwxrwx 1 root root  14 Apr 21  2013 K10halt -> ../init.d/halt
```

It looks pretty easy to add our script using the `update-rc.d` command:

```
usage: update-rc.d [-n] [-f] <basename> remove
       update-rc.d [-n] <basename> defaults [NN | SS KK]
       update-rc.d [-n] <basename> start|stop NN runlvl [runlvl] [...] .
       update-rc.d [-n] <basename> disable|enable [S|2|3|4|5]
                -n: not really
                -f: force
```

We need to give it the name of our script `<basename>`, what we want to do (start or stop), 
the number to run as (NN) and the run-level to add it to.  This should work then,
we'll choose `NN = 99` to make sure it runs last.

```sh
pi@raspberrypi ~ $ sudo update-rc.d pifaceshutdown stop 99 0 .
update-rc.d: using dependency based boot sequencing
```

Unfortunately it seems to have ignored the `NN` parameter and puts our script
fairly early on in the sequence:

```sh
pi@raspberrypi ~ $ ls /etc/rc0.d/*pifaceshutdown
/etc/rc0.d/K01pifaceshutdown
```

This probably wouldn't matter for many scripts, but we want this to run as
near to last as possible so that once the message is displayed we know it's
okay to disconnect the power.  So we'll have to do something else.

Notice the output we got from `update-rc.d`, it said "using dependency based 
boot sequencing".  That header in the init script we saw earlier is important.
It looks a bit like a big comment ('#' is used to indicate a line is a comment
in many linux scripts and some programming languages).

```
### BEGIN INIT INFO
# Provides: pifacecadsysinfo
# Required-Start:    $remote_fs $syslog
# Required-Stop:     $remote_fs $syslog
# Default-Start:     2 3 4 5
# Default-Stop:      0 1 6
# Short-Description: Start pifacecad status daemon at boot time.
# Description:       Start pifacecad status daemon at boot time.
### END INIT INFO
```

Looks like we'd better update this.  First off, it would be polite to update the 
descriptions, so do that.

`Default-Start` and `Default-Stop` look like they give a hint to which run-levels 
our script should be in by default, so let's clear out `Default-Start` and set 
`Default-Stop` to just include run level zero (shutdown).  Note that run-level 
one is single-user mode,  generally only used by sysadmins for doing system 
maintenance or when you have a serious problem, and run-level six is used for reboot.

The remaining three parameters look like they have something to do with the order
in which the scripts are run.  `Required-Start` and `Required-Stop` look like 
they control the order of starting and stopping services.  We aren't fussed about 
start-up so clear this out.  

At this point I'm going to skip a bit of trial and error I did while I played around 
with various values in `Required-Stop` option, but let's just say that nothing I tried 
made much difference.  The values you can use in this option are the name of another 
init script, or a few special values (such as `$syslog`) which are defined in the 
[documentation](https://wiki.debian.org/LSBInitScripts).

Eventually I abandoned trying to make `Required-Stop` work and noticed an option that
wasn't in the original script we copied called `X-Stop-After`.  This makes much more 
sense and does what it says on the tin - stop this script after some other.

Looking at the scripts that run in our current shutdown sequence (above) the last
few are `K08umountfs`, `K09umountroot` and `K10halt`.  We can't stop after `halt`
because the system will be halted at that time.  I tried stopping after `unmountroot`
which nearly worked, but it didn't quite have time to complete drawing the entire display
before the system halted so I ended up with only half a message.  

Finally I decided on `X-Stop-After: umountfs`, which seemed to work nicely.  You may
need to experiment a little.  My header ended up looking like this:

```
### BEGIN INIT INFO
# Provides: pifaceshutdown
# Required-Start:
# Required-Stop:
# X-Stop-After:      umountfs
# Default-Start:
# Default-Stop:      0
# Short-Description: Displays a shutdown message on the PiFace.
# Description:       Displays a shutdown message on the PiFace.
### END INIT INFO
```

Finally, re-add the script to run-level zero and check it worked.

```
pi@raspberrypi ~ $ sudo update-rc.d pifaceshutdown stop 99 0 .
update-rc.d: using dependency based boot sequencing

pi@raspberrypi ~ $ ls /etc/rc0.d/*pifaceshutdown
/etc/rc0.d/K09pifaceshutdown
```

Much better!  Make sure to clear the PiFace if it's still showing the 
shutdown message from our earlier test (or you won't know if it's worked
or not), then shutdown your Raspberry Pi.  It doesn't matter how you shutdown,
I usually use the command line `sudo shutdown now -h`.

![PiFace Shutdown](piface-shutdown.jpg)
