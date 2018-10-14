---
layout: post
title: "The Black Box"
date: "2018-09-09"
author: ["Grania Jain"]
---


Learn out about the Junior Chem-E-Car team's car from the 2018 AIChE Pacific Northwest Regional Conference at Montana State University!


## Introduction

Named after its appearance, The Black Box has a body made completely out of black ABS plastic sheets of varying thickness. The “box” is divided into two horizontal compartments using a thinner fit-to-size sheet of ABS. The lower level is used as a water storage and the upper level accommodates all the other components of the car including the circuity, the reaction vessel and the battery. Similar to [Vancruiser](https://www.ubcenvision.com/blog/2018/08/04/Meet-the-Vancruiser.html/), the car uses an iodine clock reaction as the stopping mechanism and a zinc-air battery to power the motor that runs the car.

<img src="/assets/images/blog/The Black Box/BlackBoxSideView.png" alt="Black Box Side View">

#### The Black Box
* 3rd Place at the Chem-E-Car Competition
* 1st Place at the Chem-E-Car Poster Competition

Below, we are excited to present to you Vancruiser!

## Stopping Mechanism

The time the car takes to stop is based on the ratio of potassium iodide and potassium chloride in a volume-dependent iodine clock reaction. The reaction requires a mixture of potassium chloride and potassium iodide which reacts with a mixture of sodium thiosulfate, potassium sulfate, potassium persulfate, and starch. The iodide is initially oxidized by the persulfate ions to iodine before some of it is reduced back to iodide by the thiosulfate ions. The remaining iodine reacts with the starch to form an iodine-starch complex, giving the reaction its characteristic prussian blue final colour. This colour change is what “breaks the circuit” as it no longer allows light from the LED to pass through the solution and be received by the LDR at the other end of the beaker. 

>2I<sup>−</sup> + S<sub>2</sub>O<sub>8</sub><sup>2−</sup> → I<sub>2</sub> + 2 SO<sub>4</sub><sup>2−</sup>     (SLOW)
><br>
>I<sub>2</sub> + 2 S<sub>2</sub>O<sub>3</sub><sup>2−</sup> → 2 I<sup>−</sup> + S<sub>4</sub>O<sub>6</sub><sup>2−</sup>     (FAST)
><br>
>I<sub>2</sub> + (C<sub>6</sub>H<sub>10</sub>O<sub>5</sub>)n • H<sub>2</sub>O → Blue Iodine Starch Complex

What makes it feasible for us to use an iodine clock reaction to stop the car immediately with minimum error in the distance that it covers, is the fact it takes place all that once. This means that as soon as the reaction goes to completion, the colour change in the blink of an eye. 

## Battery

The zinc-air battery consists of a PTFE-coated MOC air electrode attached to a porous 3D printed base and a zinc anode made from mixing zinc and ethanol to form a paste and applying this paste onto copper gauze. The electrolyte for each cell of the battery is 6M KOH solution. The assembly requires a separator between the air cathode and the electrolyte and the the zinc anode is attached to the non-porous 3D printed base. The battery produced a final voltage of 19.92V: 12 cells with an average output of 1.66V each.

>  Anode:           Zn + 4OH<sup>−</sup> → Zn(OH)<sub>4</sub><sup>2−</sup> + 2e<sup>−</sup> (E<sub>0</sub> = －1.26 V)
>  <br>
>  Fluid: 	        Zn(OH)<sub>4</sub><sup>2−</sup> → ZnO + H<sub>2</sub>O + 2OH<sup>−</sup>
>  <br>
>  Cathode: 	    1/2 O<sub>2</sub> + H<sub>2</sub>O + 2e<sup>−</sup>→ 2OH<sup>−</sup> (E<sub>0</sub> = 0.40 V pH＝11)
>  <br>
>  Overall:	       2Zn + O<sub>2</sub> → 2ZnO (E<sub>0</sub>= 1.66 V)

<img src="/assets/images/blog/The Black Box/BatteryBuild.png" alt="Battery Schematic image">

## Control System

<img src="/assets/images/blog/The Black Box/ControlSystemFlowDiagram.png" alt="Control System Flow Chart">

## Mechanical Components

All battery casings and the reaction vessel were 3D printed. Silicone was used to secure the edges to make sure that the water does not spill out of the car. 

## Water storage

To control the motion of water at the bottom of the base, four baffles, made out of thin ABS sheets, were added at regular intervals at an approximate angle of 30° to the horizontal on each side along the length of the car. 

<img src="/assets/images/blog/The Black Box/BlackBoxLowerDeck.png" alt="Lower Deck of the Black Box">
<img src="/assets/images/blog/The Black Box/BlackBoxTopView.png" alt="Black Box Top View">
<img src="/assets/images/blog/The Black Box/CompetitionDayPrep.png" alt="Junior Team preparing car before the competition">
<img src="/assets/images/blog/The Black Box/CompetitonDayInspection.png" alt="Checking the car before starting">
<img src="/assets/images/blog/The Black Box/CompetitionDayFirstRun.png" alt="Starting the car">
