---
layout: post
title: "Working With Raspberry Pi [Part 1]"
date: "2018-03-03"
author: ["Shannon McInnes"]
---

## Introduction 

The brains of the CHBeer project is a Raspberry Pi 3 Model B, which is a type of system on a chip (SoC). SoCs are a great way to easily implement logic into small-scale monitoring projects like the automated brewing system. They integrate either a microprocessor or microcontroller along with other components, such as oscillators, counters, timers, communication protocol interfaces, analog to digital (ADC) and digital to analog (DAC) converters, and memory all onto a single board. So while you may have heard the Raspberry Pi being referred to as a microcontroller, that’s really only one component of the system.
The great thing about SoCs in comparison to microcontrollers alone is that they come loaded with all these additional features, so you don’t have to worry about choosing and matching all the extra components that you’ll need to get started. They’re ready to go so you can start hooking up your peripherals without having to worry about things like programming an ADC.

## Features of the Raspberry Pi 3 Model B

The Raspberry Pi 3 Model B used in the CHBEER project includes the following components, as listed on the product web page:[i]
·        Quad Core 1.2GHz Broadcom BCM2837 64bit CPU
·        1GB RAM
·        BCM43438 wireless LAN and Bluetooth Low Energy (BLE) on board
·        40-pin extended GPIO
·        4 USB 2 ports
·        4 Pole stereo output and composite video port
·        Full size HDMI
·        CSI camera port for connecting a Raspberry Pi camera
·        DSI display port for connecting a Raspberry Pi touchscreen display
·        Micro SD port for loading your operating system and storing data
·        Upgraded switched Micro USB power source up to 2.5A

These components will be covered in more detail in future blog posts, but for now take note that this board includes general purpose input/output (GPIO) pins, HDMI and USB 2 ports, a micro SD port, and wireless local area network (LAN). These are the components we have used so far in the CHBEER project to get things started.
Now that we’ve discussed what an SoC is, let’s talk about what it isn’t. The Raspberry Pi 3 B currently costs about $45.00.[ii] I think my laptop cover cost more than that.  A Raspberry Pi isn’t a fully-loaded computed. Out of the box it doesn’t include any sort of operating system or user interface. An SoC provides you with the foundation required to create a customized workspace, but ultimately there are a few things you’ll need before you can run any programs or get anything beyond a very basic circuit running.
In the next blog post, we’ll discuss how to set up a Raspberry Pi 3 B to run programs remotely.

Want more info on SoCs? Here are a few links we found useful:
“System on a Chip: what you need to know about SoCs” by Shashank Sharma for Tech Radar. https://www.techradar.com/news/computing/pc/system-on-a-chip-what-you-need-to-know-about-socs-1147235 
Youtube Video by TechQuickie: Systems on a Chip (SOCs) as Fast As Possible. https://www.youtube.com/watch?v=L4XemL7t6hg *Note: you can skip to 0:54 if you can’t be bothered with intros
“Simple questions: What is a SoC (System on a Chip)?” by Codrut Neagu for Digital Citizen. https://www.digitalcitizen.life/soc-system-on-chip 


[i] RASPBERRY PI 3 MODEL B. RaspberryPi.org. https://www.raspberrypi.org/products/raspberry-pi-3-model-b/
[ii] Raspberry Pi 3 Model B. canakit.com. Accessed February 12, 2018. https://www.canakit.com/raspberry-pi-3-model-b.html?cid=cad&src=raspberrypi
