## Overview

The [Thing Controller](https://github.com/swindonmakers/new-thing-controller) is a Raspberry Pi Pico W based project to allow RFID access control, user induction, and usage logging of hardware around the space. It has the following specifications:

* Pi Pico W (Dual core Cortex M0 MCU with wifi)
* ILI9341 2.4" 320x240 LCD with XT2046 touch controller
* 2x Transistor outputs for relay/contactor coils etc.
* I2C header for RFID tag reader
* 4x tactile user-buttons with terminal block expansion (e.g for panel wired buttons)
* SD card slot
* WS2812B Neopixel LED and expansion header.
* Breakouts for unused GPIO including I2C, SPI, and 3x ADC inputs.

![new-thing-ctrl-hardware1](https://user-images.githubusercontent.com/9080810/217372453-794665c6-d6d7-4dc2-ae6f-56075bf9ab24.jpg)
![new-thing-ctrl-hardware2](https://user-images.githubusercontent.com/9080810/217372484-b480ec0b-d752-4853-8034-8d807e8727b2.jpg)


## Power input/output specs
* Power input: 12-24V, <50mA idle current, fused @ 2A
* Coil outputs: 1.5A cumulative maximum current, output voltage equal to input voltage, switched ground, PWM capable.
* Neopixel header: 500mA maximum (~10 neopixels displaying maximum brightness on each emitter).
* 5V breakout pins: 500mA maximum cumulative (Shared with neopixel output).
* 3V3 breakout pins: 200mA maximum cumulative.

## MCU pinout
* D0 - LCD SPI CS
* D1 - LCD RST
* D2 - LCD DC/RS
* D3 - LCD Backlight
* D4 - I2C0 SDA
* D5 - I2C0 SCL
* D6 - SD CS
* D7 - Coil 0 output
* D8 - Coil 1 output
* D9 - Neopixel data
* D10 - Button 1 (input pull-up)
* D11 - Button 0 (input pull-up)
* D12 - Button 3 (input pull-up)
* D13 - Button 2 (input pull-up)
* D14 - Unused
* D15 - Unused
* D16 - SPI0 RX
* D17 - Unused
* D18 - SPI0 SCK
* D19 - SPI0 TX
* D20 - Touch IRQ
* D21 - Touch CS
* D22 - Unused
* D26 - Unused (ADC0)
* D27 - Unused (ADC1)
* D28 - Unused (ADC3)

## Header pinouts

### Power In

Connector: J1, Phoenix Contact MSTBA 5.08mm compatible (Ebay KF2EDG)
* 1 - GND
* 2 - +V in

### Coils

Connectors: J2, J10, Phoenix Contact MSTBA 5.08mm compatible (Ebay KF2EDG)
* 1 - GND (switched)
* 2 - +V out (constant)

### RFID (PN532 or equivalent I2C device) 

Connector: J4, JST-XH
* 1 - GND
* 2 - 3V3
* 3 - SDA
* 4 - SCL


### Button expansion

Connector: Phoenix Contact MSTBA compatible (Ebay KF2EDG)
* 1 - GND
* 2 - Button 3
* 3 - Button 2
* 4 - Button 1
* 5 - Button 0
* 6 - GND

### Neopixel expansion

Connector: J11, JST-XH
* 1 - GND
* 2 - Data
* 3 - 5V

### I2C expansion

Connector: J5, JST-XH
* 1 - GND
* 2 - SCL
* 3 - SDA
* 4 - 3V3

### SPI expansion

Connector: J8, JST-XH
* 1 - GND
* 2 - SPI RX
* 3 - SPI SCK
* 4 - SPI TX
* 5 - D14 (device CS)
* 6 - 3V3

### ADC expansion

Connector: J6, JST-XH
* 1 - GND
* 2 - D26/ADC0
* 3 - D27/ADC1
* 4 - D28/ADC2
* 5 - 3V3
* 6 - 5V

### GPIO expansion

Connector: J12, JST-XH
* 1 - GND
* 2 - D22
* 3 - DD17
* 4 - D15
* 5 - 3V3
* 6 - 5V


