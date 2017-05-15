Note: The existence of this page shouldn't be taken as an invitation to hack on the laser haphazardly!

# Initial hardware settings, main electronics bay (right side):

** Main control board, bottom board: JP6 is on pins 1-2.

*** According to the Hardware Manual 4.2, there are several more jumpers that I didn't see on my first reconnaissance mission, will check for them next time I (theorbtwo) am in the space.

** Motor controller DIP switches:

*** X: 1001 0000

*** Y: 1001 0100

*** Z: 0100 0010

The main controller itself is a Leetro MPC6525, which seems extremely common in lasers of this general sort.  http://www.leetro.com/english/sale/1-2.html is Leetro's page on it, which includes detailed documentation (download/manual/hardware manual), as well as the software / drivers (win32 only).  Also, if the sticker is to be believed, it has newer firmware.

Chapter 6 of the hardware manual is also interesting reading -- it specifies the protocol spoken between the PAD03 (front panel) and the main controller.  At the lowest level, it's standard RS232 serial, 9600bps 8N1, on a standard DE9 connector.  On top of that is Modbus RTU, which is a well-known protocol for doing this sort of thing -- http://www.modbus.org/docs/Modbus_Application_Protocol_V1_1b3.pdf is the full specification.  Chapter 6 of the hardware manual specifies the individual meanings of the "relays" (single-bit values) and "registers" (multi-bit values).

# Chiller

Our chiller is a PH-LW06-BLP/?? (FIXME: note down the ??).  http://www.wklaser.com/uploadfile/file/20150410/201504100145000.zip is a manual for that exact model, though it leaves a fair bit to the imagination.  2.2.1 defines PH-LW06-BLP/?? as being PH=Sunrise family, LW=water chiller for laser, 06=600 W cooling capacity, B=back-exhausting, L=low lift pump, P=with flow switch, /??=code for client.  

I've also found a manual for a closely related chiller at http://www.checkmatelasers.com/docs/GM/PowerHouseChillerManual.pdf, which leaves less to the imagination.  Using this information, we find the following settings:

* dC: 15 -- I believe this is the desired maximum tempurature of the output water.

* dh: 2 -- I believe this is the allowable tempurature range of the output water -- the water is allowed to be 13-15 degC.

* Pt: 1 -- Failure alarm delay, 1 minute (do not sound alarm unless temp out of range for more then 1 minute).

* Lt: 5 -- Low temp. alarm, 5 degC

* Ht: 25 -- High temp. Alarm, 25 degC

* ca: 0 -- ?

* t1: 1 -- ?

* t2: on -- ?

* f1: 1 -- ?


