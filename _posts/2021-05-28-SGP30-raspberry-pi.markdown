---
layout: single
title:  "Interfacing SGP30 Modules with Raspberry Pi"
date:   2021-05-28 14:46:43 +0200
---
**TL;DR SGP30 modules, but likely other 1.8V devices including an I2C level shifter, do not work with 1.8 kOhms I2C pullups as found on the Raspberry PI**

I am currently working on assembling an air quality sensor that also includes a Sensiron SGP30 VOC sensor interfaced via I2C.
As the SGP30 operates at 1.8 V, the china modules come with a voltage regulator and an I2C level shifter on board.
By the way, the level shifting circuit is actually nice and simple, as I did not stumble upon it before, I suggest you to read [this eeweb article](https://www.eeweb.com/level-shifting-techniques-in-i2c-bus-design/) about it.

I quickly assembled an adapter PCB to connect a BME280, the SGP30 and a PMS5003 sensor to the Raspberry PI IO port, looked up libraries and sample applications online and went ahead.
I was greeted by a lot of IO Errors from the SGP30 application - and I could make it mostly work by removing the BME280.
First try was fiddling around with the I2C clock - although I was pretty aware that I didn't use any long cables and should not have any problem with the default of 100 kHz. Also, I expected all signals to be in perfect shape, as I had pretty low resistance pullups and all devices should in theory be properly interfacing with a 3.3 V I2C bus (e.g. no hacky level shifters...).

Attaching an oscilloscope showed that my previous assumption was wrong: The SGP30 module was unable to properly pull SDA to ground - it was oscillating between 0 and 1.8V instead.
Unfortunately, I did not take a picture as I only afterwards decided to start this blog :-)

What is happening here?

* The Raspberry Pi has 1.8 kOhms pullups for the I2C lines to 3.3V
* The BME280 has 10 kOhms pullups
* The SGP30 has 10 kOhms pullups
* The SGP30 is specified for up to 2 mA sink current on its I2C pins; it is guaranteed to not exceed 0.35 V in that case
* For the level shifter to work, the I2C low voltage must exceed the gate threshold voltage of the mosfet, which is typically above 1.5 V

So let's remove the 1.8 kOhms pullups on the Pi. It is the two resistors directly next to the IO header (at least on my Pi 1 B):

![I2C data line with higher pullup resistance](/assets/sgp30_pi_working.jpg)

That looks nice, doesn't it? So, what was happening here?

* The level shifter starts to work as intended (read the description in the article linked above!): When SGP30 pulls down its SDA line, the gate-source capacitance of the mosfet gets charged and the mosfet conducts
* The current through the pullups (about 2.5 mA in this case) travels through the drain source channel of the mosfet but finally needs to pass through the SGP30 as well - the high current leads to an increase of the voltage of a few 100 mV.
* Effectively, the resulting gate to source voltage is not enough to keep the level shifting mosfet channel conducting the full current, so the low voltage seen on the PI side of the levelshifter rises to about 1.8 V in my case.

I cannot tell why the system starts to oscillate instead of stabilizing at a higher SDA low voltage, but the basic principle is as stated above.

