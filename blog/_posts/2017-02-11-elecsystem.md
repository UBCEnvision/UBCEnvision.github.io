---
layout: post
title: "Chem-E-Car Electrical System"
date: "2017-02-11"
author: ["Shams Elnawawi"]
---

# Introduction
In the “Chem-E-Car Reaction Mechanism” article, Jayg and Josh talk about the iodine clock reaction and how a light-dependent resistor (LDR) is part of the stopping mechanism. The LDR changes electrical resistance depending on how much light is hitting it; as light intensity increases, resistance drops, and vice versa. Theoretically, if we shone light on an LDR in an iodine solution as its colour went dark, light intensity as measured at the LDR’s surface would fall. This is the basis of our stopping mechanism.


## System Overview
Our system consists of two main circuits, a MOSFET (N-channel transistor) circuit and an LDR circuit. The transistor circuit is used to control LEDs that are held in place within the reaction vessel, and the LDR circuit controls LDRs used for the stopping mechanism. Both circuits are connected to our Arduino microcontroller, which is central to the electrical system. Below is a basic diagram for the system:

<img src="/assets/images/blog/elecsystem/elec1.png" width="80%" alt="elec">

**Note:** the Arduino board is also connected to the motor of the car via another MOSFET, which is not shown in the circuit diagram.

In terms of software, our team mostly used Arduino to generate and test the codes for the car. I also used Eagle software to design the circuit diagram above, and to create an effective circuit that can be printed on a circuit board.

## MOSFET Circuit
The MOSFET circuit connects our LEDs to the Arduino. The Arduino board works with a fairly small current, and so when the voltage across the LDRs changes during the stopping mechanism, the difference between voltage readings is small. We can amplify these signals by using a MOSFET, which is the whole idea behind having it in the circuit. With a big enough voltage difference, the risk of stopping at the wrong time is greatly reduced.

As shown in the diagram, the MOSFET has its gate pin connected to an Arduino digital pin (D9-1), its source pin connected to the wire coming from LED1 and LED2, and its drain pin connected to the 5V supply from the Arduino. Physically, the circuit will be on a printed circuit board made in the workshop used by Chem-E-Car, and will be separated from the LDRs as explained below.


## LDR Circuit
Our LDR circuit connects the Arduino to the 2 LDRs, and allows the Arduino to record the voltages across them using its built-in analog pins. Using the analog pins, we set threshold values of voltage which, when crossed, enable the Arduino to cut off power to the motor, which will stop the car.

The LDRs are placed across from the LEDs in the reaction vessel. This is to allow maximum light exposure from the LEDs, and so the LDRs need to be physically separated from the circuit board.
