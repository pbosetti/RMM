Software for Roundness Measuring Machine
========================================

This project hosts the code under development for the controller for a Roundness Measuring Machine developed at Stanford PRL.

Content
=======
The `counter` folder contains the [Arduino](http://arduino.cc) firmware developed for controlling the spindle AC motor and for reading the rotary encoder [HEDS-9140](http://www.avagotech.com/docs/AV02-1132EN).

The `LabVIEW` folder contains the LabVIEW project that reads data from the Arduino and from the linear displacement gauge.

The `docs` folder contains the documentation. In particular, the `counter.fzz` file is a sketch representing the breadboard wiring for the Arduino board, prepared and readable with [Fritzing](http://fritzing.org).

Arduino firmware
================
The Arduino firmware (`counter/counter.ino`) is designed to be connected to the HEDS-9140 rotary encoder with a 5 poles cable. The [spec sheet](http://www.avagotech.com/docs/AV02-1132EN) reports the meaning of the 5 wires.

The firmware holds a global counter that counts the pulses and resets the count to zero at every turn. The artwork used with the counter can have different resolutions (ie number of pulses). Before compiling and uploading the firmware it **must be checked** that the preproc directive `STEPS` corresponds to the actual number of pulses **minus one** (the counter runs on 0-base).

Communication
-------------
The firmware can communicate with the USB host via serial communication at 115200 baud. The communication is ASCII-based and follows the same syntax:

- `i`: print out a device ID string
- `nnd`: set the loop delay to `nn` milliseconds (in range 1--1000)
- `/`: toggle between polling and continuous data flow. When in continuous mode, it routinely prints the current readings (the rate is set with the `nnd` command above, default to 10 ms)
- `p`: return the number of pulses of the configured artwork
- `p`: when in polling mode, return the current counter status string
- `M`: turn te relay controlling the AC motor on
- `m`: turn te relay controlling the AC motor off

In both polling and continuous mode, the status string has four space-separated fields that have the following meanings:

1. the first field is either 0 (homing *not* done yet) or 1 (homing done); it goes from 0 to 1 after the first incomplete turn, so the angular position is only reliable when this field is 1
2. reset. This field cycles from 0 to 1 every turn (0 the first run, 1 the second, 0 the third and so on). When it changes, a new turn is just begun
3. the actual counter, ranging from 0 to STEPS
4. the curent rotational velocity **CODE NOT RELIABLE YET!**

This simple protocol is used in the LabVIEW code for controlling the motor and readin the angular position.

Hardware
--------
The firmware is designed to have a small set of digital I/O providing user feedback and auxiliary functions.

- **Digital pin 5**: it is supposed to drive on/off the relay that controls the AC motor. The Fritzing sketch also shows an LED in parallel to the motor relay
- **Digital pin 6**: this pin provides user feedback about the HEDS-9140 encoder: when an LED is connected to this pin, it will toggle on and off at every pulse and--when on--its brightness will range from 0 to max as the counter goes from 0 to STEPS
- **Digital pin 7**: this pin is supposed to be connected to a pushbutton as shown in the sketch. Temporarily bringing this pin to HIGH (ie pushing the button) will toggle the motor on and off. *If not used, this pin MUST be grounded*
- **Digital pin 13**: this pin should be connected to a red LED, which will stay on until the first turn would be completed (ie homing performed).

*Note*: all LED must be protected from overcurrent with a 220 Ohm resistor in series.

<a href="https://github.com/downloads/pbosetti/RMM/counter_bb.png" target=blank><img src="https://github.com/downloads/pbosetti/RMM/counter_bb.png" width=400 alt="Arduino-based breadboard"></a>

Author
======
Paolo Bosetti